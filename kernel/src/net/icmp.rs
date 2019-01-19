use crate::drivers::NetDriver;
use super::{Ethernet, ETHERTYPE_IPV4, MacAddr, IPv4Addr};
use core::mem::{size_of, swap};
use core::slice;
use log::*;
use super::ipv4::IPv4;

const ICMP_TYPE_ECHO_REPLY: u8 = 0;
const ICMP_TYPE_ECHO_REQUEST: u8 = 8;

#[repr(packed)]
#[derive(Debug, Clone)]
struct ICMP {
    icmp_type: u8,
    code: u8,
    checksum: u16,
    rest_of_header: u32
}

pub fn handle_icmp(dev: &mut NetDriver, data: &[u8], offset: usize) {
    assert!(data.len() >= offset + size_of::<ICMP>());
    let header = unsafe { &*(data.as_ptr().offset(offset as isize) as *const ICMP) };
    match header.icmp_type {
        ICMP_TYPE_ECHO_REQUEST => {
            let reply_data = data.clone();
            let ethernet = unsafe { &mut *(reply_data.as_ptr() as *mut Ethernet) };
            let ipv4 = unsafe { &mut *(reply_data.as_ptr().offset(size_of::<Ethernet>() as isize) as *mut IPv4) };
            let icmp = unsafe { &mut *(reply_data.as_ptr().offset(offset as isize) as *mut ICMP) };
            // IP checksum would not change, but ICMP checksum would change
            // See Internet Checksum Incremental Update in RFC 1624
            swap(&mut ethernet.src_mac, &mut ethernet.dst_mac);
            swap(&mut ipv4.src_ip, &mut ipv4.dst_ip);
            icmp.icmp_type = ICMP_TYPE_ECHO_REPLY;
            icmp.checksum = icmp.checksum + (ICMP_TYPE_ECHO_REQUEST - ICMP_TYPE_ECHO_REPLY) as u16;
            dev.send_packet(reply_data);
        },
        icmp_type => println!("Unhandled icmp type {}", icmp_type)
    }
}