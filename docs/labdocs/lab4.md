# 内核线程管理

## 实验目的

* 了解内核线程创建和执行的管理过程
* 了解内核线程的切换和基本调度过程

## 实验内容

我们之前已经完成了物理内存管理和虚拟内存管理的实验。
除了内存管理外，内核还需要考虑如何分时使用处理器来并发执行多个进程，本实验将介绍相关原理。

## 实验原理

程序等于算法加数据结构，为了实现内核线程管理的功能，我们一方面需要表示内核线程的数据结构，另一方面需要管理线程间切换的调度算法。
实验六中将会对调度算法进行详细的分析，本实验中我们只关注从一个内核线程切换到另一个内核线程的“算法”。

### 数据结构

#### 中断帧

发生中断时向内核栈顶部压入的数据结构，详情可参考实验一中对中断的说明文档。

```rust
pub struct TrapFrame {
    /// exception link register (EL1)
    pub elr: usize,
    /// saved process status register (EL1)
    pub spsr: usize,
    /// stack pointer (EL0)
    pub sp: usize,
    /// thread ID Register (EL0), currently unused
    pub tpidr: usize,
    // /// SIMD/FP registers, currently unused
    // pub q0to31: [u128; 32],
    /// other general registers
    pub x1to29: [usize; 29],
    /// used for alignment
    pub __reserved: usize,
    /// lr
    pub x30: usize,
    /// x0
    pub x0: usize,
}
```

#### 线程上下文

一个线程必要的上下文信息，在执行上下文切换时会被压入内核栈顶部，仅需保存 `x19` 至 `x30` 这些[callee-saved registers](https://stackoverflow.com/questions/9268586/what-are-callee-and-caller-saved-registers)。`struct ContextData` 一般在上下文切换时由 `__switch()` 函数构建。

```rust
struct ContextData {
    x19to29: [usize; 11],
    lr: usize,
}

impl ContextData {
    fn new() -> Self {
        ContextData { lr: __trapret as usize, ..ContextData::default() }
    }
}
```

可以发现构造新 `struct ContextData` 时，默认的返回地址寄存器 `lr` 的值为 `__trapret`，这是为了利用中断返回机制来完成新线程的首次执行，之后会详细说明。

#### 初始内核栈

一个新创建且未开始运行的线程对应的内核栈上除了保存寄存器外，还应当有手动构造的中断帧，以方便通过中断返回机制来执行新线程。

```rust
/// kernel stack contents for a new thread
pub struct InitStack {
    context: ContextData,
    tf: TrapFrame,
}
```

#### 进程控制块

进程需要实现的基本功能是从一个进程切换到另一个进程，可以用trait来表示。

```rust
pub trait Context {
    /// 将当前CPU切换到另一个上下文
    unsafe extern "C"
    fn switch_to(&mut self, target: &mut Context);
}
```

对应的实现如下所示，注意 `struct Process` 是一个比较通用的结构体，可以用来表示一个完整的进程。
当我们令 `struct Process` 使用内核地址空间以及内核栈时，它就可以用来表示一个内核线程。
否则，它就表示一个用户进程，我们将在实验五中详细讲解。

```rust
use crate::arch::interrupt::Context as ArchContext;

pub struct Process {
    pub arch: ArchContext,
    pub memory_set: MemorySet,
    pub kstack: KernelStack,
    pub files: BTreeMap<usize, Arc<Mutex<File>>>,
    pub cwd: String,
}

impl Context for Process {
    unsafe fn switch_to(&mut self, target: &mut Context) {
        use core::mem::transmute;
        let (target, _): (&mut Process, *const ()) = transmute(target);
        self.arch.switch(&mut target.arch);
    }
}
```

进程控制块中保存有平台相关的上下文信息 `ArchContext`，对于 AArch64 包含下列信息：

1. `stack_top`：该线程内核栈顶的地址
2. `ttbr`：该线程的页表基址
3. `asid`：Address Space ID，用于实现 ASID 机制

```rust
pub struct Context {
    stack_top: usize,
    ttbr: PhysFrame,
    asid: Asid,
}
```

### 线程切换

在 `kernel/src/process/context.rs` 里，`switch_to()` 是平台无关的切换函数，最终会调用 `kernel/src/arch/aarch64/interrupt/context.rs` 里平台相关的切换函数 `Context::switch()`：

```rust
pub unsafe fn switch(&mut self, target: &mut Self) {
    target.asid = ASID_ALLOCATOR.lock().alloc(target.asid);

    // with ASID we needn't flush TLB frequently
    ttbr_el1_write_asid(1, target.asid.value, target.ttbr);
    barrier::dsb(barrier::ISH);
    Self::__switch(&mut self.stack_top, &mut target.stack_top);
}
```

#### 页表切换

由于我们使用 `TTBR0` 与 `TTBR1` 寄存器分别表示内核页表与用户页表，页表的切换是针对用户线程来说的，内核线程无需切换页表，即使修改了 `TTBR1_EL1` 寄存器也不受影响。这部分内容将在实验五中具体说明。

#### 寄存器与栈的切换

这一部分即 `Context` 的 `__switch()` 函数，传入的两个参数 `_self_stack` 与 `_target_stack` 是两个引用，分别用于保存**当前线程内核栈顶**与**目标线程内核栈顶**。

该函数用汇编实现(两个参数分别保存在 `x0` 和 `x1` 寄存器中)：

```armasm
mov x10, #-(12 * 8)
add x8, sp, x10
str x8, [x0]
stp x19, x20, [x8], #16     // store callee-saved registers
stp x21, x22, [x8], #16
stp x23, x24, [x8], #16
stp x25, x26, [x8], #16
stp x27, x28, [x8], #16
stp x29, lr, [x8], #16

ldr x8, [x1]
ldp x19, x20, [x8], #16     // restore callee-saved registers
ldp x21, x22, [x8], #16
ldp x23, x24, [x8], #16
ldp x25, x26, [x8], #16
ldp x27, x28, [x8], #16
ldp x29, lr, [x8], #16
mov sp, x8

str xzr, [x1]
ret
```

流程如下：

1. 保存**当前栈顶** `sp` 到 `_self_stack` (`x0`)，保存 **callee-saved 寄存器**到当前栈上。
2. 从 `_target_stack` (`x1`) 获取目标线程的**内核栈顶**，从目标线程内核栈顶恢复 **callee-saved 寄存器**。
3. 将 `sp` 设为目标线程内核栈顶，将 `_target_stack` (`x1`) 里的内容清空。
4. 使用 `ret` 指令返回，这会跳转到目标线程 `lr` 寄存器中存放的地址。

为什么只保存了 `sp` 与 callee-saved 寄存器，而不是所有寄存器？因为执行上下文切换就是在调用一个函数，在调用前后编译器会自动保存并恢复 caller-saved 寄存器(调用者保存，即 `x0~x18`)。

#### 异常级别切换

异常发生前的异常级别保存在 `TrapFrame` 中 `spsr` 的相应位，在异常返回后会恢复给 PSTATE，实现异常级别切换。通过构造特定的 `spsr` 可让新线程运行在指定的异常级别。

### 线程创建

```rust
impl Context {
    pub unsafe fn new_kernel_thread(entry: extern fn(usize) -> !, arg: usize, kstack_top: usize, ttbr: usize) -> Self {
        InitStack {
            context: ContextData::new(),
            tf: TrapFrame::new_kernel_thread(entry, arg, kstack_top),
        }.push_at(kstack_top, ttbr)
    }
}
```

我们可以使用 `Context::new_kernel_thread` 来创建一个新的内核线程，该函数向内核栈的顶部压入了上下文信息和一个中断帧。

```rust
impl TrapFrame {
    fn new_kernel_thread(entry: extern fn(usize) -> !, arg: usize, sp: usize) -> Self {
        use core::mem::zeroed;
        let mut tf: Self = unsafe { zeroed() };
        tf.x0 = arg;
        tf.sp = sp;
        tf.elr = entry as usize;
        tf.spsr = 0b1101_00_0101; // To EL 1, enable IRQ
        tf
    }
}
```

`TrapFrame::new_kernel_thread` 为新的内核线程够构造了一个中断帧，中断帧中保存的 `elr` 寄存器为新线程要执行的函数的入口，因此通过中断返回指令 `eret`，我们就能够开始执行新线程。特权级切换、启用中断的操作通过修改 `spsr` 来完成。

由上述信息可知，一个新内核线程从创建到执行的过程如下：
1. `Context::new_kernel_thread` 在内核栈上完成 `InitStack` 的初始化操作；
2. `switch` 函数执行，进而调用 `__switch` 函数并将 `InitStack::context::lr` 即 `__trapret` 的地址放入 `lr` 寄存器中，因此 `switch` 函数执行完成后返回到 `__trapret` 而非调用入口；
3. `__trapret` 执行，首先根据 `InitStack::tf` 中断帧的内容回复寄存器，然后执行 `eret`，跳转到 `elr` 所指地址开始新线程的执行。
