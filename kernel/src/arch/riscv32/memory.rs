use crate::consts::{KERNEL_OFFSET, MEMORY_END, MEMORY_OFFSET, PHYSICAL_MEMORY_OFFSET};
use crate::memory::{init_heap, Linear, MemoryAttr, MemorySet, FRAME_ALLOCATOR};
use core::mem;
use log::*;
use rcore_memory::PAGE_SIZE;
use riscv::register::satp;
use riscv::{addr::*, register::sstatus};

/// Initialize the memory management module
pub fn init(dtb: usize) {
    // allow user memory access
    // NOTE: In K210 priv v1.9.1, sstatus.SUM is PUM which has opposite meaning!
    #[cfg(not(feature = "board_k210"))]
    unsafe {
        sstatus::set_sum();
    }
    // initialize heap and Frame allocator
    info!("init frame allocator");
    init_frame_allocator();
    info!("init heap");
    init_heap();
    //info!("remap kernel");
    remap_the_kernel(dtb);
}

pub fn init_other() {
    unsafe {
        sstatus::set_sum(); // Allow user memory access
        asm!("csrw satp, $0; sfence.vma" :: "r"(SATP) :: "volatile");
    }
}

fn init_frame_allocator() {
    use bitmap_allocator::BitAlloc;
    use core::ops::Range;

    let mut ba = FRAME_ALLOCATOR.lock();
    let range = to_range(
        (end as usize) - KERNEL_OFFSET + MEMORY_OFFSET + PAGE_SIZE,
        MEMORY_END,
    );
    ba.insert(range);

    info!("frame allocator: init end");

    /// Transform memory area `[start, end)` to integer range for `FrameAllocator`
    fn to_range(start: usize, end: usize) -> Range<usize> {
        warn!("page_start ");
        let page_start = (start - MEMORY_OFFSET) / PAGE_SIZE;
        let page_end = (end - MEMORY_OFFSET - 1) / PAGE_SIZE + 1;
        warn!("page_start : {:#x}, page_end : {:#x}", page_start, page_end);
        assert!(page_start < page_end, "illegal range for frame allocator");
        page_start..page_end
    }
}

/// Remap the kernel memory address with 4K page recorded in p1 page table
fn remap_the_kernel(_dtb: usize) {
    let mut ms = MemorySet::new();
    info!("remap kernel middle");
    unsafe {
        ms.activate();
    }
    unsafe {
        SATP = ms.token();
    }
    mem::forget(ms);
    info!("remap kernel end");
}

// First core stores its SATP here.
// Other cores load it later.
static mut SATP: usize = 0;

pub unsafe fn clear_bss() {
    let start = sbss as usize;
    let end = ebss as usize;
    println!("bss_start : {:#x}, bss_end : {:#x}", start, end);
    let step = core::mem::size_of::<usize>();
    println!("step : {:#x}", step);
    for i in (start..end).step_by(step) {
        (i as *mut usize).write(0);
    }
    println!("bss_start : {:#x}, bss_end : {:#x}", start, end);
}

// Symbols provided by linker script
#[allow(dead_code)]
extern "C" {
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
