use core::slice;
use core::mem::size_of;
use alloc::alloc::{Layout, GlobalAlloc};
use device_tree::Node;
use device_tree::util::SliceRead;
use crate::memory::active_table;
use rcore_memory::paging::PageTable;
use volatile::{Volatile, ReadOnly};
use rcore_memory::PAGE_SIZE;
use crate::HEAP_ALLOCATOR;
use log::*;
use alloc::prelude::*;
use alloc::format;
use super::super::{DRIVERS, Driver, NetDriver, DeviceType};
use crate::arch::cpu;
use super::super::bus::virtio_mmio::{VirtIOHeader, VirtIODeviceStatus};
use crate::net;

struct VirtIONet {
    interrupt_parent: u32,
    interrupt: u32,
    header: usize,
    mac: net::MacAddr,
    ipv4_addr: net::IPv4Addr,
    queue_num: u32,
    // 0 for receive, 1 for transmit
    queue_address: [usize; 2],
    queue_page: [usize; 2],
    last_used_idx: [u16; 2],
}

impl Driver for VirtIONet {
    fn try_handle_interrupt(&mut self) -> bool {
        // for simplicity
        if cpu::id() > 0 {
            return false
        }

        // ensure header page is mapped
        {
            let mut table = active_table();
            if let None = table.get_entry(self.header as usize) {
                table.map(self.header as usize, self.header as usize);
            }
        }
        let mut header = unsafe { &mut *(self.header as *mut VirtIOHeader) };
        let interrupt = header.interrupt_status.read();
        if interrupt != 0 {
            header.interrupt_ack.write(interrupt);
            let interrupt_status = VirtIONetworkInterruptStatus::from_bits_truncate(interrupt);
            debug!("Got interrupt {:?}", interrupt_status);
            if interrupt_status.contains(VirtIONetworkInterruptStatus::USED_RING_UPDATE) {
                // 0 is receive queue
                // need to change when queue_num is larger than one
                for queue in 0..2 {
                    let used_ring_offset = virtqueue_used_elem_offset(self.queue_num as usize, PAGE_SIZE);
                    let mut used_ring = unsafe { 
                        &mut *((self.queue_address[queue] + used_ring_offset) as *mut VirtIOVirtqueueUsedRing) 
                    };
                    let mut new_data_arrived = false;
                    if self.last_used_idx[queue] < used_ring.idx.read() {
                        assert_eq!(self.last_used_idx[queue], used_ring.idx.read() - 1);
                        info!("Processing queue {} from {} to {}", queue, self.last_used_idx[queue], used_ring.idx.read());
                        self.last_used_idx[queue] = used_ring.idx.read();
                        new_data_arrived = true;
                    }
                    if new_data_arrived && queue == 0 {
                        let mut payload = unsafe { slice::from_raw_parts_mut((self.queue_page[0] + 10) as *mut u8, PAGE_SIZE)};

                        debug!("Got buffer {:X?}", &payload[0..200]);
                        net::handle_packet(self, payload);
                        for i in 0..PAGE_SIZE {
                            payload[i] = 0;
                        }
                        let mut ring = unsafe { 
                            &mut *((self.queue_address[0] + size_of::<VirtIOVirtqueueDesc>() * self.queue_num as usize) as *mut VirtIOVirtqueueAvailableRing) 
                        };
                        ring.idx.write(ring.idx.read() + 1);
                        header.queue_notify.write(0);
                    }
                }
            } else if interrupt_status.contains(VirtIONetworkInterruptStatus::CONFIGURATION_CHANGE) {
                // TODO: update mac and status
                unimplemented!("virtio-net configuration change not implemented");
            }

            return true;
        } else {
            return false;
        }
    }

    fn device_type(&self) -> DeviceType {
        DeviceType::Net
    }
}

impl NetDriver for VirtIONet {
    fn get_mac(&self) -> net::MacAddr {
        self.mac
    }

    fn get_ipv4(&self) -> net::IPv4Addr {
        self.ipv4_addr
    }

    fn get_ifname(&self) -> String {
        format!("virtio{}", self.interrupt)
    }

    fn send_packet(&mut self, payload: &[u8]) -> bool {
        debug!("Sending payload {:?}", payload);
        // assuming packet not too large and no buffer is transmitting
        let payload_target = unsafe { slice::from_raw_parts_mut((self.queue_page[1] + 10) as *mut u8, payload.len())};
        payload_target.clone_from_slice(payload);
        let mut net_header = unsafe { &mut *(self.queue_page[1] as *mut VirtIONetHeader) };
        net_header.hdr_len.write(payload.len() as u16);

        let mut header = unsafe { &mut *(self.header as *mut VirtIOHeader) };
        // 1 for transmitq
        let mut ring = unsafe { 
            &mut *((self.queue_address[1] + size_of::<VirtIOVirtqueueDesc>() * self.queue_num as usize) as *mut VirtIOVirtqueueAvailableRing) 
        };

        // re-add buffer to desc
        let mut desc = unsafe { &mut *(self.queue_address[1] as *mut VirtIOVirtqueueDesc) };
        desc.addr.write(self.queue_page[1] as u64);
        desc.len.write(PAGE_SIZE as u32);

        // memory barrier
        unsafe {
            asm!("fence" ::: "memory");
        }
        
        // add desc to available ring
        ring.idx.write(ring.idx.read() + 1);
        header.queue_notify.write(1);
        true
    }
}


bitflags! {
    struct VirtIONetFeature : u64 {
        const CSUM = 1 << 0;
        const GUEST_CSUM = 1 << 1;
        const CTRL_GUEST_OFFLOADS = 1 << 2;
        const MTU = 1 << 3;
        const MAC = 1 << 5;
        const GSO = 1 << 6;
        const GUEST_TSO4 = 1 << 7;
        const GUEST_TSO6 = 1 << 8;
        const GUEST_ECN = 1 << 9;
        const GUEST_UFO = 1 << 10;
        const HOST_TSO4 = 1 << 11;
        const HOST_TSO6 = 1 << 12;
        const HOST_ECN = 1 << 13;
        const HOST_UFO = 1 << 14;
        const MRG_RXBUF = 1 << 15;
        const STATUS = 1 << 16;
        const CTRL_VQ = 1 << 17;
        const CTRL_RX = 1 << 18;
        const CTRL_VLAN = 1 << 19;
        const CTRL_RX_EXTRA = 1 << 20;
        const GUEST_ANNOUNCE = 1 << 21;
        const MQ = 1 << 22;
        const CTL_MAC_ADDR = 1 << 23;
        // device independent
        const RING_INDIRECT_DESC = 1 << 28;
        const RING_EVENT_IDX = 1 << 29;
        const VERSION_1 = 1 << 32; // legacy
    }
}

bitflags! {
    struct VirtIONetworkStatus : u16 {
        const LINK_UP = 1;
        const ANNOUNCE = 2;
    }
}

bitflags! {
    struct VirtIONetworkInterruptStatus : u32 {
        const USED_RING_UPDATE = 1 << 0;
        const CONFIGURATION_CHANGE = 1 << 1;
    }
}

#[repr(packed)]
#[derive(Debug)]
struct VirtIONetworkConfig {
    mac: [u8; 6],
    status: ReadOnly<u16>
}

#[repr(packed)]
#[derive(Debug)]
struct VirtIOVirtqueueDesc {
    addr: Volatile<u64>,
    len: Volatile<u32>,
    flags: Volatile<u16>,
    next: Volatile<u16>
}

bitflags! {
    struct VirtIOVirtqueueFlag : u16 {
        const NEXT = 1;
        const WRITE = 2;
        const INDIRECT = 4;
    }
}

#[repr(packed)]
#[derive(Debug)]
struct VirtIOVirtqueueAvailableRing {
    flags: Volatile<u16>,
    idx: Volatile<u16>,
    ring: [Volatile<u16>; 1], // actual size: queue_size
    used_event: Volatile<u16>
}

#[repr(packed)]
#[derive(Debug)]
struct VirtIOVirtqueueUsedElem {
    id: Volatile<u32>,
    len: Volatile<u32>
}

#[repr(packed)]
#[derive(Debug)]
struct VirtIOVirtqueueUsedRing {
    flags: Volatile<u16>,
    idx: Volatile<u16>,
    ring: [VirtIOVirtqueueUsedElem; 1], // actual size: queue_size
    avail_event: Volatile<u16>
}

// virtio 5.1.6 Device Operation
#[repr(packed)]
#[derive(Debug)]
struct VirtIONetHeader {
    flags: Volatile<u8>,
    gso_type: Volatile<u8>,
    hdr_len: Volatile<u16>, // cannot rely on this
    gso_size: Volatile<u16>,
    csum_start: Volatile<u16>,
    csum_offset: Volatile<u16>,
    payload: [u8; 1] // actual size unknown
}

// virtio 2.4.2 Legacy Interfaces: A Note on Virtqueue Layout
fn virtqueue_size(num: usize, align: usize) -> usize {
    (((size_of::<VirtIOVirtqueueDesc>() * num + size_of::<u16>() * (3 + num)) + align) & !(align-1)) +
        (((size_of::<u16>() * 3 + size_of::<VirtIOVirtqueueUsedElem>() * num) + align) & !(align-1))
}

fn virtqueue_used_elem_offset(num: usize, align: usize) -> usize {
    ((size_of::<VirtIOVirtqueueDesc>() * num + size_of::<u16>() * (3 + num)) + align) & !(align-1)
}

pub fn virtio_net_init(node: &Node) {
    let reg = node.prop_raw("reg").unwrap();
    let from = reg.as_slice().read_be_u64(0).unwrap();
    let mut header = unsafe { &mut *(from as *mut VirtIOHeader) };

    header.status.write(VirtIODeviceStatus::DRIVER.bits());

    let mut device_features_bits: u64 = 0;
    header.device_features_sel.write(0); // device features [0, 32)
    device_features_bits = header.device_features.read().into();
    header.device_features_sel.write(1); // device features [32, 64)
    device_features_bits = device_features_bits + ((header.device_features.read() as u64) << 32);
    let device_features = VirtIONetFeature::from_bits_truncate(device_features_bits);
    debug!("Device features {:?}", device_features);

    // negotiate these flags only
    let supported_features = VirtIONetFeature::MAC | VirtIONetFeature::STATUS;
    let driver_features = (device_features & supported_features).bits();
    header.driver_features_sel.write(0); // driver features [0, 32)
    header.driver_features.write((driver_features & 0xFFFFFFFF) as u32);
    header.driver_features_sel.write(1); // driver features [32, 64)
    header.driver_features.write(((driver_features & 0xFFFFFFFF00000000) >> 32) as u32);

    // read configuration space
    let mut mac: [u8; 6];
    let mut status: VirtIONetworkStatus;
    let mut config = unsafe { &mut *((from + 0x100) as *mut VirtIONetworkConfig) };
    mac = config.mac;
    status = VirtIONetworkStatus::from_bits_truncate(config.status.read());
    debug!("Got MAC address {:?} and status {:?}", mac, status);

    // virtio 4.2.4 Legacy interface
    // configure two virtqueues: ingress and egress
    header.guest_page_size.write(PAGE_SIZE as u32); // one page

    let queue_num = 1; // for simplicity
    let mut driver = VirtIONet {
        interrupt: node.prop_u32("interrupts").unwrap(),
        interrupt_parent: node.prop_u32("interrupt-parent").unwrap(),
        header: from as usize,
        mac: net::MacAddr::from(mac),
        ipv4_addr: net::IPv4Addr::from([10, 0, 0, 2]), // hardcoded for now
        queue_num: queue_num,
        queue_address: [0, 0],
        queue_page: [0, 0],
        last_used_idx: [0, 0]
    };

    // 0 for receive, 1 for transmit
    for queue in 0..2 {
        header.queue_sel.write(queue);
        assert_eq!(header.queue_pfn.read(), 0); // not in use
        let queue_num_max = header.queue_num_max.read();
        assert!(queue_num_max >= queue_num); // queue available
        let size = virtqueue_size(queue_num as usize, PAGE_SIZE);
        assert!(size % PAGE_SIZE == 0);
        // alloc continuous pages
        let address = unsafe {
            HEAP_ALLOCATOR.alloc_zeroed(Layout::from_size_align(size, PAGE_SIZE).unwrap())
        } as usize;
        driver.queue_address[queue as usize] = address;
        debug!("queue {} using page address {:#X} with size {}", queue, address as usize, size);

        header.queue_num.write(queue_num);
        header.queue_align.write(PAGE_SIZE as u32);
        header.queue_pfn.write((address as u32) >> 12);

        // allocate a page for buffer
        let page = unsafe {
            HEAP_ALLOCATOR.alloc_zeroed(Layout::from_size_align(PAGE_SIZE, PAGE_SIZE).unwrap())
        } as usize;
        driver.queue_page[queue as usize] = page;

        // fill first desc
        let mut desc = unsafe { &mut *(address as *mut VirtIOVirtqueueDesc) };
        desc.addr.write(page as u64);
        desc.len.write(PAGE_SIZE as u32);
        if queue == 0 {
            // device writable
            desc.flags.write(VirtIOVirtqueueFlag::WRITE.bits());
        } else {
            // driver readable
            desc.flags.write(0);
        }
        // memory barrier
        unsafe {
            asm!("fence" ::: "memory");
        }
        if queue == 0 {
            // add the desc to the ring
            let mut ring = unsafe { 
                &mut *((address + size_of::<VirtIOVirtqueueDesc>() * queue_num as usize) as *mut VirtIOVirtqueueAvailableRing) 
            };
            ring.ring[0].write(0);
            // wait for first packet
            ring.idx.write(ring.idx.read() + 1);
        }

        // notify device about the new buffer
        header.queue_notify.write(queue);
        debug!("queue {} using page address {:#X}", queue, page);
    }

    header.status.write(VirtIODeviceStatus::DRIVER_OK.bits());
    DRIVERS.lock().push(Box::new(driver));
}