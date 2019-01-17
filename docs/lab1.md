# Lab1 系统初始化

## 实验目的

* 了解RISC-V指令集结构
* 了解CPU的中断机制
* 了解rcore启动过程

## 实验内容

本实验主要包含两个部分，分别是rcore启动的引导程序[Berkeley Boot Loader](https://github.com/riscv/riscv-pk) (bbl)和rcore内核本身。
我们将对RISC-V指令集结构进行初步的介绍，然后对bbl和rcore分别进行讲解。

## 实验原理

### RISC-V Overview

RISC-V是发源于Berkeley的开源指令集结构，从其名称就可了解到它属于RISC指令集。
为了更好地了解RISC-V指令集，建议读者首先阅读相应的文档：
* [User-Level ISA Specification](https://riscv.org/specifications)
* [Privileged ISA Specification](https://riscv.org/specifications/privileged-isa)

#### 模块化ISA

RISC-V指令集是模块化的，它由基本整数指令集和可选的扩展指令集组成：
* Base integer ISAs
    - RV32I
    - RV64I
* Standard extensions
    - M: Integer **M**ultiply
    - A: **A**tomic Memory Operations
    - F: Single-percison **F**loating-point
    - D: **D**ouble-precision Floating-point
    - G: IMAFD, **G**eneral Purpose ISA

举例来说，`RV64IMA`表示支持整数运算和原子操作的64位RISC-V指令集。

#### 特权级设计

RISC-V共有4种不同的特权级，与x86不同的是，RISC-V中特权级对应数字越小，权限越低。

| Level | Encoding |       Name       | Abbreviation |
| :---: | :------: | :--------------: | :----------: |
|   0   |    00    | User/Application |      U       |
|   1   |    01    |    Supervisor    |      S       |
|   2   |    10    |    *Reserved*    |              |
|   3   |    11    |     Machine      |      M       |

一个RISC-V指令集的CPU可以只实现一部分特权级来适应应用的需求，一些可能的特权级组合如下：

| Number of levels | Supported Modes | Intended Usage                              |
| :--------------: | --------------- | ------------------------------------------- |
|        1         | M               | Simple embedded systems                     |
|        2         | M, U            | Secure embedded systems                     |
|        3         | M, S, U         | Systems running Unix-like operating systems |

为了简化操作系统对具体硬件的依赖，运行在S-mode的操作系统可以通过Supervisor Binary Interface (SBI)接口向运行在最底层的M-mode的底层软件发出底层功能请求并得到底层软件的服务（比如设置时钟、输入字符、输出字符等）。

在基于rcore on rv32的操作系统实验中，bootloader运行在M-mode，rcore kernel运行在S-mode，而应用程序运行在U-mode。

### Berkeley Boot Loader

bbl是运行在M-mode的特殊程序，负责对底层硬件的控制，并向运行在S-mode的操作系统提供相应的服务。
bbl的职责是进行初始化工作并将控制权转交给内核，并通过Supervisor Binary Interface (SBI)为操作系统提供基础的服务。

#### rcore的编译

rcore的源代码在`kernel`目录下，而bbl的源代码位于`riscv-pk`目录下。
两者的编译是分开进行的，rcore编译完成后会生成`kernel/target/riscv32/debug/rcore`文件。
然后在编译bbl的过程中，该文件会被嵌入到bbl的二进制文件中，读者可以检查`riscv-pk/bbl/payload.S`文件，我们使用了GCC提供的`.incbin`汇编命令将`BBL_PAYLOAD`所指向的文件包含在了生成的程序中。

这样做是因为当前我们使用的RISC-V模拟器QEMU不支持磁盘的模拟，因此我们只能将需要加载的内核文件放入引导程序之中，再由引导程序将内核释放到内存中。

#### bbl启动过程

有兴趣的同学可以从`riscv-pk/machine/mentry.S`中的`do_reset`处开始阅读。

##### bbl的SBI支持

在bbl中，为简化rcore对硬件的IO访问，通过SBI接口提供了，对时钟、字符输入输出的底层支持。rcore操作系统通过调用带相应参数的`ecall`指令就获得bbl的底层服务。如同学需要了解bbl中相关的具体实现，可查看`riscv-pk/machine/mtrap.c`中实现的相关函数（如 mcall_console_putchar，mcall_console_getchar， mcall_set_timer等）即可。

#### rcore启动过程

bbl在完成初始化工作后，会将处理器从M-mode切换到S-mode同时跳转到`kernel/src/arch_rv32/boot/entry.asm`的`_start`处开始执行，此时我们已经进入了rcore。`kernel/src/arch_rv32/mod.rs`的rust_main函数是完成初始化过程的主体函数。

rcore之后要完成的主要任务包括：

1. 设置中断向量
2. 设置时钟中断
4. 进行中断处理

与中断相关的代码主要在`kernel/src/arch_rv32/interrupt.rs`文件中。

##### 设置中断向量

`interrupt.rs`中的`init`函数完成了设置中断向量的任务。

```rust
/// initialize the interrupt status
pub fn init() {
    extern {
        fn __alltraps();
    }
    unsafe {
        // Set sscratch register to 0, indicating to exception vector that we are
        // presently executing in the kernel
        sscratch::write(0);
        // Set the exception vector address
        stvec::write(__alltraps as usize, stvec::TrapMode::Direct);
        // Enable IPI
        sie::set_ssoft();
        // Enable serial interrupt
        sie::set_sext();
    }
    info!("interrupt: init end");
}
```

其中将中断向量基地址写入`stvec`寄存器的语句为`stvec::write(__alltraps as usize, stvec::TrapMode::Direct)`。
此处`__alltraps`为函数指针，实际函数位于`kernel/src/arch_rv32/boot/trap.asm`文件中。
之后如果发生了中断，那么处理器就会自动跳转到`__alltraps`进行中断处理。

另外，`interrupt::enable`函数能够使能中断。

```rust
/// enable interrupt
#[inline(always)]
pub unsafe fn enable() {
    sstatus::set_sie();
}
```
##### SBI访问接口
在`kernel/src/arch_rv32/sbi.rs`中描述了rcore访问bbl的SBI接口信息。通过其`sbi_call`函数的实现，可以看到rcore是通过调用带有相关参数的ecall指令来完成SBI访问的。目前支持的部分SBI调用功能参数如下所示：
```
/// sbi: 设置时钟
const SBI_SET_TIMER: usize = 0;
/// sbi: 输出字符
const SBI_CONSOLE_PUTCHAR: usize = 1;
/// sbi: 输入字符
const SBI_CONSOLE_GETCHAR: usize = 2;
......
```

##### 设置时钟中断

`kernel/src/arch_rv32/timer.rs`中的`init`函数完成了初始化时钟中断的工作。

```rust
/// enable supervisor timer interrupt and set next timer interrupt
pub fn init() {
    // Enable supervisor timer interrupt
    unsafe { sie::set_stimer(); }
    set_next();
    info!("timer: init end");
}

/// set the next timer interrupt
pub fn set_next() {
    // 100Hz @ QEMU
    let timebase = 250000;
    sbi::set_timer(get_cycle() + timebase);
}
```

`sbi::set_timer(get_cycle() + timebase)`将下一次触发时钟中断的时间设置为`timebase`个周期后。

##### 进行中断处理

我们已经知道中断触发后，处理器会立即跳转到`__alltraps`处，此时，为了进行中断处理，我们需要进行以下任务：
1. 中断现场的保存
2. 中断的处理
3. 中断现场的恢复

在`kernel/src/arch_rv32/boot/trap.asm`文件中`SAVE_ALL`宏完成了中断现场的保存操作，`RESTORE_ALL`宏完成了中断现场的回复工作。

```asm
    .section .text
    .globl __alltraps
__alltraps:
    SAVE_ALL
    mv a0, sp
    jal rust_trap
    .globl __trapret
__trapret:
    RESTORE_ALL
    # return from supervisor call
    sret
```

我们提到的“中断现场”正式名称是中断帧，它包含了处理中断所需要的所有信息。
一个中断帧是如下定义的结构体：
```rust
/// Saved registers on a trap.
#[derive(Clone)]
#[repr(C)]
pub struct TrapFrame {
    /// General Registers
    pub x: [usize; 32],
    /// Supervisor Status
    pub sstatus: sstatus::Sstatus,
    /// Supervisor Exception Program Counter: save the trap virtual address
    pub sepc: usize,
    /// Supervisor Trap Value
    pub stval: usize,
    /// Supervisor Cause: record the cause of exception/interrupt/trap
    pub scause: scause::Scause,
}
```

`SAVE_ALL`宏定义如下，可以看到我们将`x1`-`x31`、`sstatus`、`sepc`、`stval`和`scause`依次保存到了栈上，从而形成了一个`TrapFrame`的结构，我们随后将指向该结构体的栈指针`sp`保存到`a0`中作为中断处理函数`rust_trap`的参数。

```asm
.macro SAVE_ALL
    # If coming from userspace, preserve the user stack pointer and load
    # the kernel stack pointer. If we came from the kernel, sscratch
    # will contain 0, and we should continue on the current stack.
    csrrw sp, sscratch, sp
    bnez sp, _save_context
_restore_kernel_sp:
    csrr sp, sscratch
    # sscratch = previous-sp, sp = kernel-sp
_save_context:
    # provide room for trap frame
    addi sp, sp, -36 * XLENB
    # save x registers except x2 (sp)
    STORE x1, 1
    STORE x3, 3
    # tp(x4) = hartid. DON'T change.
    # STORE x4, 4
    STORE x5, 5
    ......       # STORE X[6-30], [6-30]
    STORE x31, 31

    # get sp, sstatus, sepc, stval, scause
    # set sscratch = 0
    csrrw s0, sscratch, x0
    csrr s1, sstatus
    csrr s2, sepc
    csrr s3, stval
    csrr s4, scause
    # store sp, sstatus, sepc, sbadvaddr, scause
    STORE s0, 2
    STORE s1, 32
    STORE s2, 33
    STORE s3, 34
    STORE s4, 35
.endm
```

`RESTORE_ALL`宏定义如下，它将栈上保存的中断帧的内容恢复到寄存器中：
```asm
.macro RESTORE_ALL
    LOAD s1, 32             # s1 = sstatus
    LOAD s2, 33             # s2 = sepc
    andi s0, s1, 1 << 8         # sstatus.SPP = 1
    bnez s0, _restore_context   # s0 = back to kernel?
_save_kernel_sp:
    addi s0, sp, 36*XLENB
    csrw sscratch, s0         # sscratch = kernel-sp
_restore_context:
    # restore sstatus, sepc
    csrw sstatus, s1
    csrw sepc, s2

    # restore x registers except x2 (sp)
    LOAD x1, 1
    LOAD x3, 3
    # LOAD x4, 4
    LOAD x5, 5
    ......   # LOAD X[6-30], [6-30]
    LOAD x31, 31
    # restore sp last
    LOAD x2, 2
.endm
```

我们在保存和恢复中断现场时都用到了`sscratch`寄存器，其实理由很简单。
以保存中断帧为例，为了保存通用寄存器到内核栈顶部，我们首先至少要写一个寄存器。
因此，RISC-V指令集为我们提供了一个专门用来处理此种情况的`sscratch`寄存器。
通过使用`sscratch`寄存器，我们还能够实现嵌套中断的功能，感兴趣的同学可以参考[issue #2](https://github.com/oscourse-tsinghua/rcore_plus/issues/2)。
