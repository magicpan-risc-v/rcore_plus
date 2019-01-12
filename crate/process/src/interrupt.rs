#[inline(always)]
pub unsafe fn disable_and_store() -> usize {
    if env!("M_MODE") == "1" {
        let mstatus: usize;
        asm!("csrci mstatus, 1 << 3" : "=r"(mstatus) ::: "volatile");
        mstatus & (1 << 3)
    } else {
        let sstatus: usize;
        asm!("csrci sstatus, 1 << 1" : "=r"(sstatus) ::: "volatile");
        sstatus & (1 << 1)
    }
}

#[inline(always)]
pub unsafe fn restore(flags: usize) {
    if env!("M_MODE") == "1" {
        asm!("csrs mstatus, $0" :: "r"(flags) :: "volatile");
    } else {
        asm!("csrs sstatus, $0" :: "r"(flags) :: "volatile");
    }
}
