# Lab7: 互斥和同步
## 实验目的

* 理解操作系统的同步互斥的设计实现；
* 理解底层支撑技术：使能/禁用中断、等待队列；
* 理解信号量（semaphore）机制的具体实现；
* 理解基于条件变量（condition variable）的管程（monitor）机制的具体实现；
* 了解经典进程同步问题，并能使用同步机制解决进程同步问题。


## 实验内容

实验六完成了用户进程的调度框架和具体的调度算法，可调度运行多个进程。如果多个进程需要协同操作或访问共享资源，则存在如何同步和有序竞争的问题。本次实验，主要是熟悉rcore的进程同步机制—信号量机制和管程机制，以及基于信号量和管程的哲学家就餐问题解决方案。在kern/src/sync/test.rs中提供了基于信号量和管程（主要使用条件变量和互斥信号量）的哲学家就餐问题解法。

哲学家就餐问题描述如下：有五个哲学家，他们的生活方式是交替地进行思考和进餐。哲学家们公用一张圆桌，周围放有五把椅子，每人坐一把。在圆桌上有五个碗和五根筷子，当一个哲学家思考时，他不与其他人交谈，饥饿时便试图取用其左、右最靠近他的筷子，但他可能一根都拿不到。只有在他拿到两根筷子时，方能进餐，进餐完后，放下筷子又继续思考。

## 上下关系

。。。

## 系列练习

- 实现读写锁/MCS Lock/ticket Lock/RCU

## 实验原理

### 实验执行流程概述
互斥是指某一资源同时只允许一个进程对其进行访问，具有唯一性和排它性，但互斥不用限制进程对资源的访问顺序，即访问可以是无序的。同步是指在进程间的执行必须严格按照规定的某种先后次序来运行，即访问是有序的，这种先后次序取决于要系统完成的任务需求。在进程写资源情况下，进程间要求满足互斥条件。在进程读资源情况下，可允许多个进程同时访问资源。

实验七设计实现了多种同步互斥手段，包括中断管理、等待队列、信号量、管程机制（包含条件变量设计）等，并基于信号量和管程实现了哲学家问题的执行过程。在实现信号量机制和管程机制时，需要让无法进入临界区的进程睡眠，为此在rcore中设计了等待队列wait_queue。当进程无法进入临界区（即无法获得信号量）时，可让进程进入等待队列，这时的进程处于等待状态（也可称为阻塞状态），从而会让实验六中的调度器选择一个处于就绪状态（即RUNNABLESTATE）的进程，进行进程切换，让新进程有机会占用CPU执行，从而让整个系统的运行更加高效。

在实验七中的rcore初始化函数rust_main执行过程中，会调用`crate::process::init()`函数，而这个函数会调用`processor().manager().add()`来创建`philosopher_using_mutex`和`philosopher_using_monitor`内核线程，分别实现基于信号量的哲学家问题和基于管程的哲学家问题。

对于`philosopher_using_mutex`内核线程，首先创建了对应5个哲学家行为的5个Mutex信号量，并创建5个内核线程代表5个哲学家，每个内核线程完成了基于信号量的哲学家吃饭思考行为实现。

对于`philosopher_using_monitor`内核线程，首先初始化了管程（由5个Mutex信号量和条件变量组成），然后又创建了5个内核线程代表5个哲学家，每个内核线程要完成基于管程的哲学家吃饭、思考的行为实现。


 ### 用于内核的同步互斥接口

 在实验七中提供了和`std::sync`相同的接口，具体用法可参考std官方文档。具体实现的同步互斥接口如下：

 * `mutex`: 互斥锁。参考`spin::Mutex`实现了一套可替换底层支持的锁框架，在此基础上实现了三种锁：`SpinLock`自旋锁，`SpinNoIrqLock`禁用中断自旋锁，`ThreadLock`线程调度锁

 * `condvar`: 条件变量。依赖`thread`，为其它工具提供线程调度支持。

 * `semaphore`: 信号量。完全照搬`std::sync::Semaphore`，std中已经废弃。貌似在Rust中并不常用，一般都用`Mutex`。


#### 三种锁机制

在`kernel\src\sync\mutex.rs`中实现的Mutex框架基础上实现了以下`ThreadLock`：

 * `SpinLock`: 自旋锁。等价于`spin::Mutex`，相当于Linux中的`spin_lock`。
     当获取锁失败时，忙等待。由于没有禁用内核抢占和中断，在单处理器上使用可能发生死锁。

 * `SpinNoIrqLock`: 禁止中断的自旋锁。相当于Linux中的`spin_lock_irqsave`。在尝试获取锁之前禁用中断，在try_lock失败/解锁时恢复之前的中断状态。可被用于中断处理中，不会发生死锁。

 * `ThreadLock`: 线程调度锁。等价于`std::sync::Mutex`，依赖于`thread`模块提供线程调度支持。在获取锁失败时，将自己加入等待队列，让出CPU；在解锁时，唤醒一个等待队列中的线程。

#### 底层支撑依赖关系

同步互斥接口的底层支撑依赖关系如下图所示：

 ```mermaid
 graph TB
    subgraph dependence
        Interrupt
        CAS
        Thread
        VecDeque
        Thread_WQ --> Thread
        Thread_WQ --> SpinNoIrqlock
        Thread_WQ --> VecDeque        
        SpinNoIrqlock --> Interrupt
        SpinNoIrqlock --> CAS
        SpinLock --> CAS
    end
    subgraph sync
        Condvar --> SpinNoIrqlock
        Condvar --> Thread_WQ
        ThreadLock --> Condvar
        Monitor --> Condvar
        Semaphore --> Condvar
        Semaphore --> SpinNoIrqlock
    end
 subgraph test
        Dining_Philosophers --> ThreadLock
        Dining_Philosophers --> Monitor
        Dining_Philosophers --> Semaphore
    end
 ```
 模块依赖关系图


### 同步互斥的底层支撑 

由于有处理器调度的存在，且进程在访问某类资源暂时无法满足的情况下，进程会进入等待状态。这导致了多进程执行时序和潜在执行结果的不确定性。为了确保执行结果的正确性，本试验需要设计进程等待和互斥的底层支撑机制，确保能正确提供基于信号量和条件变量的同步互斥机制。

根据操作系统原理的知识，我们知道如果没有在硬件级保证读内存-修改值-写回内存的原子性，我们只能通过复杂的软件来实现同步互斥操作。但由于有CAS(Compare and Swap)原子操作、屏蔽/使能中断、等待队列wait_queue支持t的存在，使得我们在实现进程等待、同步互斥上得到了极大的简化。下面将对这些底层支撑机制进行进一步讲解。

#### 实现互斥的范型与特性
不同的互斥机制由一个共用struct Mutex提供范型（Generics, 也称：模板，template）支持，不同的互斥机制都需要实现特性trait `MutexSupport`，并嵌入`Mutex`中。Mutex的结构和方法定义如下：

```rust
pub type SpinLock<T> = Mutex<T, Spin>;
pub type SpinNoIrqLock<T> = Mutex<T, SpinNoIrq>;
pub type ThreadLock<T> = Mutex<T, Condvar>;

pub struct Mutex<T: ?Sized, S: MutexSupport>
{
    lock: AtomicBool,
    support: S,
    data: UnsafeCell<T>,
}
impl<T: ?Sized, S: MutexSupport> Mutex<T, S>
{
    fn obtain_lock(&self) { ... }
    /// Locks the spinlock and returns a guard.
    pub fn lock(&self) -> MutexGuard<T, S>
    {   ...
        self.obtain_lock();
        MutexGuard { ... }
    }
    /// Force unlock the spinlock.
    pub unsafe fn force_unlock(&self) {
        self.lock.store(false, Ordering::Release);
    }
    /// Tries to lock the mutex.
    pub fn try_lock(&self) -> Option<MutexGuard<T, S>> {
        let support_guard = S::before_lock();
        if self.lock.compare_and_swap(...) == false {
            Some(MutexGuard  { ... })
        } ...
    }
}这是
```

`trait MutexSupport`提供了若干接口，它们会在操作锁的不同时间点被调用。这些接口实际是了几种实现的并集，会在Mutex的方法中被调用。其定义如下：

```Rust
/// Low-level support for mutex
pub trait MutexSupport {
    type GuardData;
    fn new() -> Self;
    /// Called when failing to acquire the lock
    fn cpu_relax(&self);
    /// Called before lock() & try_lock()
    fn before_lock() -> Self::GuardData;
    /// Called when MutexGuard dropping
    fn after_unlock(&self);
}
```

#### CAS原子操作

CAS是个原子操作，一般由硬件直接提供指令支持。其语义是拿到一个新值后，CAS将其与内存中的值进行比较，若内存中的值和这个值不一样，则将这个值写入内存，否则，不做操作。

TODO：给出cas的实现代码！！！

#### 屏蔽与使能中断

根据操作系统原理的知识，我们知道如果没有在硬件级保证读内存-修改值-写回内存的原子性，我们只能通过复杂的软件来实现同步互斥操作。但由于有开关中断和test\_and\_set\_bit等原子操作机器指令的存在，使得我们在实现同步互斥原语上可以大大简化。

在rcore中提供的底层机制包括中断屏蔽/使能控制等。kern/src/arch_rv32/interrupt.rs中实现的开关中断的控制函数`disable_and_store()` 和`interrupt::restore(...)`：
```
关中断：interrupt::disable_and_store() 
开中断：interrupt::restore(...) 
```
它们是基于kern/src/arch_rv32/riscv/register/sstatus.rs中的的`sstatus::read().sie()`、`sstatus::clear_sie()`、`sstatus::set_sie()`函数实现的。

屏蔽与使能中断最终是通过读写RISC-V CSR的机器指令实现了关（屏蔽）中断和开（使能）中断，即读写sstatus CSR寄存器中与中断相关的位。通过关闭中断，可以防止对当前执行的控制流被其他中断事件处理所打断。既然不能中断，那也就意味着在内核运行的当前进程无法被打断或被重新调度，即实现了对临界区的互斥操作。

在多处理器情况下，仅凭开关中断这种方法是无法实现运行在多处理器中各个线程之间互斥访问资源，因为屏蔽了一个CPU的中断，只能阻止本地CPU上的进程不会被中断或调度，并不意味着其他CPU上执行的进程不能执行临界区的代码。所以，开关中断只对单处理器下的互斥操作起作用。在本实验中，开关中断机制是实现信号量等高层同步互斥原语的底层支撑基础之一。

#### 条件变量与等待队列

到目前为止，我们的实验中，用户进程或内核线程还没有睡眠的支持机制。在课程中提到用户进程或内核线程可以转入等待状态以等待某个特定事件（比如睡眠,等待子进程结束,等待信号量等），当该事件发生时这些进程能够被再次唤醒。内核实现这一功能的一个底层支撑机制就是基于等待队列wait_queue的条件变量。通过条件变量，可把需要等待事件的进程插入到等待队列中，并转入休眠状态。当等待事件发生之后，通过条件变量可弹出在等待队列上的用户进程，并唤醒让其继续执行。rcore在kernel/src/sync/condvar.rs中，设计了基于等待队列wait_queue的条件变量以及相关处理。条件变量有两种主要操作：

- wait\_cv： 等待条件Cond为真后，该进程可恢复执行。进程挂在该条件变量上等待时，不能继续占用管程。
- notify\_cv：唤醒那些等待条件Cond为真的进程，让它们或期中一个继续执行。

数据结构定义
```rust
pub struct Condvar { wait_queue: SpinNoIrqLock<VecDeque<thread::Thread>>, }
```
让线程等待和唤醒线程的实现如下：

```rust
impl Condvar {
    ...
    pub fn _wait(&self) {
        self.wait_queue.lock().push_back(thread::current());
        thread::park();
    }
    ...
    pub fn notify_one(&self) {
        if let Some(t) = self.wait_queue.lock().pop_front() {
            t.unpark();
        }
    }
    pub fn notify_all(&self) {
        while let Some(t) = self.wait_queue.lock().pop_front() {
            t.unpark();
        }
    }
    pub fn _clear(&self) {
        self.wait_queue.lock().clear();
    }
}
```

可以看出在使用等待队列让线程等待或唤醒的操作中，首先通过调用lock()方法获得带MutexSupport trait的Mutex的guard；然后就就可以对队列VecDeque中的线程进行push_back、clear，pop_front等操作，并通过park()方法让线程等待，通过unpark()唤醒线程。

### 信号量 

信号量是一种同步互斥机制的实现，普遍存在于现在的各种操作系统内核里。相对于spinlock
的应用对象，信号量的应用对象是在临界区中运行的时间较长的进程。等待信号量的进程需要睡眠来减少占用
CPU 的开销。参考教科书“Operating Systems Internals and Design Principles”第五章“同步互斥”中对信号量实现的原理性描述：

```rust
struct Semaphore {
 count:   usize，
 queue:  queueType,
};
impl Semaphore {
 fn semWait(semaphore s) {
    if (s.count <= 0) {
    // place this process in s.queue 
    // block this process
    }
    s.count--;    
 }
 fn  semSignal(semaphore s) {
    s.count++;
    if (s.count<= 0) {
    // remove a process P from s.queue
    // place process P on ready list
 }
}
```

基于上诉信号量实现可以认为，当多个（\>1）进程可以进行互斥或同步合作时，一个进程会由于无法满足信号量设置的某条件而在某一位置停止，直到它接收到一个特定的信号（表明条件满足了）。为了发信号，需要使用一个称作信号量的特殊变量。为通过信号量s传送信号，信号量的V操作采用进程可执行原语semSignal(s)；为通过信号量s接收信号，信号量的P操作采用进程可执行原语semWait(s)；如果相应的信号仍然没有发送，则进程被阻塞或睡眠，直到发送完为止。

rcore中信号量参照上述原理描述，建立在开关中断机制和条件变量的基础上进行了具体实现。信号量的数据结构定义如下：

```rust
/// A counting, blocking, semaphore.
pub struct Semaphore {
    lock: Mutex<isize>,
    cvar: Condvar,
}
/// An RAII guard which will release a resource acquired from a semaphore 
pub struct SemaphoreGuard<'a> {    sem: &'a Semaphore, }

impl Semaphore {
    /// Creates a new semaphore with the initial count specified.
    pub fn new(count: isize) -> Semaphore {
        Semaphore {
            lock: Mutex::new(count),
            cvar: Condvar::new(),
        }
    }
    /// Acquires semaphore, blocking the current thread until it can do so.
    pub fn acquire(&self) {
        let mut count = self.lock.lock();
        while *count <= 0 {
            count = self.cvar.wait(count);
        }
        *count -= 1;
    }
    /// Release a resource from this semaphore.
    pub fn release(&self) {
        *self.lock.lock() += 1;
        self.cvar.notify_one();
    }
```

semaphore\_t是最基本的记录型信号量（record semaphore)结构，包含了用于计数的`Mutex<isize>`，和一个条件变量`Condvar`。信号量操作是P操作函数`acquire(&self)`和V操作函数 `release(&self)`。由于有`Mutex<isize>`和`Condvar`，这两个函数的具体实现很简单，与前面的原理性描述一致。

### 管程 

引入了管程是为了将对共享资源的所有访问及其所需要的同步操作集中并封装起来。已有的管程机制主要是在高级语言（比如java等）中实现。Hansan为管程所下的定义：“一个管程定义了一个数据结构和能为并发进程所执行（在该数据结构上）的一组操作，这组操作能同步进程和改变管程中的数据”。有上述定义可知，管程相当于一个隔离区，它把共享变量和对它进行操作的若干个过程围了起来，所有进程要访问临界资源时，都必须经过管程才能进入，而管程每次只允许一个进程进入管程，从而需要确保进程之间互斥。

但在管程中仅仅有互斥操作是不够用的。进程可能需要等待某个条件Cond为真才能继续执行，这时需离开管程。为此，需要引入条件变量（Condition Variables，简称CV）。

在操作系统中没有直接的管程机制，但通过条件变量机制，可实现高级语言提供的管程机制，只是需要与某个具体同步互斥问题绑定在一起，从而更加高效。具体可看在`kernel/src/sync/test.rs`中基于管程/条件变量机制的"哲学家就餐"实例。

