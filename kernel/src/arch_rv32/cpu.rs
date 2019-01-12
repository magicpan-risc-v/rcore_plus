use crate::consts::MAX_CPU_NUM;
use core::ptr::{read_volatile, write_volatile};

static mut STARTED: [bool; MAX_CPU_NUM] = [false; MAX_CPU_NUM];

/// 设置线程指针
/// tp --> Thread Pointer, x4, 线程指针
pub unsafe fn set_cpu_id(cpu_id: usize) {
    asm!("mv tp, $0" : : "r"(cpu_id));
}

/// 获取线程指针
pub fn id() -> usize {
    let cpu_id;
    unsafe { asm!("mv $0, tp" : "=r"(cpu_id)); }
    cpu_id
}

/// 发送处理器间中断
pub fn send_ipi(cpu_id: usize) {
    super::sbi::send_ipi((1 << cpu_id) as *const usize);
}

/// 判断处理器 id是否已经启动
pub unsafe fn has_started(cpu_id: usize) -> bool {
    read_volatile(&STARTED[cpu_id])
}

/// 启动其它处理器
pub unsafe fn start_others(hart_mask: usize) {
    for cpu_id in 0..MAX_CPU_NUM {
        if (hart_mask >> cpu_id) & 1 != 0 {
            write_volatile(&mut STARTED[cpu_id], true);
        }
    }
}

/// 通知处理器目前没有任何有用的工作
pub fn halt() {
    unsafe { super::riscv::asm::wfi() }
}