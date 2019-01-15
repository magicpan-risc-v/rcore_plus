# 用户进程管理

## 实验目的

* 了解第一个用户进程创建过程
* 了解系统调用框架的实现机制
* 了解 rCore 如何实现 `sys_fork`，`sys_exec`，`sys_exit` 和 `sys_wait` 等系统调用来进行进程管理

## 实验内容

进程是一个抽象概念，它让一个程序可以假设它独占一台机器。进程向程序提供“看上去”私有的，其他进程无法读写的地址空间，以及一颗“看上去”仅执行该程序的CPU。我们常说的进程是指用户进程，与实验四中的内核线程相比，用户进程一般运行在用户态，并且有单独的地址空间。本实验将在实验四的基础上介绍用户进程管理的知识。

## 实验原理

为了在操作系统中运行用户进程，我们一般需要注意以下问题：
1. 如何从外存将程序加载进内存？
2. 如何启动用户进程？
3. 用户进程如何获得操作系统提供的服务？

下面我们依次研究上述问题。

### 用户程序加载

这部分涉及的代码主要位于 `kernel/src/process/context.rs` 文件中的 `Process::new_user` 函数。

一般在类Unix操作系统中，可执行文件都以[ELF](https://en.wikipedia.org/wiki/Executable_and_Linkable_Format)格式保存在外存上。ELF格式保存了程序的代码和数据，并指出代码和数据在地址空间的分布。因此，我们需要将文件载入内存，然后根据ELF格式标准解析文件，并构造程序在用户态需要的页表。

解析ELF格式对应的代码如下，此处使用了外部库[xmas-elf](https://github.com/nrc/xmas-elf)。解析ELF的方法可以参考uCore中的[load_icode](https://github.com/chyyuu/ucore_os_lab/blob/master/labcodes_answer/lab8_result/kern/process/proc.c#L590)函数。

```rust
// Parse elf
let elf = ElfFile::new(data).expect("failed to read elf");
```

完成读取后，我们需要根据ELF文件指定的代码和数据在地址空间中的分布构造对应的页表，如下所示：

```rust
// Make page table
let (mut memory_set, entry_addr) = memory_set_from(&elf);
```

具体映射在 `memory_set_from` 函数中完成，其中核心代码如下，主要功能为遍历ELF文件中的程序段，并根据要求，分配物理页并在页表中映射到指定的虚地址上。

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

用户程序想要正常运行，还需要相应的用户栈，另外为了在发生中断和系统调用时进入内核态进行处理，还需要分配单独的内核栈。`Process::new_user` 中剩余代码完成了上述过程，最后返回一个表示相应用户进程的结构体。

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

在实验四中，我们构造新 `struct Process` 时，第一个域的值由 `ArchContext::new_kernel_thread` 给出。这两者有何不同？我们知道用户进程和内核线程的主要区别在于地址空间和特权级，`Process::memory_set` 域影响了地址空间，我们可以推测 `Process::arch` 会影响特权级。我们在下一小结讲解用户进程启动时再进行详细的分析。

需要注意的是，我们将用户程序的代码写入内存，并即将跳转到该处运行。不过这里的写操作不会影响指令 cache，运行用户程序取指时可能会先从指令 cache 中取到旧的数据。因此需要在这时候刷新一下指令 cache。为了方便，刷新指令 cache 的操作暂时放到了 `TrapFrame::new_user_thread` 函数里。

### 用户进程启动

上一小节提到的 `new_user_thread` 如下所示，与 `new_kernel_thread` 基本相同，不过用户程序的内核栈上使用 `TrapFrame::new_user_thread` 构造了一个特殊中断帧。

```rust
pub struct Context(usize);

impl Context {
    pub unsafe fn new_user_thread(entry_addr: usize, ustack_top: usize, kstack_top: usize, _is32: bool, ttbr: usize) -> Self {
        InitStack {
            context: ContextData::new(),
            tf: TrapFrame::new_user_thread(entry_addr, ustack_top),
        }.push_at(kstack_top, ttbr)
    }
}
```

`TrapFrame::new_user_thread` 如下：

```rust
/// Generate the trapframe for building new thread in kernel
impl TrapFrame {
    fn new_user_thread(entry_addr: usize, sp: usize) -> Self {
        use core::mem::zeroed;
        let mut tf: Self = unsafe { zeroed() };

        flush_icache_all();

        tf.sp = sp;
        tf.elr = entry_addr;
        tf.spsr = 0b1101_00_0000; // To EL 0, enable IRQ
        tf
    }
}
```

与实验四中基本相同，要注意的地方有：
1. 此处的 `sp` 是用户栈的栈顶指针
2. `elr` 设为用户程序入口
3. `spsr` 需要设置为 `0b1101_00_0000`，使得 `eret` 进行返回时能够返回用户态
4. 指令 cache 暂时在这里刷新

### 用户进程切换

与内核线程不同，切换到用户进程时，也伴随着页表的切换。

```rust
pub unsafe fn switch(&mut self, target: &mut Self) {
    target.asid = ASID_ALLOCATOR.lock().alloc(target.asid);

    // with ASID we needn't flush TLB frequently
    ttbr_el1_write_asid(1, target.asid.value, target.ttbr);
    barrier::dsb(barrier::ISH);
    Self::__switch(&mut self.stack_top, &mut target.stack_top);
}
```

用户程序位于高地址空间中，使用 `TTBR1_EL1` 保存页表基址。向 `TTBR1_EL1` 寄存器写入目标线程页表基址 `target.ttbr`，就完成了页表切换。注意修改系统寄存器后需要执行内存屏障(memory barrier)指令 `dsb ish`。一般来说，切换页表后需要刷新 TLB，不过 ARMv8 引入了 ASID (Address Space ID) 机制来避免频繁刷新 TLB，详见下一小节。

由上述信息可知，一个新用户线程首次启动的过程如下：

1. `Process::new_user` 载入用户程序并加入调度队列中；
2. `switch` 函数执行，先修改 `TTBR1_EL1` 切换用户页表，然后调用 `__switch` 函数并将 `InitStack::context::lr` 即 `__trapret` 的地址放入 `lr` 寄存器中，因此 `switch` 函数执行完成后返回到 `__trapret` 而非调用入口；
4. `__trapret` 执行，首先根据 `InitStack::tf` 中断帧的内容回复寄存器，然后执行 `eret`，跳转到 `elr` 所指地址开始新线程的执行。

#### 【扩展】ASID 机制

在页表项描述符中，有一个 nG 位，如果该位为 0，表示这页内存是全局可访问的(用于内核空间)；如果该位为 1，表示这页内存不是全局可访问的，只有特定线程可访问。具体地，如果页表项中该位为 1，当访问相应虚拟地址更新 TLB 时，会有额外的信息被写入 TLB，该信息即 ASID，由操作系统分配，下次在 TLB 中查找该虚拟地址时就会检查 TLB 表项中的 ASID 是否与当前 ASID 匹配。相当于为不同的 ASID 各自创建了一个页表。

ASID 的大小可以为 8 位或 16 位，由 `TCR_EL1` 的 AS 字段指定，当前的 ASID 保存在 TTBR 的高位中，也可以由 `TCR_EL1` 的 `A1` 字段指定是 `TTBR0_EL1` 还是 `TTBR1_EL1`。在 RustOS 中，ASID 大小为 16 位，当前 ASID 保存在 `TTBR1_EL1` 的高 16 位。

在 `switch()` 函数里，首先会为目标线程分配一个 ASID，然后同时将该 ASID 与 `target.ttbr` 写入 `TTBR1_EL1` 即可，无需进行 TLB 刷新。

#### 【扩展】ASID 的分配

ASID 的分配需要保证同一时刻不同线程的 ASID 是不同的。这一部分参考了 Linux，主要思想是每次上下文切换时检查该线程原来的 ASID 是否有效，如果无效需要重新分配并刷新 TLB。

使用的数据结构如下：

```rust
struct Asid {
    value: u16,
    generation: u16,
}

struct AsidAllocator(Asid);
```

一个 ASID 结构由 16 位的 `value` 和 `generation` 组成，`value` 即 ASID 的具体值，`generation` 相当于时间戳。初始的 ASID 两个值都是 0，一定是无效的。该结构也被用于实现 ASID 分配器 `AsidAllocator`，此时该结构表示上一个被分配出去的 ASID。

```rust
const ASID_MASK: u16 = 0xffff;

impl AsidAllocator {
    fn new() -> Self {
        AsidAllocator(Asid { value: 0, generation: 1 })
    }

    fn alloc(&mut self, old_asid: Asid) -> Asid {
        if self.0.generation == old_asid.generation {
            return old_asid;
        }

        if self.0.value == ASID_MASK {
            self.0.value = 0;
            self.0.generation = self.0.generation.wrapping_add(1);
            if self.0.generation == 0 {
                self.0.generation += 1;
            }
            tlb_invalidate_all();
        }
        self.0.value += 1;
        return self.0;
    }
}
```

分配的流程如下：

1. 判断 `old_asid` 是否等于 `self.0.generation`，如果相等说明这一代的 ASID 还是有效的，直接返回 `old_asid`。
2. 否则，`old_asid` 已失效，如果当前代的 65535 个 ASID 没有分配完，就直接分配下一个。
3. 如果当前代的 65535 个 ASID 都分配完了，就开始新的一代，同时刷新 TLB。

### 系统调用

系统调用是操作系统为用户进程提供服务的接口层，使用系统调用的好处有：

1. 简化用户进程的实现，把一些共性的、与特权指令相关的任务放到操作系统层来实现
2. 接口规定好后，可以检查用户进程传递的参数，保护操作系统不会被用户进程破坏

从硬件层面上看，实现系统调用需要硬件能够支持从用户态通过某种机制切换到内核态。
试验一中介绍的软中断就可以完成上述任务。

用户态与系统调用相关的代码在 `user/rcore-ulib/src/syscall.rs` 文件中，发出一个系统调用，实际上就是使用 `svc 0` 指令触发一个中断，并做如下约定：

1. 将系统调用号保存在寄存器 `x8`，将 6 参数分别保存在寄存器 `x0~x5` 中。
2. 系统调用返回值保存在寄存器 `x0` 中。

这样一来内核就能通过检查寄存器的值来判断用户需要调用的服务和相应的参数。

```rust
fn sys_call(syscall_id: SyscallId, arg0: usize, arg1: usize, arg2: usize, arg3: usize, arg4: usize, arg5: usize) -> i32 {
    let id = syscall_id as usize;
    let ret: i32;

    unsafe {
        #[cfg(target_arch = "aarch64")]
            asm!("svc 0"
            : "={x0}" (ret)
            : "{x8}" (id), "{x0}" (arg0), "{x1}" (arg1), "{x2}" (arg2), "{x3}" (arg3), "{x4}" (arg4), "{x5}" (arg5)
            : "memory"
            : "volatile");
    }
    ret
}
```

其中寄存器 `x8` 保存了系统调用号，我们给系统调用约定的调用号如下：

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

例如 `sys_sleep` 调用会将 `SyscallId::Sleep` 放入 `x8`，睡眠时间放入 `x0`，然后执行 `svc 0` 指令：

```rust
pub fn sys_sleep(time: usize) -> i32 {
    sys_call(SyscallId::Sleep, time, 0, 0, 0, 0, 0)
}
```

进入内核态的中断处理例程 `rust_trap` 后，如果 ESR 的异常类别是 SVC，就会调用内核中的 `handle_syscall` 函数：

```rust
fn handle_syscall(num: u16, tf: &mut TrapFrame) {
    if num != 0 {
        crate::trap::error(tf);
    }

    // svc instruction has been skipped in syscall (ref: J1.1.2, page 6152)
    let ret = crate::syscall::syscall(
        tf.x1to29[7] as usize,
        [
            tf.x0,
            tf.x1to29[0],
            tf.x1to29[1],
            tf.x1to29[2],
            tf.x1to29[3],
            tf.x1to29[4],
        ],
        tf,
    );
    tf.x0 = ret as usize;
}
```

源码 `kernel/src/syscall.rs` 中的 `crate::syscall::syscall` 再根据系统调用号进行相应的处理：

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
