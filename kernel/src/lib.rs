#![feature(lang_items)]
#![feature(alloc)]
#![feature(naked_functions)]
#![feature(untagged_unions)]
#![feature(asm)]
#![feature(optin_builtin_traits)]
#![feature(panic_info_message)]
#![feature(global_asm)]
#![feature(const_fn)]
#![no_std]

#[macro_use]
extern crate bitflags;

extern crate alloc;

extern crate bare_metal;

pub use crate::process::{processor, new_kernel_context};
use rcore_process::thread;
use linked_list_allocator::LockedHeap;

#[macro_use]    // print!
mod logging;
mod memory;
mod lang;
mod util;
mod consts;
mod process;
mod syscall;
mod fs;
mod sync;
mod trap;
mod shell;

#[path = "arch_rv32/mod.rs"]
pub mod arch;

pub fn kmain() -> ! {
    processor().run();
}

/// Global heap allocator
///
/// Available after `memory::init()`.
///
/// It should be defined in memory mod, but in Rust `global_allocator` must be in root mod.
#[global_allocator]
static HEAP_ALLOCATOR: LockedHeap = LockedHeap::empty();
