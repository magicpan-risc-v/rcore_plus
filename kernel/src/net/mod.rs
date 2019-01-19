mod arp;
mod ipv4;
mod icmp;

pub mod addr;
pub use self::addr::*;
use crate::drivers::NetDriver;
use core::mem::size_of;
use log::*;

const ETHERTYPE_IPV4 : u16 = 0x0800;
const ETHERTYPE_ARP : u16 = 0x0806;

#[repr(packed)]
#[derive(Debug, Clone)]
struct Ethernet {
    dst_mac: MacAddr,
    src_mac: MacAddr,
    ether_type: u16
}

pub fn handle_packet(driver: &mut NetDriver, data: &[u8]) {
    assert!(data.len() >= size_of::<Ethernet>());
    let header = unsafe { &*(data.as_ptr() as *const Ethernet) };
    if header.dst_mac.is_broadcast() || header.dst_mac == driver.get_mac() {
        let ether_type = u16::from_be(header.ether_type);
        match ether_type {
            ETHERTYPE_IPV4 => {
                ipv4::handle_ipv4(driver, data, size_of::<Ethernet>());
            },
            ETHERTYPE_ARP => {
                arp::handle_arp(driver, data);
            },
            _ => {
                info!("Unrecognized packet type {:#X}", ether_type);
            }
        }
    } else {
        info!("Packet ignored for interface {}", driver.get_ifname());
    }
}