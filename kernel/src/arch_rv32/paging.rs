use super::consts::RECURSIVE_INDEX;
// Depends on kernel
use crate::memory::{active_table, alloc_frame, dealloc_frame};
use super::riscv::addr::*;
use super::riscv::asm::{sfence_vma, sfence_vma_all};
use super::riscv::paging::{Mapper, PageTable as RvPageTable, PageTableEntry, PageTableFlags as EF, RecursivePageTable};
use super::riscv::paging::{FrameAllocator, FrameDeallocator};
use super::riscv::register::satp;
use rcore_memory::paging::*;
use log::*;

use crate::consts::KERNEL_P2_INDEX;

pub struct ActivePageTable(RecursivePageTable<'static>, PageEntry);

/// PageTableEntry: the contents of this entry.
/// Page: this entry is the pte of page `Page`.
pub struct PageEntry(PageTableEntry, Page);

impl PageTable for ActivePageTable {
    /*
    * @param:
    *   addr: the virtual addr to be matched
    *   target: the physical addr to be matched with addr
    * @brief:
    *   map the virtual address 'addr' to the physical address 'target' in pagetable.
    * @retval:
    *   the matched PageEntry
    */
    fn map(&mut self, addr: usize, target: usize) -> &mut Entry {
        // use riscv::paging:Mapper::map_to,
        // map the 4K `page` to the 4K `frame` with `flags`
        let flags = EF::VALID | EF::READABLE | EF::WRITABLE;
        let page = Page::of_addr(VirtAddr::new(addr));
        let frame = Frame::of_addr(PhysAddr::new(target as u32));
        // map the page to the frame using FrameAllocatorForRiscv
        // we may need frame allocator to alloc frame for new page table(first/second)
        self.0.map_to(page, frame, flags, &mut FrameAllocatorForRiscv).unwrap().flush();
        self.get_entry(addr).expect("fail to get entry")
    }

    /*
    * @param:
    *   addr: virtual address of which the mapped physical frame should be unmapped
    * @bridf:
    ^   unmap the virtual addresses' mapped physical frame
    */
    fn unmap(&mut self, addr: usize) {
        let page = Page::of_addr(VirtAddr::new(addr));
        let (_, flush) = self.0.unmap(page).unwrap();
        flush.flush();
    }

    /*
    * @param:
    *   addr: input virtual address
    * @brief:
    *   get the pageEntry of 'addr'
    * @retval:
    *   a mutable PageEntry reference of 'addr'
    */
    fn get_entry(&mut self, vaddr: usize) -> Option<&mut Entry> {
        let p2_table = unsafe { ROOT_PAGE_TABLE.as_mut().unwrap() };
        let page = Page::of_addr(VirtAddr::new(vaddr));
        if !p2_table[page.p2_index()].flags().contains(EF::VALID) {
            return None;
        }
        let entry = edit_entry_of(&page, |entry| *entry);
        self.1 = PageEntry(entry, page);
        Some(&mut self.1)
    }
}

impl PageTableExt for ActivePageTable {}

fn edit_entry_of<T>(page: &Page, f: impl FnOnce(&mut PageTableEntry) -> T) -> T {
    let p2_table = unsafe { ROOT_PAGE_TABLE.as_mut().unwrap() };
    let p1_table = unsafe {
        &mut *(Page::from_page_table_indices(RECURSIVE_INDEX, page.p2_index()).
               start_address().as_usize() as *mut RvPageTable)
    };
    let p2_flags = p2_table[page.p2_index()].flags_mut();

    p2_flags.insert(EF::READABLE | EF::WRITABLE);
    let ret = f(&mut p1_table[page.p1_index()]);
    p2_flags.remove(EF::READABLE | EF::WRITABLE);

    ret
}

// define the ROOT_PAGE_TABLE, and the virtual address of it?
const ROOT_PAGE_TABLE: *mut RvPageTable =
    (((RECURSIVE_INDEX << 10) | (RECURSIVE_INDEX + 1)) << 12) as *mut RvPageTable;

impl ActivePageTable {
    pub unsafe fn new() -> Self {
        ActivePageTable(
            RecursivePageTable::new(&mut *ROOT_PAGE_TABLE).unwrap(),
            ::core::mem::zeroed()
        )
    }
}

/// implementation for the Entry trait in /crate/memory/src/paging/mod.rs
impl Entry for PageEntry {
    fn update(&mut self) {
        edit_entry_of(&self.1, |entry| *entry = self.0);
        sfence_vma(0, self.1.start_address());
    }
    fn accessed(&self) -> bool { self.0.flags().contains(EF::ACCESSED) }
    fn dirty(&self) -> bool { self.0.flags().contains(EF::DIRTY) }
    fn writable(&self) -> bool { self.0.flags().contains(EF::WRITABLE) }
    fn present(&self) -> bool { self.0.flags().contains(EF::VALID | EF::READABLE) }
    fn clear_accessed(&mut self) { self.0.flags_mut().remove(EF::ACCESSED); }
    fn clear_dirty(&mut self) { self.0.flags_mut().remove(EF::DIRTY); }
    fn set_writable(&mut self, value: bool) { self.0.flags_mut().set(EF::WRITABLE, value); }
    fn set_present(&mut self, value: bool) { self.0.flags_mut().set(EF::VALID | EF::READABLE, value); }
    fn target(&self) -> usize { self.0.addr() .as_u32() as usize}
    fn set_target(&mut self, target: usize) {
        let flags = self.0.flags();
        let frame = Frame::of_addr(PhysAddr::new(target as u32));
        self.0.set(frame, flags);
    }
    fn writable_shared(&self) -> bool { self.0.flags().contains(EF::RESERVED1) }
    fn readonly_shared(&self) -> bool { self.0.flags().contains(EF::RESERVED2) }
    fn set_shared(&mut self, writable: bool) {
        let flags = self.0.flags_mut();
        flags.set(EF::RESERVED1, writable);
        flags.set(EF::RESERVED2, !writable);
    }
    fn clear_shared(&mut self) { self.0.flags_mut().remove(EF::RESERVED1 | EF::RESERVED2); }
    fn swapped(&self) -> bool { self.0.flags().contains(EF::RESERVED1) }
    fn set_swapped(&mut self, value: bool) { self.0.flags_mut().set(EF::RESERVED1, value); }
    fn user(&self) -> bool { self.0.flags().contains(EF::USER) }
    fn set_user(&mut self, value: bool) { self.0.flags_mut().set(EF::USER, value); }
    fn execute(&self) -> bool { self.0.flags().contains(EF::EXECUTABLE) }
    fn set_execute(&mut self, value: bool) { self.0.flags_mut().set(EF::EXECUTABLE, value); }
    fn mmio(&self) -> u8 { 0 }
    fn set_mmio(&mut self, _value: u8) { }
}

#[derive(Debug)]
pub struct InactivePageTable0 {
    root_frame: Frame,
}

impl InactivePageTable for InactivePageTable0 {
    type Active = ActivePageTable;

    fn new_bare() -> Self {
        let target = alloc_frame().expect("failed to allocate frame");
        let frame = Frame::of_addr(PhysAddr::new(target as u32));
        active_table().with_temporary_map(target, |_, table: &mut RvPageTable| {
            table.zero();
            table.set_recursive(RECURSIVE_INDEX, frame.clone());
        });
        InactivePageTable0 { root_frame: frame }
    }

    /*
    * @brief:
    *   map the kernel code memory address (p2 page table) in the new inactive page table according the current active page table
    */
    fn map_kernel(&mut self) {
        let table = unsafe { &mut *ROOT_PAGE_TABLE };
        extern {
            fn start();
            fn end();
        }
        let mut entrys: [PageTableEntry; 16] = unsafe { core::mem::uninitialized() };
        let entry_start = start as usize >> 22;
        let entry_end = (end as usize >> 22) + 1;
        let entry_count = entry_end - entry_start;
        for i in 0..entry_count {
            entrys[i] = table[entry_start + i];
        }

        self.edit(|_| {
            // NOTE: 'table' now refers to new page table
            for i in 0..entry_count {
                table[entry_start + i] = entrys[i];
            }
        });
    }

    fn token(&self) -> usize {
        self.root_frame.number() | (1 << 31) // as satp
    }

    unsafe fn set_token(token: usize) {
        asm!("csrw satp, $0" :: "r"(token) :: "volatile");
    }

    fn active_token() -> usize {
        satp::read().bits()
    }

    fn flush_tlb() {
        sfence_vma_all();
    }

    /*
    * @param:
    *   f: a function to do something with the temporary modified activate page table
    * @brief:
    *   temporarily make current `active_table`'s recursive entry point to
    *    `this` inactive table, so we can modify this inactive page table.
    */
    fn edit<T>(&mut self, f: impl FnOnce(&mut Self::Active) -> T) -> T {
        let target = satp::read().frame().start_address().as_u32() as usize;
        active_table().with_temporary_map(target, |active_table, root_table: &mut RvPageTable| {
            let backup = root_table[RECURSIVE_INDEX].clone();

            // overwrite recursive mapping
            root_table[RECURSIVE_INDEX].set(self.root_frame.clone(), EF::VALID);
            sfence_vma_all();

            // execute f in the new context
            let ret = f(active_table);

            // restore recursive mapping to original p2 table
            root_table[RECURSIVE_INDEX] = backup;
            sfence_vma_all();

            ret
        })
    }
}

impl Drop for InactivePageTable0 {
    fn drop(&mut self) {
        dealloc_frame(self.root_frame.start_address().as_u32() as usize);
    }
}

struct FrameAllocatorForRiscv;

impl FrameAllocator for FrameAllocatorForRiscv {
    fn alloc(&mut self) -> Option<Frame> {
        alloc_frame().map(|addr| Frame::of_addr(PhysAddr::new(addr as u32) ))
    }
}

impl FrameDeallocator for FrameAllocatorForRiscv {
    fn dealloc(&mut self, frame: Frame) {
        dealloc_frame(frame.start_address().as_u32()as usize);
    }
}

/// setup page table in the frame, need 1 page
/// param: Frame: page table root frame
pub fn setup_page_table(frame: Frame) {
    let p2 = unsafe { &mut *(frame.start_address().as_u32() as *mut RvPageTable) };
    p2.zero();
    p2.set_recursive(RECURSIVE_INDEX, frame.clone());

    // Set kernel identity map
    // 0x10000000 ~ 1K area
    p2.map_identity(0x40, EF::VALID | EF::READABLE | EF::WRITABLE);
    // 0x80000000 ~ 12M area
    p2.map_identity(KERNEL_P2_INDEX, EF::VALID | EF::READABLE | EF::WRITABLE | EF::EXECUTABLE);
    p2.map_identity(KERNEL_P2_INDEX + 1, EF::VALID | EF::READABLE | EF::WRITABLE | EF::EXECUTABLE);
    p2.map_identity(KERNEL_P2_INDEX + 2, EF::VALID | EF::READABLE | EF::WRITABLE | EF::EXECUTABLE);

    use super::riscv::register::satp;
    unsafe { satp::set(satp::Mode::Sv32, 0, frame); }
    sfence_vma_all();
    info!("setup init page table end");
}