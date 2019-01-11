//! satp register

use super::super::addr::*;
use bit_field::BitField;

/// satp register
#[derive(Clone, Copy, Debug)]
pub struct Satp {
    bits: usize,
}

impl Satp {
    /// Returns the contents of the register as raw bits
    #[inline(always)]
    pub fn bits(&self) -> usize {
        self.bits
    }

    /// Current address-translation scheme
    #[inline(always)]
    pub fn mode(&self) -> Mode {
        match self.bits.get_bit(31) {
            false => Mode::Bare,
            true => Mode::Sv32,
        }
    }

    /// Address space identifier
    #[inline(always)]
    pub fn asid(&self) -> usize {
        self.bits.get_bits(22..31)
    }

    /// Physical page number
    #[inline(always)]
    pub fn ppn(&self) -> usize {
        self.bits.get_bits(0..22)
    }

    /// Physical frame
    #[inline(always)]
    pub fn frame(&self) -> Frame {
        Frame::of_addr(PhysAddr::new((self.ppn() as u32) << 12))
    }
}

pub enum Mode {
    Bare = 0, Sv32 = 1,
}

read_csr_as!(Satp, 0x180);
write_csr!(0x180);

#[inline(always)]
pub unsafe fn set(mode: Mode, asid: usize, frame: Frame) {
    let mut bits = 0usize;
    bits.set_bits(31..32, mode as usize);
    bits.set_bits(22..31, asid);
    bits.set_bits(0..22, frame.number());
    _write(bits);
}