//! Page table implementations for aarch64.

use crate::memory::{alloc_frame, dealloc_frame, phys_to_virt};
use aarch64::asm::{tlb_invalidate, tlb_invalidate_all, ttbr_el1_read, ttbr_el1_write};
use aarch64::paging::{
    frame::PhysFrame as Frame,
    mapper::{MappedPageTable, Mapper},
    memory_attribute::*,
    page_table::{PageTable as Aarch64PageTable, PageTableEntry, PageTableFlags as EF},
    FrameAllocator, FrameDeallocator, Page as PageAllSizes, Size4KiB,
};
use aarch64::{PhysAddr, VirtAddr};
use log::*;
use rcore_memory::paging::*;

type Page = PageAllSizes<Size4KiB>;

pub struct PageTableImpl {
    page_table: MappedPageTable<'static, fn(Frame) -> *mut Aarch64PageTable>,
    root_frame: Frame,
    entry: PageEntry,
}

pub struct PageEntry(&'static mut PageTableEntry, Page);

impl PageTable for PageTableImpl {
    fn map(&mut self, addr: usize, target: usize) -> &mut Entry {
        let flags = EF::default();
        let attr = MairNormal::attr_value();
        unsafe {
            self.page_table
                .map_to(
                    Page::of_addr(addr as u64),
                    Frame::of_addr(target as u64),
                    flags,
                    attr,
                    &mut FrameAllocatorForAarch64,
                )
                .unwrap()
                .flush();
        }
        self.get_entry(addr).expect("fail to get entry")
    }

    fn unmap(&mut self, addr: usize) {
        self.page_table
            .unmap(Page::of_addr(addr as u64))
            .unwrap()
            .1
            .flush();
    }

    fn get_entry(&mut self, vaddr: usize) -> Option<&mut Entry> {
        let page = Page::of_addr(vaddr as u64);
        if let Ok(e) = self.page_table.get_entry_mut(page) {
            let e = unsafe { &mut *(e as *mut PageTableEntry) };
            self.entry = PageEntry(e, page);
            Some(&mut self.entry as &mut Entry)
        } else {
            None
        }
    }

    fn get_page_slice_mut<'a>(&mut self, addr: usize) -> &'a mut [u8] {
        let frame = self
            .page_table
            .translate_page(Page::of_addr(addr as u64))
            .unwrap();
        let vaddr = phys_to_virt(frame.start_address().as_u64() as usize);
        unsafe { core::slice::from_raw_parts_mut(vaddr as *mut u8, 0x1000) }
    }
}

fn frame_to_page_table(frame: Frame) -> *mut Aarch64PageTable {
    let vaddr = phys_to_virt(frame.start_address().as_u64() as usize);
    vaddr as *mut Aarch64PageTable
}

#[repr(u8)]
pub enum MMIOType {
    Normal = 0,
    Device = 1,
    NormalNonCacheable = 2,
    Unsupported = 3,
}

impl Entry for PageEntry {
    fn update(&mut self) {
        tlb_invalidate(self.1.start_address());
    }

    fn present(&self) -> bool {
        self.0.flags().contains(EF::VALID)
    }
    fn accessed(&self) -> bool {
        self.0.flags().contains(EF::AF)
    }
    fn writable(&self) -> bool {
        self.0.flags().contains(EF::WRITE)
    }
    fn dirty(&self) -> bool {
        self.hw_dirty() && self.sw_dirty()
    }

    fn clear_accessed(&mut self) {
        self.as_flags().remove(EF::AF);
    }
    fn clear_dirty(&mut self) {
        self.as_flags().remove(EF::DIRTY);
        self.as_flags().insert(EF::AP_RO);
    }
    fn set_writable(&mut self, value: bool) {
        self.as_flags().set(EF::AP_RO, !value);
        self.as_flags().set(EF::WRITE, value);
    }
    fn set_present(&mut self, value: bool) {
        self.as_flags().set(EF::VALID, value);
    }
    fn target(&self) -> usize {
        self.0.addr().as_u64() as usize
    }
    fn set_target(&mut self, target: usize) {
        self.0
            .set_addr(PhysAddr::new(target as u64), self.0.flags(), self.0.attr());
    }
    fn writable_shared(&self) -> bool {
        self.0.flags().contains(EF::WRITABLE_SHARED)
    }
    fn readonly_shared(&self) -> bool {
        self.0.flags().contains(EF::READONLY_SHARED)
    }
    fn set_shared(&mut self, writable: bool) {
        let flags = self.as_flags();
        flags.set(EF::WRITABLE_SHARED, writable);
        flags.set(EF::READONLY_SHARED, !writable);
    }
    fn clear_shared(&mut self) {
        self.as_flags()
            .remove(EF::WRITABLE_SHARED | EF::READONLY_SHARED);
    }
    fn user(&self) -> bool {
        self.0.flags().contains(EF::AP_EL0)
    }
    fn swapped(&self) -> bool {
        self.0.flags().contains(EF::SWAPPED)
    }
    fn set_swapped(&mut self, value: bool) {
        self.as_flags().set(EF::SWAPPED, value);
    }
    fn set_user(&mut self, value: bool) {
        self.as_flags().set(EF::AP_EL0, value);
        self.as_flags().set(EF::nG, value); // set non-global to use ASID
    }
    fn execute(&self) -> bool {
        if self.user() {
            !self.0.flags().contains(EF::UXN)
        } else {
            !self.0.flags().contains(EF::PXN)
        }
    }
    fn set_execute(&mut self, value: bool) {
        if self.user() {
            self.as_flags().set(EF::UXN, !value)
        } else {
            self.as_flags().set(EF::PXN, !value)
        }
    }
    fn mmio(&self) -> u8 {
        let value = self.0.attr().value;
        if value == MairNormal::attr_value().value {
            0
        } else if value == MairDevice::attr_value().value {
            1
        } else if value == MairNormalNonCacheable::attr_value().value {
            2
        } else {
            3
        }
    }
    fn set_mmio(&mut self, value: u8) {
        let attr = match value {
            0 => MairNormal::attr_value(),
            1 => MairDevice::attr_value(),
            2 => MairNormalNonCacheable::attr_value(),
            _ => return,
        };
        self.0.set_attr(attr);
    }
}

impl PageEntry {
    fn read_only(&self) -> bool {
        self.0.flags().contains(EF::AP_RO)
    }
    fn hw_dirty(&self) -> bool {
        self.writable() && !self.read_only()
    }
    fn sw_dirty(&self) -> bool {
        self.0.flags().contains(EF::DIRTY)
    }
    fn as_flags(&mut self) -> &mut EF {
        unsafe { &mut *(self.0 as *mut _ as *mut EF) }
    }
}

impl PageTableImpl {
    /// Unsafely get the current active page table.
    /// WARN: You MUST call `core::mem::forget` for it after use!
    pub unsafe fn active() -> Self {
        let frame = Frame::of_addr(PageTableImpl::active_token() as u64);
        let table = &mut *frame_to_page_table(frame);
        PageTableImpl {
            page_table: MappedPageTable::new(table, frame_to_page_table),
            root_frame: frame,
            entry: core::mem::MaybeUninit::uninitialized().into_initialized(),
        }
    }
}

impl PageTableExt for PageTableImpl {
    fn new_bare() -> Self {
        let target = alloc_frame().expect("failed to allocate frame");
        let frame = Frame::of_addr(target as u64);
        let table = unsafe { &mut *frame_to_page_table(frame) };
        table.zero();
        unsafe {
            PageTableImpl {
                page_table: MappedPageTable::new(table, frame_to_page_table),
                root_frame: frame,
                entry: core::mem::MaybeUninit::uninitialized().into_initialized(),
            }
        }
    }

    fn map_kernel(&mut self) {
        // kernel page table is based on TTBR1_EL1 and will nerver change.
    }

    fn token(&self) -> usize {
        self.root_frame.start_address().as_u64() as usize // as TTBR0_EL1
    }

    unsafe fn set_token(token: usize) {
        ttbr_el1_write(0, Frame::containing_address(PhysAddr::new(token as u64)));
    }

    fn active_token() -> usize {
        ttbr_el1_read(0).start_address().as_u64() as usize
    }

    fn flush_tlb() {
        tlb_invalidate_all();
    }
}

impl Drop for PageTableImpl {
    fn drop(&mut self) {
        info!("PageTable dropping: {:?}", self.root_frame);
        dealloc_frame(self.root_frame.start_address().as_u64() as usize);
    }
}

struct FrameAllocatorForAarch64;

unsafe impl FrameAllocator<Size4KiB> for FrameAllocatorForAarch64 {
    fn allocate_frame(&mut self) -> Option<Frame> {
        alloc_frame().map(|addr| Frame::of_addr(addr as u64))
    }
}

impl FrameDeallocator<Size4KiB> for FrameAllocatorForAarch64 {
    fn deallocate_frame(&mut self, frame: Frame) {
        dealloc_frame(frame.start_address().as_u64() as usize);
    }
}
