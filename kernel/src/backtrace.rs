use core::mem::size_of;
use log::*;

extern "C" {
    fn stext();
    fn etext();
}

/// Returns the current frame pointer.
#[inline(always)]
pub fn fp() -> usize {
    let ptr: usize;
    unsafe {
        asm!("mv $0, s0" : "=r"(ptr));
    }

    ptr
}

/// Returns the current link register.
#[inline(always)]
pub fn ra() -> usize {
    let ptr: usize;
    unsafe {
        asm!("mv $0, ra" : "=r"(ptr));
    }

    ptr
}

// Print the backtrace starting from the caller
pub fn backtrace() {
    unsafe {
        let mut current_pc = ra();
        let mut current_fp = fp();
        let mut stack_num = 0;
        while current_pc >= stext as usize && current_pc <= etext as usize && current_fp as usize != 0 {
            error!("#{} {:#018X} fp {:#018X}", stack_num, current_pc - size_of::<usize>(), current_fp);
            stack_num = stack_num + 1;
            current_fp = *(current_fp as *const usize).offset(-2);
            current_pc = *(current_fp as *const usize).offset(-1);
        }
    }
}