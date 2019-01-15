# Lab4 内核线程管理

## 实验目的

* 了解内核线程创建和执行的管理过程
* 了解内核线程的切换和基本调度过程

## 实验内容

我们之前已经完成了物理内存管理和虚拟内存管理的实验。除了内存管理外，内核还需要考虑如何分时使用处理器来并发执行多个进程/线程，本实验将介绍在内核中如何创建/切换/执行线程。

## 上下关系

lab1/2/3完成了中断管理以及物理和虚拟内存管理，这为lab4中的内核线程管理功能提供了动态内存管理和进程/线程切换调度的机制。当一段代码/程序加载到内存中运行时，首先通过rcore的内存管理机制给这段代码动态分配管理空间（即线程/进程控制块）和执行空间（代码段/数据段等）。代码执行完毕后，rcore还要回收这些内存空间用于其他用途。

通过lab1的时钟中断，可以有效实现分时使用CPU来“并发”执行多个程序的能力，且在lab2/3的虚存管理下，可让每个运行的程序（这里用线程或进程表示）“感到”它们各自拥有“自己”的CPU。这部分的内容在lab5和lab6中有更多的体现。在lab4中我们只关注从一个内核线程切换到另一个内核线程的实现细节，而lab6中将会对调度算法进行详细的分析。

## 系列练习

- 设计实现可灵活控制不同内核线程到不同CPU上运行的机制
- 设计实现可定时/定期唤醒进程执行的机制
- 设计实现线程回收机制

## 实验原理

程序等于算法加数据结构，为了实现内核线程管理的功能，我们一方面需要表示内核线程的数据结构，另一方面需要管理线程间切换的细节。为了能在操作系统中有效运行内核线程，我们一般需要注意和理解以下问题：

1. 如果把一段静态的代码改变成了一个可运行的内核线程？
2. 管理内核线程的数据结构的组成和功能是啥？
3. 如何初始化内核线程并让内核线程启动的？
4. 如何切换内核线程？
5. 如何回收内核线程占用的资源？
6. 如果线程的执行过程中出现了中断，rcore如何完成线程执行现场的保存与恢复？

### 实验执行流程

lab2和lab3完成了对内存的虚拟化，但整个控制流还是一条线串行执行。lab4将在此基础上进行CPU的虚拟化，即让rcore实现分时共享CPU，实现多条控制流能够并发执行。从某种程度上，我们可以把控制流看作是一个内核线程。本次实验将首先接触的是内核线程的管理。内核线程是一种特殊的进程，内核线程与用户进程的区别有两个：内核线程只运行在内核态而用户进程会在在用户态和内核态交替运行；所有内核线程直接使用共同的ucore内核内存空间，不需为每个内核线程维护单独的内存空间而用户进程需要维护各自的用户内存空间。从内存空间占用情况这个角度上看，我们可以把线程看作是一种共享内存空间的轻量级进程。

为了实现内核线程，需要设计管理线程的数据结构，即进程控制块（在这里也可叫做线程控制块）。如果要让内核线程运行，我们首先要创建内核线程对应的进程控制块，还需把这些进程控制块通过链表连在一起，便于随时进行插入，删除和查找操作等进程管理事务。这个链表就是进程控制块链表。然后在通过调度器（scheduler）来让不同的内核线程在不同的时间段占用CPU执行，实现对CPU的分时共享。那lab4中是如何一步一步实现这个过程的呢？

我们还是从larch_rv32/mod.rs中的rust_main函数入手分析。在rust_main函数中，当完成中断/内存/时钟的初始化工作后，就调用了crate::process::init()函数，这个函数完成了idle内核线程和init内核线程的创建或复制工作。idle内核线程的工作就是不停地查询，看是否有其他内核线程可以执行了，如果有，马上让调度器选择那个内核线程执行。所以idle内核线程是在rcore中没有其他内核线程可执行的情况下才会被调用。接着就是调用processor().manager().add(Process::new_kernel())函数来创建init内核线程。init内核线程的工作就是显示“Hello World”，表明自己存在且能正常工作了。

调度器会在特定的调度点上执行调度，完成进程切换。在lab4中，这个调度点就一处，即在cpu\_idle函数中，此函数如果发现当前进程（也就是idle内核线程）的need\_resched置为1（在初始化idleproc的进程控制块时就置为1了），则调用schedule函数，完成进程调度和进程切换。进程调度的过程其实比较简单，就是在进程控制块链表中查找到一个“合适”的内核线程，所谓“合适”就是指内核线程处于“PROC\_RUNNABLE”状态。在接下来的switch\_to函数完成具体的进程切换过程。一旦切换成功，那么init内核线程就可以通过显示字符串来表明本次实验成功。

### 关键数据结构

#### 中断帧

中断帧是用于保存被打断的内核线程执行现场的重要数据结构。发生中断时，RISC-V硬件和rcore软件都会向内核栈顶部压入的数据结构，详情可参考lab1中对中断的说明文档。

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

管理一个线程必要的上下文信息，包括`s0`至`s11`这12个寄存器以及`ra`寄存器，即[callee-saved registers](https://stackoverflow.com/questions/9268586/what-are-callee-and-caller-saved-registers)。
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

#### 内核栈

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
否则，它就表示一个用户进程，我们将在lab5中详细讲解。

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
