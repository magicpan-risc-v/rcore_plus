//! Memory management module

use core::mem;

use log::*;
use rcore_memory::PAGE_SIZE;
use crate::memory::{FRAME_ALLOCATOR, init_heap, Linear, MemoryAttr, MemorySet};

use super::consts::{KERN_VA_BASE, MEMORY_END, MEMORY_OFFSET};
use super::riscv::{addr::*, register::sstatus};

/// Initialize the memory management module.
pub fn init(dtb: usize) {
    // allow user memory access
    unsafe { sstatus::set_sum(); }
    // initialize kernel heap
    init_heap();
    // initialize frame allocator
    init_frame_allocator();
    // set up page table and enable paging
    super::paging::setup_page_table();
    // remap the kernel use 4K page
    remap_the_kernel(dtb);
}

/// Initialize memory for other cores.
pub fn init_other() {
    unsafe {
        // allow user memory access
        sstatus::set_sum();
        // enable paging
        asm!("csrw satp, $0; sfence.vma" :: "r"(SATP) :: "volatile");
    }
}


/// Init frame allocator, here use a BitAlloc implemented by segment tree.
fn init_frame_allocator() {
    use bit_allocator::BitAlloc;
    use core::ops::Range;

    let mut ba = FRAME_ALLOCATOR.lock();
    let range = to_range((end as usize) - KERN_VA_BASE + PAGE_SIZE, MEMORY_END);
    ba.insert(range);

    /// transform the memory address to the page number
    /// param: start: start address end: end address
    /// retval: the page number range from start address to end address
    fn to_range(start: usize, end: usize) -> Range<usize> {
        let page_start = (start - MEMORY_OFFSET) / PAGE_SIZE;
        let page_end = (end - MEMORY_OFFSET - 1) / PAGE_SIZE + 1;
        assert!(page_start < page_end, "illegal range for frame allocator");
        page_start..page_end
    }
    info!("init frame allocator end");
}

/// Remap the kernel memory address with 4K page recorded in p1 page table
fn remap_the_kernel(dtb: usize) {
    let offset = -(super::consts::KERN_VA_BASE as isize);
    let mut ms = MemorySet::new_bare();
    ms.push(stext as usize, etext as usize, Linear::new(offset, MemoryAttr::default().execute().readonly()), "text");
    ms.push(sdata as usize, edata as usize, Linear::new(offset, MemoryAttr::default()), "data");
    ms.push(srodata as usize, erodata as usize, Linear::new(offset, MemoryAttr::default().readonly()), "rodata");
    ms.push(bootstack as usize, bootstacktop as usize, Linear::new(offset, MemoryAttr::default()), "stack");
    ms.push(sbss as usize, ebss as usize, Linear::new(offset, MemoryAttr::default()), "bss");
    ms.push(dtb, dtb + super::consts::MAX_DTB_SIZE, Linear::new(offset, MemoryAttr::default()), "dts");
    unsafe { ms.activate(); }
    unsafe { SATP = ms.token(); }
    mem::forget(ms);
    info!("remap the kernel end");
}

// First core stores its SATP here.
// Other cores load it later.
static mut SATP: usize = 0;

/// clear bss part of rcore
pub unsafe fn clear_bss() {
    let start = sbss as usize;
    let end = ebss as usize;
    let step = core::mem::size_of::<usize>();
    for i in (start..end).step_by(step) {
        (i as *mut usize).write(0);
    }
}

/// Symbols provided by linker script
#[allow(dead_code)]
extern {
    fn stext();
    fn etext();
    fn sdata();
    fn edata();
    fn srodata();
    fn erodata();
    fn sbss();
    fn ebss();
    fn start();
    fn end();
    fn bootstack();
    fn bootstacktop();
}
