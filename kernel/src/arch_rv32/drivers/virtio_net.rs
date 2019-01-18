use core::slice;
use core::mem::size_of;
use alloc::alloc::{Layout, GlobalAlloc};
use device_tree::{DeviceTree, Node};
use device_tree::util::SliceRead;
use crate::memory::{active_table, alloc_frame};
use rcore_memory::paging::PageTable;
use volatile::{Volatile, ReadOnly, WriteOnly};
use rcore_memory::PAGE_SIZE;
use crate::HEAP_ALLOCATOR;
use crate::process::processor;
use crate::process::context::Process;
use core::time::Duration;
use crate::thread;

// virtio 4.2.4 Legacy interface
#[repr(packed)]
#[derive(Debug)]
struct VirtIOHeader {
    magic: ReadOnly<u32>, // 0x000
    version: ReadOnly<u32>, // 0x004
    device_id: ReadOnly<u32>, // 0x008
    vendor_id: ReadOnly<u32>, // 0x00c
    device_features: ReadOnly<u32>, // 0x010
    device_features_sel: WriteOnly<u32>, // 0x014
    __r1: [ReadOnly<u32>; 2], 
    driver_features: WriteOnly<u32>, // 0x020
    driver_features_sel: WriteOnly<u32>, // 0x024
    guest_page_size: WriteOnly<u32>, // 0x028
    __r2: ReadOnly<u32>,
    queue_sel: WriteOnly<u32>, // 0x030
    queue_num_max: ReadOnly<u32>, // 0x034
    queue_num: WriteOnly<u32>, // 0x038
    queue_align: WriteOnly<u32>, // 0x03c
    queue_pfn: Volatile<u32>, // 0x040
    queue_ready: Volatile<u32>, // new interface only
    __r3: [ReadOnly<u32>; 2],
    queue_notify: WriteOnly<u32>, // 0x050
    __r4: [ReadOnly<u32>; 3],
    interrupt_status: ReadOnly<u32>, // 0x060
    interrupt_ack: WriteOnly<u32>, // 0x064
    __r5: [ReadOnly<u32>; 2],
    status: Volatile<u32>, // 0x070
    __r6: [ReadOnly<u32>; 3],
    queue_desc_low: WriteOnly<u32>, // new interface only since here
    queue_desc_high: WriteOnly<u32>,
    __r7: [ReadOnly<u32>; 2],
    queue_avail_low: WriteOnly<u32>,
    queue_avail_high: WriteOnly<u32>,
    __r8: [ReadOnly<u32>; 2],
    queue_used_low: WriteOnly<u32>,
    queue_used_high: WriteOnly<u32>,
    __r9: [ReadOnly<u32>; 21],
    config_generation: ReadOnly<u32>
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
    struct VirtIODeviceStatus : u32 {
        const ACKNOWLEDGE = 1;
        const DRIVER = 2;
        const FAILED = 128;
        const FEATURES_OK = 8;
        const DRIVER_OK = 4;
        const DEVICE_NEEDS_RESET = 64;
    }
}

bitflags! {
    struct VirtIONetworkStatus : u16 {
        const LINK_UP = 1;
        const ANNOUNCE = 2;
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
struct VirtIOVirtqueueUsed {
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
    hdr_len: Volatile<u16>,
    gso_size: Volatile<u16>,
    csum_start: Volatile<u16>,
    csum_offset: Volatile<u16>,
    payload: [u8; 32]
}

// virtio 2.4.2 Legacy Interfaces: A Note on Virtqueue Layout
fn virtqueue_size(num: usize, align: usize) -> usize {
    (((size_of::<VirtIOVirtqueueDesc>() * num + size_of::<u16>() * (3 + num)) + align) & !(align-1)) +
        (((size_of::<u16>() * 3 + size_of::<VirtIOVirtqueueUsedElem>() * num) + align) & !(align-1))
}

pub fn virtio_probe(node: &Node){
    if let Some(reg) = node.prop_raw("reg") {
        let from = reg.as_slice().read_be_u64(0).unwrap();
        let size = reg.as_slice().read_be_u64(8).unwrap();
        // assuming one page
        active_table().map(from as usize, from as usize);
        let data = unsafe { slice::from_raw_parts(from as *const u8, size as usize)};
        let mut header = unsafe { &mut *(from as *mut VirtIOHeader) };
        let magic = header.magic.read();
        let version = header.version.read();
        let device_id = header.device_id.read();
        // only support legacy device
        if magic == 0x74726976 && version == 1 && device_id != 0 { // "virt" magic
            println!("Detected virtio net device with vendor id {:#X}", header.vendor_id.read());
            // virtio 3.1.1 Device Initialization
            header.status.write(0);
            header.status.write(VirtIODeviceStatus::ACKNOWLEDGE.bits());
            if device_id == 1 { // net device
                header.status.write(VirtIODeviceStatus::DRIVER.bits());
                let mut device_features_bits: u64 = 0;
                header.device_features_sel.write(0); // device features [0, 32)
                device_features_bits = header.device_features.read().into();
                header.device_features_sel.write(1); // device features [32, 64)
                device_features_bits = device_features_bits + ((header.device_features.read() as u64) << 32);
                let device_features = VirtIONetFeature::from_bits_truncate(device_features_bits);
                println!("Device features {:?}", device_features);
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
                println!("Got MAC address {:?} and status {:?}", mac, status);

                // virtio 4.2.4 Legacy interface
                // configure two virtqueues: ingress and egress
                header.guest_page_size.write(PAGE_SIZE as u32); // one page
                for queue in 0..2 {
                    header.queue_sel.write(queue);
                    assert_eq!(header.queue_pfn.read(), 0); // not in use
                    let queue_num_max = header.queue_num_max.read();
                    let queue_num = 1; // for simplicity
                    assert!(queue_num_max >= queue_num); // queue available
                    let size = virtqueue_size(queue_num as usize, PAGE_SIZE);
                    assert!(size % PAGE_SIZE == 0);
                    // alloc continuous pages
                    let address = unsafe {
                        HEAP_ALLOCATOR.alloc_zeroed(Layout::from_size_align(size, PAGE_SIZE).unwrap())
                    } as usize;
                    println!("queue {} using page address {:#X} with size {}", queue, address as usize, size);
                    header.queue_num.write(queue_num);
                    header.queue_align.write(PAGE_SIZE as u32);
                    header.queue_pfn.write((address as u32) >> 12);

                    // allocate a page for buffer
                    let page = unsafe {
                        HEAP_ALLOCATOR.alloc_zeroed(Layout::from_size_align(PAGE_SIZE, PAGE_SIZE).unwrap())
                    };
                    // fill first desc
                    let mut desc = unsafe { &mut *(address as *mut VirtIOVirtqueueDesc) };
                    desc.addr.write(page as u64);
                    desc.len.write(PAGE_SIZE as u32);
                    desc.flags.write(VirtIOVirtqueueFlag::WRITE.bits());
                    // TODO: memory barrier
                    // add the desc to the ring
                    let mut ring = unsafe { 
                        &mut *((address + size_of::<VirtIOVirtqueueDesc>() * queue_num as usize) as *mut VirtIOVirtqueueAvailableRing) 
                    };
                    ring.ring[ring.idx.read() as usize].write(0);
                    ring.idx.write(ring.idx.read() + 1);

                    // notify device about the new buffer
                    header.queue_notify.write(queue);
                    println!("queue {} using page address {:#X}", queue, page as usize);
                    processor().manager().add(Process::new_kernel(poll_buffer, page as usize), 0);
                }

                header.status.write(VirtIODeviceStatus::DRIVER_OK.bits());
            }
        } else {
            active_table().unmap(from as usize);
        }
    }
}

pub extern fn poll_buffer(address: usize) -> ! {
    loop {
        let header = unsafe {&*(address as *const VirtIONetHeader)};
        println!("read buffer {:X?}", header);
        thread::sleep(Duration::from_millis(2000));
    }
}