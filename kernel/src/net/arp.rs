use crate::drivers::NetDriver;
use super::{Ethernet, ETHERTYPE_IPV4, ETHERTYPE_ARP};
use alloc::prelude::*;
use core::mem::size_of;
use core::slice;
use log::*;

// assuming IPv4 over ARP
#[repr(packed)]
#[derive(Debug, Clone)]
struct Arp {
    ethernet: Ethernet,
    hardware_type: u16,
    protocol_type: u16,
    hardware_address_len: u8,
    protocol_address_len: u8,
    operation: u16,
    sender_mac: [u8; 6],
    sender_protocol_addr: [u8; 4],
    target_mac: [u8; 6],
    target_protocol_addr: [u8; 4]
}

pub fn handle_arp(dev: &mut NetDriver, data: &[u8]) {
    assert!(data.len() >= size_of::<Arp>());
    let header = unsafe { &*(data.as_ptr() as *const Arp) };
    assert_eq!(u16::from_be(header.hardware_type), 0x0001); // Ethernet
    assert_eq!(header.hardware_address_len, 6);
    assert_eq!(u16::from_be(header.protocol_type), ETHERTYPE_IPV4); // IPv4
    assert_eq!(header.protocol_address_len, 4);
    let my_ip = [10, 0, 0, 2];
    if u16::from_be(header.operation) == 1 {
        // request
        if header.target_protocol_addr == my_ip {
            let mac = dev.get_mac();
            debug!("Arp packet {:?}", header);
            // send a reply
            let mut reply_packet : Arp = header.clone();
            reply_packet.ethernet.dest_mac = header.sender_mac;
            reply_packet.ethernet.src_mac = mac;
            reply_packet.operation = u16::to_be(2); // reply
            reply_packet.target_mac = header.sender_mac;
            reply_packet.target_protocol_addr = header.sender_protocol_addr;
            reply_packet.sender_mac = mac;
            reply_packet.sender_protocol_addr = my_ip;
            dev.send_packet(unsafe { slice::from_raw_parts(&reply_packet as *const Arp as *const u8, size_of::<Arp>()) });
        }
    }
}