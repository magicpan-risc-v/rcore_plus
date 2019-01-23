use super::riscv::register::*;
pub use self::context::*;
use log::*;
use super::drivers::DRIVERS;

#[path = "context.rs"]
mod context;

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

/// enable interrupt
#[inline(always)]
pub unsafe fn enable() {
    sstatus::set_sie();
}

/*
* @brief:
*   store and disable interrupt
* @retval:
*   a usize value store the origin sie
*/
#[inline(always)]
pub unsafe fn disable_and_store() -> usize {
    let e = sstatus::read().sie() as usize;
    sstatus::clear_sie();
    e
}

/// enable interrupt if flags != 0
/// param: flags: input flag
#[inline(always)]
pub unsafe fn restore(flags: usize) {
    if flags != 0 {
        sstatus::set_sie();
    }
}

/// process the Interrupt/Exception/Trap
/// param: TrapFrame: the trapFrame of the Interrupt/Exception/Trap
#[no_mangle]
pub extern fn rust_trap(tf: &mut TrapFrame) {
    use self::scause::{Trap, Interrupt as I, Exception as E};
    trace!("Interrupt @ CPU{}: {:?} ", super::cpu::id(), tf.scause.cause());
    match tf.scause.cause() {
        Trap::Interrupt(I::SupervisorExternal) => external(),
        Trap::Interrupt(I::SupervisorSoft) => ipi(),
        Trap::Interrupt(I::SupervisorTimer) => timer(),
        Trap::Exception(E::UserEnvCall) => syscall(tf),
        Trap::Exception(E::LoadPageFault) => page_fault(tf),
        Trap::Exception(E::StorePageFault) => page_fault(tf),
        Trap::Exception(E::InstructionPageFault) => page_fault(tf),
        _ => crate::trap::error(tf),
    }
    trace!("Interrupt end");
}

fn external() {
    // true means handled, false otherwise
    let handlers = [try_process_serial, try_process_drivers];
    for handler in handlers.iter() {
        if handler() == true {
            break
        }
    }
}

fn try_process_serial() -> bool {
    match super::io::getchar_option() {
        Some(ch) => {
            crate::trap::serial(ch);
            true
        }
        None => false
    }
}

fn try_process_drivers() -> bool {
    let mut drivers = DRIVERS.lock();
    for driver in drivers.iter_mut() {
        if driver.try_handle_interrupt() == true {
            return true
        }
    }
    return false
}

fn ipi() {
    super::sbi::clear_ipi();
}

/// process timer interrupt
fn timer() {
    super::timer::set_next();
    crate::trap::timer();
}

/// process syscall
/// param: TrapFrame: the Trapframe for the syscall
fn syscall(tf: &mut TrapFrame) {
    tf.sepc += 4;   // Must before syscall, because of fork.
    let ret = crate::syscall::syscall(tf.x[10], [tf.x[11], tf.x[12], tf.x[13], tf.x[14], tf.x[15], tf.x[16]], tf);
    tf.x[10] = ret as usize;
}

/// process page fault exception
/// param: TrapFrame: the Trapframe for the page fault exception
fn page_fault(tf: &mut TrapFrame) {
    let addr = tf.stval;
    trace!("\nEXCEPTION: Page Fault @ {:#x}", addr);

    if !crate::memory::page_fault_handler(addr) {
        crate::trap::error(tf);
    }
}
