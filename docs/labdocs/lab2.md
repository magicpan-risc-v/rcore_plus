# Lab2 物理内存管理

## 实验概述

理解OS如何管理物理内存，如何利用硬件提供的分页机制，为软件提供虚拟内存环境。

### 实验目的

* 理解rcore本身及OS所管辖的内存布局
* 理解内核堆及连续内存分配算法
* 理解以页为单位的物理内存分配算法
* 【重点】理解页表和地址映射的工作原理
  * 【难点】理解编辑页表及自映射机制的工作原理

【与ucore的区别】

* RISCV没有分段机制
* x86与RISCV探测物理内存布局的方法不同
* 增加内核重映射步骤，更细粒度地管理OS本身内存空间

### 实验内容

1. 实现以页为单位的物理内存分配算法，或用于内核堆的连续内存分配算法
2. 实现页表的映射过程（`map`和`unmap`函数）
3. 【挑战】实现RISCV64的页表映射过程（Sv48四级页表）
4. 【挑战】支持大页映射，并修改MemorySet适配之（与上述挑战结合更佳）

### 下集预告

至此我们已经利用分页机制，为rcore本身建立了虚拟内存的映射和保护。这一套方法之后也会被用于用户程序的内存管理。接下来让我们探索利用PageFault实现的高级内存管理机制：延迟分配，页面置换，共享内存等等。

## 2.1 rcore的内存布局

【与ucore的区别】

* x86的ucore，物理内存始于0x100000，虚拟内存始于0xC0000000（？），因此需要bootloader利用段机制建立好一个线性映射再进入kernel。而RISCV的rcore，物理内存和虚拟内存都始于0x80000000，二者是相同的，因此不需要任何初始化就可以直接进入kernel。
* x86与RISCV探测物理内存布局的方法不同。RISCV下由bootloader（BBL）读取设备树（FlatDeviceTree）获取可用内存的布局。但rcore暂时并没有利用这个信息，而是硬编码了可用内存的地址范围。
* 对外设的控制，x86下有专门的IO端口，使用专门的指令完成（inb,outb等）。RISCV下把端口映射到特定内存地址，称为MMIO（MemoryMapedIO）。

### 物理内存布局

* [0x10000000,...)：IO设备映射（串口，中断控制器等）
* [0x80000000,0x80020000)：Bootloader使用
* [0x80020000,KERNEL_END)：Kernel使用
* [KERNEL_END, END)：空闲物理内存，按页分配

注：IO映射地址可查询FlatDeviceTree得到

### 虚拟内存布局

* [0x00000000, 0x80000000)：用户程序使用（2G）
  * [0x00010000...)：text，rodata，data，bss，heap段
  * [...,0x80000000)：stack段
* [0x80000000,0x80020000)：Bootloader使用（对等映射）
* [0x80020000,KERNEL_END)：Kernel使用（对等映射）
  * [0x80020000, KERNEL_END)：text，rodata，data，stack，bss（heap）段

TODO：在代码中加入Virtual memory map图示

TODO：配合linker script解释Kernel内存布局

## 2.2 内核堆

OS内核作为一个程序，也需要使用动态分配的内存空间，即堆空间（Heap）。

在C语言编写的用户程序中，我们使用标准库提供的`malloc`和`free`函数来动态申请和释放内存空间（在C++中是内置的`new`和`delete`关键字）。其背后也是由OS为其分配一片连续的内存空间（sys_brk），再由库代码管理这片空间，分配给各个对象使用。

对于OS而言，它的堆空间实际是一片预先分配好的、固定大小的连续内存空间，并且也需要一个算法来负责分配和回收。

TODO：在rcore中定义了一个数组作为内核堆空间，编译后位于bss段。

### Rust中的堆

在Rust程序中，我们使用Box来把一个对象放在堆上，其它需要动态分配内存的对象（如常用的容器：动态数组Vec，二叉树BTreeSet等）都会用到它，Box依赖于一个**全局堆分配器（GlobalAllocator）**来完成堆内存的申请和释放工作。

TODO：

* no_std情况下，只依赖core库时，不能使用动态内存分配功能
* 与动态内存相关的功能位于alloc库中，它是标准库std的一部分，也可在no_std环境下导入使用。
* 为了使用Box，需要在项目根文件定义一个全局变量作为GlobalAllocator，添加`#[global_allocator]`标注。同时需要提供内存耗尽处理函数，添加`#[lang = "oom"]`标注。
* GlobalAllocator需实现`alloc::alloc::GlobalAlloc`接口。在实验中，你需要在这个接口下实现FirstFit等连续内存分配算法。
* 社区中已经有了现成的轮子可以直接使用：`linked_list_allocator`，`slab_allocator`
* 参考资料：https://os.phil-opp.com/kernel-heap/

## 2.3 以页为单位管理物理内存

【与ucore的区别】

ucore中为每个页建立了一个Page数据结构，描述其属性状态等信息，并用链表连接起来，以实现分配算法。

rcore中每个页只有1bit的信息，描述其是否空闲、可被分配。由**物理帧分配器FrameAllocator**统一管理。

这种做法把空间开销降到了理论最小值，因为它只做、也只能做一件事：以页为单位管理物理内存。

如果以后要对物理帧进行引用计数，就需要一个新的对象来开辟额外空间进行管理。



TODO：本质是个0～N的整数分配器，用类似线段树的数据结构维护

## 2.4 页表与虚拟内存

TODO：参考https://os.phil-opp.com/page-tables/

## 2.5 编辑页表与自映射机制

TODO：参考https://os.phil-opp.com/page-tables/