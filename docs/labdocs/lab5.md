# 用户进程管理

## 实验目的

* 了解第一个用户进程创建过程
* 了解系统调用框架的实现机制
* 了解rCore如何实现`sys_fork`，`sys_exec`，`sys_exit`和`sys_wait`等系统调用来进行进程管理

## 实验内容

进程是一个抽象概念，它让一个程序可以假设它独占一台机器。进程向程序提供“看上去”私有的，其他进程无法读写的地址空间，以及一颗“看上去”仅执行该程序的CPU。
我们常说的进程是指用户进程，与实验四中的内核线程相比，用户进程一般运行在用户态，并且有单独的地址空间。
本实验将在实验四的基础上介绍用户进程管理的知识。

## 实验原理

为了在操作系统中运行用户进程，我们一般需要注意以下问题：
1. 如何从外存将程序加载进内存？
2. 如何启动用户进程？
3. 用户进程如何获得操作系统提供的服务？

下面我们依次研究上述问题。

### 用户程序加载 

这部分涉及的代码主要位于`kernel/src/process/context.rs`文件中的`Process::new_user`函数。

一般在类Unix操作系统中，可执行文件都以[ELF](https://en.wikipedia.org/wiki/Executable_and_Linkable_Format)格式保存在外存上。
ELF格式保存了程序的代码和数据，并指出代码和数据在地址空间的分布。
因此，我们需要将文件载入内存，然后根据ELF格式标准解析文件，并构造程序在用户态需要的页表。

解析ELF格式对应的代码如下，此处使用了外部库[xmas-elf](https://github.com/nrc/xmas-elf)。
解析ELF的方法可以参考uCore中的[load_icode](https://github.com/chyyuu/ucore_os_lab/blob/master/labcodes_answer/lab8_result/kern/process/proc.c#L590)函数。

```rust
// Parse elf
let elf = ElfFile::new(data).expect("failed to read elf");
```

完成读取后，我们需要根据ELF文件指定的代码和数据在地址空间中的分布构造对应的页表，如下所示：

```rust
// Make page table
let (mut memory_set, entry_addr) = memory_set_from(&elf);
```

具体映射在`memory_set_from`函数中完成，其中核心代码如下，主要功能为遍历ELF文件中的程序段，并根据要求，分配物理页并在页表中映射到指定的虚地址上。

```rust
/// Generate a MemorySet according to the ELF file.
/// Also return the real entry point address.
fn memory_set_from(elf: &ElfFile<'_>) -> (MemorySet, usize) {
    let mut ms = MemorySet::new();
    let mut entry = elf.header.pt2.entry_point() as usize;

    for ph in elf.program_iter() {
        let virt_addr = ph.virtual_addr() as usize;
        let offset = ph.offset() as usize;
        let file_size = ph.file_size() as usize;
        let mem_size = ph.mem_size() as usize;

        // Get target slice
        let target = {
            ms.push(virt_addr, virt_addr + mem_size, ByFrame::new(memory_attr_from(ph.flags()), GlobalFrameAlloc), "");
            unsafe { ::core::slice::from_raw_parts_mut(virt_addr as *mut u8, mem_size) }
        };
        // Copy data
        unsafe {
            ms.with(|| {
                if file_size != 0 {
                    target[..file_size].copy_from_slice(&elf.input[offset..offset + file_size]);
                }
                target[file_size..].iter_mut().for_each(|x| *x = 0);
            });
        }
    }
    (ms, entry)
}
```

用户程序想要正常运行，还需要相应的用户栈，另外为了在发生中断和系统调用时进入内核态进行处理，还需要分配单独的内核栈。
`Process::new_user`中剩余代码完成了上述过程，最后返回一个表示相应用户进程的结构体。

```rust
Box::new(Process {
    arch: unsafe {
        ArchContext::new_user_thread(
            entry_addr, ustack_top, kstack.top(), is32, memory_set.token())
    },
    memory_set,
    kstack,
    files: BTreeMap::default(),
    cwd: String::new(),
})
```

在实验4中，我们构造新`struct Process`时，第一个域的值由`ArchContext::new_kernel_thread`给出。
这两者有何不同？
我们知道用户进程和内核线程的主要区别在于地址空间和特权级，`Process::memory_set`域影响了地址空间，我们可以推测`Process::arch`会影响特权级。
我们在下一小结讲解用户进程启动时再进行详细的分析。

### 用户进程启动

上一小结提到的`new_user_thread`如下所示，和`new_kernel_thread`的主要差别是此处的`cr3`为用户程序页表基地址，另外还在用户程序的内核栈上使用`TrapFrame::new_user_thread`构造了一个特殊中断帧。

```rust
pub struct Context(usize);

impl Context {
    /*
     * @param:
     *   entry_addr: program entry for the thread
     *   ustack_top: user stack top
     *   kstack_top: kernel stack top
     *   is32: whether the cpu is 32 bit or not
     *   cr3: cr3 register, save the physical address of Page directory
     * @brief:
     *   generate the content of kernel stack for the new user thread and save it's address at kernel stack top - 1
     * @retval:
     *   a Context struct with the pointer to the kernel stack top - 1 as its only element
     */
    pub unsafe fn new_user_thread(entry_addr: usize, ustack_top: usize, kstack_top: usize, _is32: bool, cr3: usize) -> Self {
        InitStack {
            context: ContextData::new(cr3),
            tf: TrapFrame::new_user_thread(entry_addr, ustack_top),
        }.push_at(kstack_top)
    }
}
```

`TrapFrame::new_user_thread`如下，要注意的地方有：
1. `tf.x[2] = sp`：将中断帧中对应`sp`寄存器的位置设为用户栈
2. `tf.sepc = entry_addr`：将中断帧中对应`epc`寄存器的位置设为用户程序入口
3. `tf.sstatus.set_spp(xstatus::SPP::User)`：将中断帧中对应`sstatus`寄存器的`SPP`域设为`U`，即中断返回到用户态

其余部分与实验三中基本相同。

```rust
/// Generate the trapframe for building new thread in kernel
impl TrapFrame {
    /*
     * @param:
     *   entry_addr: program entry for the thread
     *   sp: stack top
     * @brief:
     *   generate a trapfram for building a new user thread
     * @retval:
     *   the trapframe for new user thread
     */
    fn new_user_thread(entry_addr: usize, sp: usize) -> Self {
        use core::mem::zeroed;
        let mut tf: Self = unsafe { zeroed() };
        tf.x[2] = sp;
        tf.sepc = entry_addr;
        tf.sstatus = xstatus::read();
        tf.sstatus.set_xpie(true);
        tf.sstatus.set_xie(false);
        tf.sstatus.set_spp(xstatus::SPP::User);
        tf
    }
}
```

由上述信息可知，一个新用户线程首次启动的过程如下：
1. `Process::new_user`载入用户程序并加入调度队列中；
2. `switch`函数执行，并将`InitStack::context::ra`即`__trapret`的地址放入`ra`寄存器中，因此`switch`函数执行完成后返回到`__trapret`而非调用入口，同时还将`ContextData::satp`即用户页表基址放入`satp`寄存器中；
3. `__trapret`执行，首先根据`InitStack::tf`中断帧的内容回复寄存器，然后执行`sret`，跳转到`spec`所指地址开始用户进程的执行。

### 系统调用

系统调用是操作系统为用户进程提供服务的接口层，使用系统调用的好处有：
1. 简化用户进程的实现，把一些共性的、与特权指令相关的任务放到操作系统层来实现
2. 接口规定好后，可以检查用户进程传递的参数，保护操作系统不会被用户进程破坏

从硬件层面上看，实现系统调用需要硬件能够支持从用户态通过某种机制切换到内核态。
试验一中介绍的软中断就可以完成上述任务。

用户态与系统调用相关的代码在`user/rcore-ulib/src/syscall.rs`文件中，发出一个系统调用，实际上就是使用`ecall`指令触发一个中断，同时我们要在触发中断前设置`x10`-`x15`寄存器的值，这样一来内核就能通过检查寄存器的值来判断用户需要调用的服务和相应的参数。

```rust
fn sys_call(syscall_id: SyscallId, arg0: usize, arg1: usize, arg2: usize, arg3: usize, arg4: usize, arg5: usize) -> i32 {
    let id = syscall_id as usize;
    let ret: i32;

    unsafe {
        asm!("ecall"
        : "={x10}" (ret)
        : "{x10}" (id), "{x11}" (arg0), "{x12}" (arg1), "{x13}" (arg2), "{x14}" (arg3), "{x15}" (arg4), "{x16}" (arg5)
        : "memory"
        : "volatile");
    }
    ret
}
```

其中寄存器`x10`保存了系统调用号，我们给系统调用约定的调用号如下：

```rust
enum SyscallId{
    Exit = 1,
    Fork = 2,
    Wait = 3,
    Exec = 4,
    Clone = 5,
    Yield = 10,
    Sleep = 11,
    Kill = 12,
    GetTime = 17,
    GetPid = 18,
    Mmap = 20,
    Munmap = 21,
    Shmem = 22,
    Putc = 30,
    Pgdir = 31,
    Open = 100,
    Close = 101,
    Read = 102,
    Write = 103,
    Seek = 104,
    Fstat = 110,
    Fsync = 111,
    GetCwd = 121,
    GetDirEntry = 128,
    Dup = 130,
    Lab6SetPriority = 255,
}
```

例如`sys_sleep`调用会将`SyscallId::Sleep`放入`x10`，睡眠时间放入`x11`，然后调用`ecall`。

```rust
pub fn sys_sleep(time: usize) -> i32 {
    sys_call(SyscallId::Sleep, time, 0, 0, 0, 0, 0)
}
```

进入内核态的中断处理例程后，会调用内核中的`syscall`函数。

```rust
/*
 * @param:
 *   TrapFrame: the trapFrame of the Interrupt/Exception/Trap to be processed
 * @brief:
 *   process the Interrupt/Exception/Trap
 */
#[no_mangle]
pub extern fn rust_trap(tf: &mut TrapFrame) {
    use self::mcause::{Trap, Interrupt as I, Exception as E};
    match tf.scause.cause() {
        // ......
        Trap::Exception(E::UserEnvCall) => syscall(tf),
        // ......
        _ => crate::trap::error(tf),
    }
    trace!("Interrupt end");
}

/*
 * @param:
 *   TrapFrame: the Trapframe for the syscall
 * @brief:
 *   process syscall
 */
fn syscall(tf: &mut TrapFrame) {
    tf.sepc += 4;   // Must before syscall, because of fork.
    let ret = crate::syscall::syscall(tf.x[10], [tf.x[11], tf.x[12], tf.x[13], tf.x[14], tf.x[15], tf.x[16]], tf);
    tf.x[10] = ret as usize; // return code stored in a0
}
```

源码`kernel/src/syscall.rs`中的`crate::syscall::syscall`再根据系统调用号进行相应的处理。

```rust
/// System call dispatcher
pub fn syscall(id: usize, args: [usize; 6], tf: &mut TrapFrame) -> isize {
    let ret = match id {
        // ......
        011 => sys_sleep(args[0]),
        // ......
        _ => {
            error!("unknown syscall id: {:#x?}, args: {:x?}", id, args);
            crate::trap::error(tf);
        }
    };
    match ret {
        Ok(code) => code,
        Err(err) => -(err as isize),
    }
}
```
