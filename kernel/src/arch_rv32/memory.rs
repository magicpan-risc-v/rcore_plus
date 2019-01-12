use core::mem;
use super::riscv::{addr::*, register::sstatus};
use rcore_memory::PAGE_SIZE;
use log::*;
use crate::memory::{FRAME_ALLOCATOR, init_heap, MemoryAttr, MemorySet, Linear};
use super::consts::{MEMORY_OFFSET, MEMORY_END, KERN_VA_BASE};

/*
* @brief:
*   Init the mermory management module, allow memory access and set up page table and init heap and frame allocator
*/
pub fn init() {
    #[repr(align(4096))]  // align the PageData struct to 4096 bytes
    struct PageData([u8; PAGE_SIZE]);
    static PAGE_TABLE_ROOT: PageData = PageData([0; PAGE_SIZE]);

    unsafe { sstatus::set_sum(); }  // Allow user memory access
    let frame = Frame::of_addr(PhysAddr::new(&PAGE_TABLE_ROOT as *const _ as u32));
    super::paging::setup_page_table(frame); // set up page table
    // initialize heap and Frame allocator
    init_frame_allocator();
    info!("init_frame_allocator end");
    init_heap();
    info!("init_heap end");
    // remap the kernel use 4K page
    remap_the_kernel();
    info!("remap_the_kernel end");
}

pub fn init_other() {
    unsafe {
        sstatus::set_sum();         // Allow user memory access
        asm!("csrw 0x180, $0; sfence.vma" :: "r"(SATP) :: "volatile");
    }
}

/*
* @brief:
*   Init frame allocator, here use a BitAlloc implemented by segment tree.
*/
fn init_frame_allocator() {
    use bit_allocator::BitAlloc;
    use core::ops::Range;

    let mut ba = FRAME_ALLOCATOR.lock();
    let range = to_range((end as usize) - KERN_VA_BASE + PAGE_SIZE, MEMORY_END);
    ba.insert(range);

    /*
    * @param:
    *   start: start address
    *   end: end address
    * @brief:
    *   transform the memory address to the page number
    * @retval:
    *   the page number range from start address to end address
    */
    fn to_range(start: usize, end: usize) -> Range<usize> {
        let page_start = (start - MEMORY_OFFSET) / PAGE_SIZE;
        let page_end = (end - MEMORY_OFFSET - 1) / PAGE_SIZE + 1;
        assert!(page_start < page_end, "illegal range for frame allocator");
        page_start..page_end
    }
}

/// Remap the kernel memory address with 4K page recorded in p1 page table
fn remap_the_kernel() {
    let offset = -(super::consts::KERN_VA_BASE as isize);
    let mut ms = MemorySet::new_bare();
    ms.push(stext as usize, etext as usize, Linear::new(offset, MemoryAttr::default().execute().readonly()), "text");
    ms.push(sdata as usize, edata as usize, Linear::new(offset, MemoryAttr::default()), "data");
    ms.push(srodata as usize, erodata as usize, Linear::new(offset, MemoryAttr::default().readonly()), "rodata");
    ms.push(bootstack as usize, bootstacktop as usize, Linear::new(offset, MemoryAttr::default()), "stack");
    ms.push(sbss as usize, ebss as usize, Linear::new(offset, MemoryAttr::default()), "bss");
    unsafe { ms.activate(); }
    unsafe { SATP = ms.token(); }
    mem::forget(ms);
}

// First core stores its SATP here.
// Other cores load it later.
static mut SATP: usize = 0;

pub unsafe fn clear_bss() {
    let start = sbss as usize;
    let end = ebss as usize;
    let step = core::mem::size_of::<usize>();
    for i in (start..end).step_by(step) {
        (i as *mut usize).write(0);
    }
}

// Symbols provided by linker script
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
