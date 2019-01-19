mod device_tree;
mod bus;
mod net;

use lazy_static::lazy_static;
use alloc::prelude::*;
use crate::sync::SpinNoIrqLock;

pub trait Driver : Send {
    fn try_handle_interrupt(&self) -> bool;
}

lazy_static! {
    pub static ref DRIVERS: SpinNoIrqLock<Vec<Box<Driver>>> = SpinNoIrqLock::new(Vec::new());
}

pub fn init(dtb: usize) {
    device_tree::init(dtb);
}