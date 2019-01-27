#[inline(always)]
pub unsafe fn disable_and_store() -> usize {
    let sstatus: usize;
    asm!("csrci sstatus, 1 << 1" : "=r"(sstatus) ::: "volatile");
    sstatus & (1 << 1)
}

#[inline(always)]
pub unsafe fn restore(flags: usize) {
    asm!("csrs sstatus, $0" :: "r"(flags) :: "volatile");
}
