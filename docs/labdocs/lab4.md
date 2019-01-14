# 内核线程管理

## 实验目的

* 了解内核线程创建和执行的管理过程
* 了解内核线程的切换和基本调度过程

## 实验内容

我们之前已经完成了物理内存管理和虚拟内存管理的实验。
除了内存管理外，内核还需要考虑如何分时使用处理器来并发执行多个进程，本实验将介绍相关原理。

## 实验原理

程序等于算法加数据结构，为了实现内核线程管理的功能，我们一方面需要表示内核线程的数据结构，另一方面需要管理线程间切换的调度算法。
实验6中将会对调度算法进行详细的分析，本实验中我们只关注从一个内核线程切换到另一个内核线程的“算法”。

### 数据结构

#### 中断帧

发生中断时向内核栈顶部压入的数据结构，详情可参考实验一中对中断的说明文档。

```rust
pub struct TrapFrame {
    pub x: [usize; 32], // general registers
    pub sstatus: Xstatus, // Supervisor Status Register
    pub sepc: usize, // Supervisor exception program counter
    pub stval: usize, // Supervisor trap value
    pub scause: Mcause, // scause register: record the cause of exception/interrupt/trap
}
```

#### 线程上下文

一个线程必要的上下文信息，包括`s0`至`s11`这12个寄存器以及`ra`寄存器，即[callee-saved registers](https://stackoverflow.com/questions/9268586/what-are-callee-and-caller-saved-registers)。
另外我们还保存了一个`satp`寄存器的值，用来表示该内核线程应该使用的页表，由于内核线程都使用内核地址空间，因而此处没有影响。

```rust
struct ContextData {
    ra: usize,
    satp: usize,
    s: [usize; 12],
}

impl ContextData {
    fn new(satp: usize) -> Self {
        // satp(asid) just like cr3, save the physical address for Page directory?
        ContextData { ra: __trapret as usize, satp, ..ContextData::default() }
    }
}
```

可以发现构造新`struct ContextData`时，默认的返回地址寄存器`ra`的值为`__trapret`，这是为了利用中断返回机制来完成新线程的首次执行，之后会详细说明。

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

对应的实现如下所示，注意`struct Process`是一个比较通用的结构体，可以用来表示一个完整的进程。
当我们令`struct Process`使用内核地址空间以及内核栈时，它就可以用来表示一个内核线程。
否则，它就表示一个用户进程，我们将在实验5中详细讲解。

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

### 线程切换

```rust
pub unsafe extern fn switch(&mut self, _target: &mut Self) {
    asm!(r"
    .equ XLENB, 4
    .macro Load reg, mem
        lw \reg, \mem
    .endm
    .macro Store reg, mem
        sw \reg, \mem
    .endm");
    asm!("
    // save from's registers
    addi  sp, sp, (-XLENB*14)
    Store sp, 0(a0)
    Store ra, 0*XLENB(sp)
    Store s0, 2*XLENB(sp)
    Store s1, 3*XLENB(sp)
    Store s2, 4*XLENB(sp)
    Store s3, 5*XLENB(sp)
    Store s4, 6*XLENB(sp)
    Store s5, 7*XLENB(sp)
    Store s6, 8*XLENB(sp)
    Store s7, 9*XLENB(sp)
    Store s8, 10*XLENB(sp)
    Store s9, 11*XLENB(sp)
    Store s10, 12*XLENB(sp)
    Store s11, 13*XLENB(sp)
    csrr  s11, satp
    Store s11, 1*XLENB(sp)
    // restore to's registers
    Load sp, 0(a1)
    Load s11, 1*XLENB(sp)
    csrw satp, s11
    Load ra, 0*XLENB(sp)
    Load s0, 2*XLENB(sp)
    Load s1, 3*XLENB(sp)
    Load s2, 4*XLENB(sp)
    Load s3, 5*XLENB(sp)
    Load s4, 6*XLENB(sp)
    Load s5, 7*XLENB(sp)
    Load s6, 8*XLENB(sp)
    Load s7, 9*XLENB(sp)
    Load s8, 10*XLENB(sp)
    Load s9, 11*XLENB(sp)
    Load s10, 12*XLENB(sp)
    Load s11, 13*XLENB(sp)
    addi sp, sp, (XLENB*14)
    Store zero, 0(a1)
    ret"
    : : : : "volatile" )
}
```

上述汇编语句完成了从一个线程的上下文切换到另一个线程上下文的过程，可以看出当前线程的寄存器被依次保存到栈上，构成了`struct ContextData`的结构，然后目标线程对应的寄存器被依次恢复，从而完成了线程上下文的切换。

### 线程创建

```rust
pub struct Context(usize);

impl Context {
    /*
     * @param:
     *   entry: program entry for the thread
     *   arg: a0
     *   kstack_top: kernel stack top
     *   cr3: cr3 register, save the physical address of Page directory
     * @brief:
     *   generate the content of kernel stack for the new kernel thread and save it's address at kernel stack top - 1
     * @retval:
     *   a Context struct with the pointer to the kernel stack top - 1 as its only element
     */
    pub unsafe fn new_kernel_thread(entry: extern fn(usize) -> !, arg: usize, kstack_top: usize, cr3: usize) -> Self {
        InitStack {
            context: ContextData::new(cr3),
            tf: TrapFrame::new_kernel_thread(entry, arg, kstack_top),
        }.push_at(kstack_top)
    }
}
```

我们可以使用`Context::new_kernel_thread`来创建一个新的内核线程，该函数向内核栈的顶部压入了上下文信息和一个中断帧。

```rust
impl TrapFrame {
    fn new_kernel_thread(entry: extern fn(usize) -> !, arg: usize, sp: usize) -> Self {
        use core::mem::zeroed;
        let mut tf: Self = unsafe { zeroed() };
        tf.x[10] = arg; // a0
        tf.x[2] = sp;
        tf.sepc = entry as usize;
        tf.sstatus = xstatus::read();
        tf.sstatus.set_xpie(true);
        tf.sstatus.set_xie(false);
        tf.sstatus.set_spp(xstatus::SPP::Supervisor);
        tf
    }
}
```
`TrapFrame::new_kernel_thread`为新的内核线程够构造了一个中断帧，中断帧中保存的`epc`寄存器为新线程要执行的函数的入口，因此通过中断返回指令`sret`，我们就能够开始执行新线程。

由上述信息可知，一个新内核线程从创建到执行的过程如下：
1. `Context::new_kernel_thread`在内核栈上完成`InitStack`的初始化操作；
2. `switch`函数执行，并将`InitStack::context::ra`即`__trapret`的地址放入`ra`寄存器中，因此`switch`函数执行完成后返回到`__trapret`而非调用入口；
3. `__trapret`执行，首先根据`InitStack::tf`中断帧的内容回复寄存器，然后执行`sret`，跳转到`spec`所指地址开始新线程的执行。
