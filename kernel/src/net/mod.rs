mod arp;
use crate::drivers::NetDriver;
use core::mem::size_of;
use log::*;

const ETHERTYPE_IPV4 : u16 = 0x0800;
const ETHERTYPE_ARP : u16 = 0x0806;

#[repr(packed)]
#[derive(Debug, Clone)]
struct Ethernet {
    dest_mac: [u8; 6],
    src_mac: [u8; 6],
    ether_type: u16
}

const BROADCAST_MAC_ADDRESS: [u8; 6] = [0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF];

pub fn handle_packet(driver: &mut NetDriver, data: &[u8]) {
    assert!(data.len() >= size_of::<Ethernet>());
    let header = unsafe { &*(data.as_ptr() as *const Ethernet) };
    if header.dest_mac == BROADCAST_MAC_ADDRESS || header.dest_mac == driver.get_mac() {
        let ether_type = u16::from_be(header.ether_type);
        match ether_type {
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