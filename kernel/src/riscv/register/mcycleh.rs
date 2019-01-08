//! mcycleh register

/// Reads the CSR
#[inline(always)]
pub fn read() -> usize {
    match () {
        () => {
            let r: usize;
            unsafe {
                asm!("csrrs $0, 0xB80, x0" : "=r"(r) ::: "volatile");
            }
            r
        }
    }
}
