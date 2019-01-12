//! stvec register

/// stvec register
#[derive(Clone, Copy, Debug)]
pub struct Stvec {
    bits: usize,
}

/// Trap mode
pub enum TrapMode {
    Direct = 0,
    Vectored = 1,
}

read_csr_as!(Stvec, 0x105);
write_csr!(0x105);

/// Writes the CSR
#[cfg_attr(not(target_arch = "riscv"), allow(unused_variables))]
#[inline(always)]
pub unsafe fn write(addr: usize, mode: TrapMode) {
    _write(addr + mode as usize);
}
