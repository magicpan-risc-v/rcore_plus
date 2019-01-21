mod device_tree;
pub mod bus;
mod net;
mod gpu;

use lazy_static::lazy_static;
use alloc::prelude::*;
use crate::sync::SpinNoIrqLock;
use crate::net::{MacAddr, IPv4Addr};

pub enum DeviceType {
    Net,
    Gpu
}

pub trait Driver : Send {
    // if interrupt belongs to this driver, handle it and return true
    // return false otherwise
    fn try_handle_interrupt(&mut self) -> bool;

    // return the correspondent device type, see DeviceType
    fn device_type(&self) -> DeviceType;
}

pub trait NetDriver: Driver {
    // send a packet from this device
    // return true on success, false otherwise
    fn send_packet(&mut self, payload: &[u8]) -> bool;

    // get mac address for this device
    fn get_mac(&self) -> MacAddr;

    // get ipv4 address for this device
    fn get_ipv4(&self) -> IPv4Addr;

    // get interface name for this device
    fn get_ifname(&self) -> String;
}

lazy_static! {
    pub static ref DRIVERS: SpinNoIrqLock<Vec<Box<Driver>>> = SpinNoIrqLock::new(Vec::new());
}

pub fn init(dtb: usize) {
    device_tree::init(dtb);
}