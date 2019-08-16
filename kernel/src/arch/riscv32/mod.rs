#[cfg(feature = "board_u540")]
#[path = "board/u540/mod.rs"]
pub mod board;
#[cfg(feature = "board_rocket_chip")]
#[path = "board/rocket_chip/mod.rs"]
pub mod board;
#[cfg(not(any(feature = "board_u540", feature = "board_rocket_chip")))]
#[path = "board/virt/mod.rs"]
pub mod board;

pub mod compiler_rt;
pub mod consts;
pub mod cpu;
pub mod interrupt;
pub mod io;
pub mod memory;
pub mod paging;
pub mod rand;
mod sbi;
pub mod syscall;
pub mod timer;

use crate::memory::phys_to_virt;
use core::sync::atomic::{AtomicBool, Ordering};
use log::*;

#[no_mangle]
pub extern "C" fn rust_main(hartid: usize, device_tree_paddr: usize) -> ! {

    //unsafe {
        //cpu::set_cpu_id(hartid);
    //}

    //unsafe {
        //memory::clear_bss();
    //}

    crate::logging::init();
    println!("loggin init finish {:#x}", 1);
    info!("hello world");
    warn!("hello world");
    error!("hello world");

    interrupt::init();

    info!("hello world 1");
    
    memory::init(0);

    info!("hello world 2");
    
    timer::init();

    //crate::process::init();

    //AP_CAN_INIT.store(true, Ordering::Relaxed);
    //crate::kmain();

     loop{}
}

fn others_main() -> ! {
    interrupt::init();
    memory::init_other();
    timer::init();
    crate::kmain();
}

static AP_CAN_INIT: AtomicBool = AtomicBool::new(false);

#[cfg(not(feature = "board_u540"))]
const BOOT_HART_ID: usize = 0;
#[cfg(feature = "board_u540")]
const BOOT_HART_ID: usize = 1;

/// Constant & Macro for `trap.asm`
#[cfg(target_arch = "riscv32")]
global_asm!(
    r"
    .equ XLENB,     4
    .equ XLENb,     32
    .macro LOAD a1, a2
        lw \a1, \a2*XLENB(sp)
    .endm
    .macro STORE a1, a2
        sw \a1, \a2*XLENB(sp)
    .endm
"
);
#[cfg(target_arch = "riscv64")]
global_asm!(
    r"
    .equ XLENB,     8
    .equ XLENb,     64
    .macro LOAD a1, a2
        ld \a1, \a2*XLENB(sp)
    .endm
    .macro STORE a1, a2
        sd \a1, \a2*XLENB(sp)
    .endm
"
);
#[cfg(target_arch = "riscv32")]
global_asm!(include_str!("boot/entry32.asm"));
#[cfg(all(target_arch = "riscv64", not(feature = "board_k210")))]
global_asm!(include_str!("boot/entry64.asm"));
#[cfg(feature = "board_k210")]
global_asm!(include_str!("boot/entry_k210.asm"));
global_asm!(include_str!("boot/trap.asm"));
#[cfg(feature = "board_rocket_chip")]
global_asm!(include_str!("boot/dtb.gen.s"));
