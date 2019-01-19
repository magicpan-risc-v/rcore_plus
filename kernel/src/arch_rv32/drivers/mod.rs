pub mod virtio_net;

use lazy_static::lazy_static;
use alloc::prelude::*;
use crate::sync::SpinNoIrqLock;

pub trait Driver : Send {
    fn try_handle_interrupt(&self) -> bool;
}

lazy_static! {
    pub static ref DRIVERS: SpinNoIrqLock<Vec<Box<Driver>>> = SpinNoIrqLock::new(Vec::new());
}