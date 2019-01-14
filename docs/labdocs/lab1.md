## 实验目的：

操作系统是一个软件，也需要被加载到内存中运行。在这里我们将通过另外一个更底层的软件-bootloader来完成这些工作。为此，我们需要实现bootloader，能显示字符，并能从riscv machine特权级切换到riscv supervisor特权级让OS kernel执行。lab1提供了一个非常小的bootloader -- bbl和OS kernel -- rcore 。通过分析和实现这个bbl和rcore，读者可以了解到：

- 计算机原理
   - risc-v概述
   - risc-v特权级
   - risc-v中断机制
   - 外设：串口，时钟

- bootloader
  - 编译运行bootloader的过程
  - 调试bootloader的方法
  - 启动bootloader的过程
  - ELF执行文件的格式和加载
  - 外设访问：在串口上显示字符串

- rcore
  - 编译运行rcore的过程
  - rcore的启动过程
  - 调试rcore的方法
  - 函数调用关系：在汇编级了解函数调用栈的结构和处理过程
  - 中断管理：与软件相关的中断处理
  - 外设管理：时钟

## 实验内容：

lab1中包含一个bootloader和一个OS kernel。这个bootloader可以加载rcore，并从riscv machine特权级切换到riscv supervisor特权级，把CPU控制权交给rcore运行。而这lab1中的rcore只是一个可以处理时钟中断和显示字符的幼儿园级别OS kernel。

### 练习
。。。

### 计算机原理
#### risc-v概述
RISC-V是发源于Berkeley在总结多个ISA（Instruction Set Architecture ） 优缺点后而重新创建的开源ISA。对于初学RISC-V的同学，建议仔细阅读一本由David Patterson和Andrew Waterman写的入门书籍[《RISC-V 手册--一本开源指令集的指南》](http://www.riscvbook.com/chinese/)，可以对这种CPU架构/指令集/运行机理有一个全面的了解。

对于操作系统而言，除了一般应用用到的CPU指令外，我们还关心CPU的特权等级、特权指令、特权寄存器，只有了解了这些，才能能管理和控制整个计算机系统。

##### Modular ISA

RISC-V ISA是模块化的，它由一个基本指令集和一些扩展指令集组成

* Base integer ISAs
    - RV32I
    - RV64I
    - RV128I
* Standard extensions
    - M: Integer **M**ultiply
    - A: **A**tomic Memory Operations
    - F: Single-percison **F**loating-point
    - D: **D**ouble-precision Floating-point
    - G: IMAFD, **G**eneral Purpose ISA

举例来说，`RV32IMA`表示支持基本整数操作和原子操作的32位RISC-V指令集。

#####  特权等级（Privilege Levels）
RISC-V共有4种不同的特权级，与x86不同的是，RISC-V中特权级对应数字越小，权限越低

| Level | Encoding |       Name       | Abbreviation |
| :---: | :------: | :--------------: | :----------: |
|   0   |    00    | User/Application |      U       |
|   1   |    01    |    Supervisor    |      S       |
|   2   |    10    |    Hypervisor    |      H       |
|   3   |    11    |     Machine      |      M       |

一个RISC-V的实现并不要求同时支持这四种特权级，可接受的特权级组合如下

| Number of levels | Supported Modes | Intended Usage                           |
| :--------------: | --------------- | ---------------------------------------- |
|        1         | M               | Simple embedded systems                  |
|        2         | M, U            | Secure embedded systems                  |
|        3         | M, S, U         | Systems running Unix-like operating systems |
|        4         | M, H, S, U      | Systems running Type-1 hypervisors       |

##### 特权相关寄存器（Control and Status Registers）

RISC-V通过访问各特权等级的Control and Status Registers (CSRs)来完成特权操作，其中应当注意的有以下几个

| Name     | Description                              |
| -------- | ---------------------------------------- |
| sstatus  | Supervisor status register               |
| sie      | Supervisor interrupt-enable register     |
| stvec    | Supervisor trap handler base address     |
| sscratch | Scratch register for supervisor trap handlers |
| sepc     | Supervisor exception program counter     |
| scause   | Supervisor trap cause                    |
| sbadaddr | Supervisor bad address                   |
| sip      | Supervisor interrupt pending             |
| sptbr    | Page-table base register                 |
| mstatus  | Machine status register                  |
| medeleg  | Machine exception delegation register    |
| mideleg  | Machine interrupt delegation register    |
| mie      | Machine interrupt-enable register        |
| mtvec    | Machine trap-handler base address        |
| mscratch | Scratch register for machine trap handlers |
| mepc     | Machine exception program counter        |
| mcause   | Machine trap cause                       |
| mbadaddr | Machine bad address                      |
| mip      | Machine interrupt pending                |

##### 特权相关CSR 访问指令

RISC-V ISA中提供了一些修改CSR的原子操作指令来完成各种特权操作，下面介绍之后常用到的`csrrw`指令

```nasm
# Atomic Read & Write Bit
cssrw rd, csr, rs
```

语义上等价的C++函数如下

```cpp
void cssrw(unsigned int& rd, unsigned int& csr, unsigned int& rs) {
  unsigned int tmp = rs;
  rd = csr;
  csr = tmp;
}
```
语义上等价的RUST函数如下
```rust
fn cssrw(rd : &usize, csr : &usize, rs : &usize) {
  tmp = rs;
  rd = csr;
  csr = tmp;
}
```

几种有趣的用法如下

```nasm
# csr = rs
cssrw x0, csr, rs

# csr = 0
cssrw x0, csr, x0

# rd = csr, csr = 0
cssrw rd, csr, x0

# swap rd and csr
cssrw rd, csr, rd
```