# lab6: 调度算法
**NOTE: 删除 scheduler 的 stride, 或者要求同学实现 CFS / O(1) 调度器**

## 实验目的
* 理解操作系统的调度机制
* 熟悉 rcore 的调度框架
* 实现新的调度算法

## 实验内容
lab5 完成后, 我们可以在 rcore 上运行多个用户线程了.
但不同线程有不同的优先级等需求, 这就导致我们需要实现响应的 *调度算法* 来支持.

在本实验中, 你需要通过阅读实验指导书和 rcore 代码, 理解调度的概念.
之后参考已有的 round-robin 调度算法, 实现 stride/cfs/O(1) 调度算法.

## 练习

### 练习 0
* 移植已有结果

### 练习 1
*无需编码*

阅读实验指导书及参考书目, 理解操作系统调度的概念, 并在报告中回答如下问题
1. ...
2. ...

### 练习 2
*需要编码*

参考 rcore 中的 round-robin 调度器, 实现 stride/cfs/O(1) 调度算法. 并且你需要在报告中回答如下问题
1. ...
2. ...

## 框架变化
变化的文件主要有
| 增改删 | crate: 文件 | 变化 |
| --- | --- | --- |
| + | ucore-process: scheduler.rs | 实现调度器接口 |
| ... | ... | ... |

## 相关知识
### 进程被调度算法控制的一生
**NOTE: 说明进程生命周期的 *状态* 变化, 以及调度算法和上层框架是如何驱动这些变化的**

调度器被执行的过程如: 系统启动后
1. `Processor: :run()` 不断循环, 每次调用 `ProcessorManager: :run(cpuid)` 调度一个进程运行.
2. `ProcessorManager: :run(cpuid)` 中, 调用 `Scheduler` 的相关函数来寻找一个可执行的进程.

**TODO**

### 抢占调度和 rcore 内核
**抢占调度的概念, rcore 内核是否是抢占调度的, rcore 内核的调度点**

**TODO**

### 调度算法的接口
进程管理中, 调度算法是和底层架构无关, 所以它在 ucore-memory crate 中.
每个调度算法都需要实现 Scheduler trait, 其中包含一个调度器需要实现的一些函数.
```rust
pub trait Scheduler {
    fn insert(&mut self, pid: Pid);
    fn remove(&mut self, pid: Pid);
    fn select(&mut self) -> Option<Pid>;
    fn tick(&mut self, current: Pid) -> bool;
    fn set_priority(&mut self, pid: Pid, priority: u8);
}
```
其中每个函数的含义可具体参见注释.

已有的 round-robin 的实现是在模块 `scheduler: :rr` 中, 实现了 `RRScheduler` 结构体, 并且让 `RRScheduler` 实现了 `Scheduler` 接口.
```rust
mod rr {
    use super: :*;
    pub struct RRScheduler { /* ... */ }
    impl Scheduler for RRScheduler {
      /* ... */
    }
}
```

为了加入新的调度算法, 比较清楚的方式是模仿 round-robin 算法, 在单独的模块中加入 `Scheduler` 的实现. 之后需要将内核中使用的调度算法从 round-robin 切换成你的实现, 你自己应当判断这需要改哪些代码.

### round-robin 调度算法的原理
**TODO**
直接用之前的即可.

### stride/cfs/O(1) 调度算法的原理
**TODO**
直接用之前的即可.

## 实验报告要求
**TODO**

