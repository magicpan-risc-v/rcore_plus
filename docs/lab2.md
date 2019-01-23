# Lab2 物理内存管理

## 实验目的

理解OS如何管理物理内存，如何利用硬件提供的分页机制，为软件提供虚拟内存环境。

* 理解rcore本身及OS所管辖的内存布局
* 理解内核堆及连续内存分配算法
* 理解以页为单位的物理内存分配算法
* 【重点】理解页表和地址映射的工作原理
  * 【难点】理解编辑页表及自映射机制的工作原理

## 实验内容

而lab2主要涉及操作系统的物理内存管理。操作系统为了能有效动态地使用内存，还需高效地管理内存资源。在lab2中大家会了解并且自己动手完成一个简单的物理内存管理系统。

lab2包含三个部分：首先了解如何发现系统中的物理内存；然后了解如何建立对物理内存的初步管理，即了解连续物理内存管理；最后了解页表相关的操作，即如何建立页表来实现虚拟内存到物理内存之间的映射。

当实验结束时，我们会用页机制为rcore本身建立虚拟内存的映射和保护。这一套方法之后也会被用于用户程序的内存管理。接下来的lab3中，我们会了解缺页异常（PageFault），并用它实现的高级内存管理机制：延迟分配，页面置换，共享内存等等。

## 系列练习

- 实现以页为单位的物理内存分配算法，或用于内核堆的连续内存分配算法
- 实现页表的映射过程（`map`和`unmap`函数）
- 【挑战】实现RISCV64的页表映射过程（Sv48四级页表）
- 【挑战】支持大页映射，并修改MemorySet适配之（与上述挑战结合更佳）

## 实验原理

### 流程概述

本次实验主要完成rcore对内存的初始化工作。在代码中体现为：

```rust
#[no_mangle]
pub extern fn rust_main(...) -> ! {
	//...
    memory::init(dtb);
	//...
}
```

这个函数主要完成以下几个工作：

```rust
pub fn init(dtb: usize) {
    // 1. 允许内核访问用户程序的内存
    unsafe { sstatus::set_sum(); }
    // 2. 初始化内核堆
    init_heap();
    // 3. 初始化物理帧分配器
    init_frame_allocator();
    // 4. 建立初始页表，开启页机制
    super::paging::setup_page_table();
    // 5. 为内核建立新的页表
    remap_the_kernel(dtb);
}
```

在知识点上，第二步内核堆属于连续内存分配，第三步物理帧属于非连续内存分配。第二三步属于和平台硬件无关的算法范畴，实现起来比较简单；而第四五步则和平台硬件上的页表机制紧密相关，整体代码结构比较繁杂，实现上也有很多细节需要注意。

在代码结构上，由于第二三步都是纯粹的算法，有清晰明确的语义接口，因此可以将它们作为独立的模块（crate）实现，以方便测试和复用。其中物理帧分配算法位于`crate/bit-allocator`，内核堆分配直接使用了社区中的`linked_list_allocator`库。

第四五步与页表相关的部分，最底层的RISCV页表结构定义在`riscv`库的`paging`模块中，这个模块还包含了一些基于自映射机制的基础页表操作，例如map/unmap。在上层，为了统一不同平台的页表操作，我们定义了一组通用的页表接口。进而面向这组接口实现高级的虚拟内存机制，例如置换机制、共享内存等。这些功能最终通过`MemorySet`这个高层API提供给内核使用。这些代码都位于`crate/memory`库中，它包含了平台无关的虚拟内存管理功能。上面提到`riscv`库提供了页表的实现，`memory`库依赖于页表的接口，内核中还需要把它们粘合在一起，这部分胶水代码位于`arch_rv32/paging.rs`。

下面用表格展示了各层模块的信息，从上到下依次表示从底层到高层：

| 功能描述            | 主要结构                                          | 代码位置                | 平台相关 |
| ------------------- | ------------------------------------------------- | ----------------------- | -------- |
| RISCV页表结构和操作 | `RecursivePageTable`, `PageTableEntry`            | crate/riscv             | o        |
| 实现页表接口        | `PageTable`, `Entry`, `InactivePageTable` (impl)  | kernel/arch/paging      | o        |
| 定义页表接口        | `PageTable`, `Entry`, `InactivePageTable` (trait) | crate/memory/paging     | x        |
| 虚拟内存机制        | `SwapManager`, `SwapExt`, `CowExt`                | crate/memory/{swap,cow} | x        |
| 虚拟内存管理        | `MemorySet`, `MemoryHandler`                      | crate/memory/memory_set | x        |
| 其它内存功能        | `GlobalFrameAlloc`, `KernelStack`                 | kernel/memory           | x        |

最终的`kernel/memory`模块中包含了整个内存管理子系统暴露给内核其它部分的结构和功能：

```rust
// 定义物理帧分配器的具体类型
pub type FrameAlloc = ...
// 定义全局物理帧分配器
lazy_static! { pub static ref FRAME_ALLOCATOR = ... }
// 定义全局活跃页表对象
lazy_static! { static ref ACTIVE_TABLE = ... }
// 获取当前活跃页表对象
pub fn active_table() -> ... {...}

// 以上为内存子系统内部使用
// --------------------
// 以下为内核其它部分使用

// 定义全局物理帧分配器
pub struct GlobalFrameAlloc;
// 定义内核栈对象
pub struct KernelStack(usize);
// 定义虚拟内存管理器的具体类型
pub type MemorySet = ...
// 定义缺页处理函数
pub fn page_fault_handler(addr: usize) -> bool {...}
// 定义全局堆分配器（本应在这里，但Rust规范要求放在lib.rs中）
#[global_allocator]
static HEAP_ALLOCATOR = ...
```

### rcore的内存布局与探测

当rcore启动后，需要探测可用的物理内存空间。具体来说包括以下信息：

* 全部的物理内存地址空间
* 已被内核使用的地址空间
* MMIO设备映射地址空间

获取这些信息的方法分别是：

* 物理内存和IO设备：从Bootloader传来的**设备树**（FlatDeviceTree）中读取
* 内核占用的空间：从**链接脚本**（`*.ld`）中定义的特殊符号获取

#### 设备树

我们首先来看设备树。它是在OS启动时就写在内存特定区域的一段数据，用来描述本机的各种设备信息。设备树的提出是为了解决ARM平台下繁杂的硬件设备造成OS代码难以维护的问题。RISCV平台也使用了这个机制。

在执行Bootloader的第一行代码前，硬件会将设备树的地址写入`a1`寄存器中，BBL根据这个地址读取设备树的内容，进而获取各种硬件设备的MMIO地址，实现对设备的控制。

我们可以用特殊参数，让QEMU输出设备树的内容，并使用`fdtdump`查看：

```bash
qemu-system-riscv32 -machine virt,dumpdtb=virt.out
fdtdump virt.out
```

就会看到以下内容。基本每个设备都包含了一个reg属性，其中第2个值表示设备的起始地址，第4个值表示大小：

```
{
	...
    uart@10000000 {						// 串口
        interrupts = <0x0000000a>;
        interrupt-parent = <0x00000002>;
        clock-frequency = <0x00384000>;
        // 地址范围：从0x10000000开始，大小为0x100
        reg = <0x00000000 0x10000000 0x00000000 0x00000100>;
        compatible = "ns16550a";
    };
    virtio_mmio@10008000 {				// 某VirtIO设备
        interrupts = <0x00000008>;
        interrupt-parent = <0x00000002>;
        // 地址范围：从0x10008000开始，大小为0x1000
        reg = <0x00000000 0x10008000 0x00000000 0x00001000>;
        compatible = "virtio,mmio";
    };
	...
    memory@80000000 {					// 物理内存
        device_type = "memory";
        // 地址范围：从0x80000000开始，大小为0x08000000（128MB）
        reg = <0x00000000 0x80000000 0x00000000 0x08000000>;
    };
};
```

#### 链接脚本

链接脚本用来在程序链接时，指定每个程序段包含哪些内容，以及它的物理和虚拟地址。

rcore kernel的链接脚本位于：`arch_rv32/boot/linker.ld`

主要内容如下：

```
BASE_ADDRESS = 0x80020000;	// 内核的起始地址

SECTIONS
{
	// RAM的起始地址位于0x80000000
	// 从这里开始的一段空间被Bootloader使用，占用不超过0x20000Bytes（~130KB）
	// 因此内核要让出这片空间
	
    . = BASE_ADDRESS;	// '.'表示当前虚地址，会随着后面定义段而自动增大
    					// 且如不特殊指定，物理地址与虚拟地址相同
    start = .;			// 定义符号'start'，表示内核部分开始，可以在代码中用extern导入

    .text : {		// 代码段：只读，可执行
        stext = .;		// 定义符号'stext' 表示代码段开始
        *(.text.entry)	// 将entry放在最前面，即0x80020000处，Bootloader会跳到这里
        *(.text .text.*)// 其它代码段内容
        . = ALIGN(4K);	// 结尾对齐一个页：由于下一个段的访问权限发生变化，因此需放置在不同页中
        etext = .;		// 定义符号'etext' 表示代码段结束
    }

    .rodata : {		// 只读数据段：只读，不可执行
        srodata = .;
        *(.rodata .rodata.*)
        . = ALIGN(4K);
        erodata = .;
    }

    .data : {		// 数据段：可写，不可执行
        sdata = .;
        *(.data .data.*)
        edata = .;
    }

    .stack : {		// 内核栈区：将其从bss中分离出来，以避免清零
        *(.bss.stack)
    }

    .bss : {		// 未初始化数据段：进入Kernel时清零
        sbss = .;
        *(.bss .bss.*)
        ebss = .;
    }

    end = .;		// 内核部分结束
    
    // 所有上面没包含的内容，会自动放在这后面
    // 大部分是调试信息，我们暂时不用关心
}
```

这些信息会包含在最终生成的内核elf文件中。QEMU加载elf时会据此将程序各段放在正确的地址上。

rcore也会导入上面定义的符号，来获知自己各段的起止位置，进而为自己创建页表。

在完成编译后，我们可以通过`make header`来查看elf中的布局信息：

```
Sections:	      大小       虚拟地址   物理地址  文件中的位置 对齐
Idx Name          Size      VMA       LMA       File off  Algn
  0 .text         00056000  80020000  80020000  00001000  2**2
                  CONTENTS, ALLOC, LOAD, READONLY, CODE
  1 .rodata       00082000  80076000  80076000  00057000  2**12
                  CONTENTS, ALLOC, LOAD, READONLY, DATA
  2 .data         00000020  800f8000  800f8000  000d9000  2**2
                  CONTENTS, ALLOC, LOAD, DATA
  3 .stack        00080000  800f9000  800f9000  000d9020  2**12
                  ALLOC
  4 .bss          00a00388  80179000  80179000  000d9020  2**2
                  ALLOC
```

#### rcore的内存布局

根据上面的分析，我们可以对rcore的内存布局有一个大致的了解：

物理内存布局：

* [0x10000000,...)：IO设备映射（串口，中断控制器等）
* [0x80000000,0x80020000)：Bootloader使用
* [0x80020000,KERNEL_END)：Kernel使用
* [KERNEL_END, END)：空闲物理内存，按页分配

虚拟内存布局：

* [0x00000000, 0x80000000)：用户程序使用（2G）
  * [0x00010000...)：text，rodata，data，bss，heap段，动态向上增长
  * [...,0x80000000)：stack段，动态向下增长
* [0x80000000,0x80020000)：Bootloader使用（对等映射）
* [0x80020000,KERNEL_END)：Kernel使用（对等映射）
  * [0x80020000, KERNEL_END)：text，rodata，data，stack，bss（heap）段

TODO：在代码中加入Virtual memory map图示

### 内核堆

OS内核作为一个程序，也需要使用动态分配的内存空间，即堆空间（Heap）。

在C语言编写的用户程序中，我们使用标准库提供的`malloc`和`free`函数来动态申请和释放内存空间（在C++中是内置的`new`和`delete`关键字）。其背后也是由OS为其分配一片连续的虚拟内存空间（sys_brk），再由库代码管理这片空间，分配给各个对象使用。

对于OS而言，它的堆空间实际是一片预先分配好的、固定大小的连续虚拟内存空间。在rcore中我们定义了一个数组为内核堆预留空间，它编译后位于bss段中。

#### Rust中的堆

在Rust程序中，我们使用Box来把一个对象放在堆上，其它需要动态分配内存的对象（如常用的容器：动态数组Vec，二叉树BTreeSet等）都会用到它，Box依赖于一个**全局堆分配器（GlobalAllocator）**来完成堆内存的申请和释放工作。

对于一般的Rust程序，默认的堆分配器位于标准库std中。但对于rcore而言，由于它是no_std的，即不依赖std库，只使用core库，因此默认不能使用动态内存分配功能。

不过好消息是，我们还可以使用alloc库。它是std的一部分，包含了依赖动态内存分配的相关功能，也可以在no_std环境下导入使用。

为了使用alloc，我们首先需要在`lib.rs`中加入以下语句：

```rust
#![feature(alloc)]
extern crate alloc;
```

`cargo-xbuild`会为我们交叉编译alloc库，并自动链接进来。

然后，我们需要在`lib.rs`中定义一个全局变量作为堆分配器：

```rust
#[global_allocator]
static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
```

并且还需要定义一个内存耗尽处理函数，它位于`lang.rs`中：

```rust
#[lang = "oom"]
fn oom(_: Layout) -> ! {
    panic!("out of memory");
}
```

我们提供的堆分配器需要实现`alloc::alloc::GlobalAlloc`接口，我们可以到找到它的定义：

```rust
pub unsafe trait GlobalAlloc {
    unsafe fn alloc(&self, layout: Layout) -> *mut u8;
    unsafe fn dealloc(&self, ptr: *mut u8, layout: Layout);
    ...
}
```

其中`Layout`规定了待分配空间的大小和对齐要求。并且要注意，由于它会被各个线程共享，因此实现时一般要在内部加锁（不然编译器是不会放过你的）。

这是一个定义良好的接口，因此我们可以为程序自由地实现自己的动态内存分配算法。

目前社区中已经有了一些现成的轮子可以直接使用，如：`linked_list_allocator`，`slab_allocator`。rcore就直接使用了前者。

在接下来的实验中，你需要在这个接口下尝试实现FirstFit等连续内存分配算法。

参考资料：https://os.phil-opp.com/kernel-heap/

### 以页为单位管理物理内存

【与ucore的区别】

ucore中为每个页建立了一个Page数据结构，描述其属性状态等信息，并用链表连接起来，以实现分配算法。

rcore中每个页只有1bit的信息，描述其是否空闲、可被分配。由**物理帧分配器FrameAllocator**统一管理。

这种做法把空间开销降到了理论最小值，因为它只做、也只能做一件事：以页为单位管理物理内存。

如果以后要对物理帧进行引用计数，就需要一个新的对象来开辟额外空间进行管理。



TODO：本质是个0～N的整数分配器，用类似线段树的数据结构维护

### 页表与虚拟内存

TODO：参考https://os.phil-opp.com/page-tables/

### 编辑页表与自映射机制

TODO：参考https://os.phil-opp.com/page-tables/