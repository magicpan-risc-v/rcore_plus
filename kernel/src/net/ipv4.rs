use crate::drivers::NetDriver;
use super::{Ethernet, ETHERTYPE_IPV4, MacAddr, IPv4Addr};
use core::mem::size_of;
use core::slice;
use log::*;
use super::icmp;

const IPPROTO_ICMP: u8 = 1;

#[repr(packed)]
#[derive(Debug, Clone)]
pub struct IPv4 {
    version_ihl: u8,
    tos_ecn: u8,
    total_length: u16,
    id: u16,
    flags_frag_offset: u16,
    ttl: u8,
    proto: u8,
    header_checksum: u16,
    pub src_ip: IPv4Addr,
    pub dst_ip: IPv4Addr,
}

pub fn handle_ipv4(dev: &mut NetDriver, data: &[u8], offset: usize) {
    assert!(data.len() >= offset + size_of::<IPv4>());
    let header = unsafe { &*(data.as_ptr().offset(offset as isize) as *const IPv4) };
    assert_eq!(header.version_ihl, 0x45); // IPv4 without Options
    if header.dst_ip.is_broadcast() || header.dst_ip == dev.get_ipv4() {
        match header.proto {
            IPPROTO_ICMP => {
                icmp::handle_icmp(dev, data, offset + size_of::<IPv4>());
            },
            proto => println!("IP proto {} ignored", proto)
        }
    }
}