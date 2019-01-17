use super::riscv::register::*;
use super::sbi;
use log::*;

/// get timer cycle for 32 bit cpu
pub fn get_cycle() -> u64 {
    loop {
        let hi = timeh::read();
        let lo = time::read();
        let tmp = timeh::read();
        if hi == tmp {
            return ((hi as u64) << 32) | (lo as u64);
        }
    }
}

/// enable supervisor timer interrupt and set next timer interrupt
pub fn init() {
    // Enable supervisor timer interrupt
    unsafe { sie::set_stimer(); }
    // set the next timer interrupt
    set_next();
    info!("timer: init end");
}

/// set the next timer interrupt
pub fn set_next() {
    // 100Hz @ QEMU
    let timebase = 250000;
    sbi::set_timer(get_cycle() + timebase);
}
