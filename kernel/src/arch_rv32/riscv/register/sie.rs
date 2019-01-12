//! sie register

/// sie register
#[derive(Clone, Copy, Debug)]
pub struct Sie {
    bits: usize,
}

read_csr_as!(Sie, 0x104);
set!(0x104);
clear!(0x104);

/// User Software Interrupt Enable
set_clear_csr!(set_usoft, clear_usoft, 1 << 0);
/// Supervisor Software Interrupt Enable
set_clear_csr!(set_ssoft, clear_ssoft, 1 << 1);
/// User Timer Interrupt Enable
set_clear_csr!(set_utimer, clear_utimer, 1 << 4);
/// Supervisor Timer Interrupt Enable
set_clear_csr!(set_stimer, clear_stimer, 1 << 5);
/// User External Interrupt Enable
set_clear_csr!(set_uext, clear_uext, 1 << 8);
/// Supervisor External Interrupt Enable
set_clear_csr!(set_sext, clear_sext, 1 << 9);
