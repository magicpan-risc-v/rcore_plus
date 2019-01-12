//! sip register

/// sip register
#[derive(Clone, Copy, Debug)]
pub struct Sip {
    bits: usize,
}

read_csr_as!(Sip, 0x144);
