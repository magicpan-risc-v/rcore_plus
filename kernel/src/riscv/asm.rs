//! Assembly instructions

macro_rules! instruction {
    ($fnname:ident, $asm:expr) => (
        #[inline]
        pub unsafe fn $fnname() {
            match () {
                () => asm!($asm :::: "volatile"),
            }
        }
    )
}


/// Priviledged ISA Instructions
instruction!(wfi, "wfi");

use super::addr::VirtAddr;

#[inline(always)]
pub fn sfence_vma_all() {
    unsafe{ asm!("sfence.vma" :::: "volatile"); }
}

#[inline(always)]
pub fn sfence_vma(asid: usize, addr: VirtAddr) {
    unsafe{ asm!("sfence.vma $0, $1" :: "r"(asid), "r"(addr.as_usize()) :: "volatile"); }
}