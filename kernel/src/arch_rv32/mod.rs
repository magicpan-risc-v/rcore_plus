pub mod io;
pub mod interrupt;
pub mod timer;
pub mod paging;
pub mod memory;
pub mod consts;
pub mod cpu;
mod sbi;
mod riscv;

use super::drivers;

/// rcore初始化总控函数
#[no_mangle]
pub extern fn rust_main(hartid: usize, dtb: usize, hart_mask: usize, functions: usize) -> ! {
    unsafe { cpu::set_cpu_id(hartid); }

    if hartid != 0 {
        while unsafe { !cpu::has_started(hartid) }  { }
        println!("Hello RISCV! in hart {}, dtb @ {:#x}, functions @ {:#x}", hartid, dtb, functions);
        others_main();
    }

    unsafe { memory::clear_bss(); }

    println!("Hello RISCV! in hart {}, dtb @ {:#x}, functions @ {:#x}", hartid, dtb, functions);

    crate::logging::init();
    interrupt::init();
    memory::init(dtb);
    timer::init();
    crate::process::init();
    drivers::init(dtb);

    unsafe { cpu::start_others(hart_mask); }
    crate::kmain();
}

/// 启动其他处理器
fn others_main() -> ! {
    interrupt::init();
    memory::init_other();
    timer::init();
    crate::kmain();
}

global_asm!(include_str!("boot/entry.asm"));
global_asm!(include_str!("boot/trap.asm"));
