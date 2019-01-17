use core::slice;
use device_tree::{DeviceTree, Node};
use device_tree::util::SliceRead;
use crate::memory::active_table;
use rcore_memory::paging::PageTable;
use volatile::{Volatile, ReadOnly, WriteOnly};

#[repr(packed)]
#[derive(Debug)]
struct VirtIOHeader {
    magic: ReadOnly<u32>,
    version: ReadOnly<u32>,
    device_id: ReadOnly<u32>,
    vendor_id: ReadOnly<u32>,
    device_features: ReadOnly<u32>,
    device_features_sel: WriteOnly<u32>,
    __r1: [ReadOnly<u32>; 2],
    driver_features: WriteOnly<u32>,
    driver_features_sel: WriteOnly<u32>,
    guest_page_size: WriteOnly<u32>,
    __r2: ReadOnly<u32>,
    queue_sel: WriteOnly<u32>,
    queue_num_max: ReadOnly<u32>,
    queue_num: WriteOnly<u32>,
    queue_align: WriteOnly<u32>,
    queue_pfn: Volatile<u32>,
    queue_ready: Volatile<u32>,
    __r3: [ReadOnly<u32>; 2],
    queue_notify: WriteOnly<u32>,
    __r4: [ReadOnly<u32>; 3],
    interrupt_status: ReadOnly<u32>,
    interrupt_ack: WriteOnly<u32>,
    __r5: [ReadOnly<u32>; 2],
    status: Volatile<u32>,
    __r6: [ReadOnly<u32>; 3],
    queue_desc_low: WriteOnly<u32>,
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

pub fn virtio_probe(node: &Node){
    if let Some(reg) = node.prop_raw("reg") {
        let from = reg.as_slice().read_be_u64(0).unwrap();
        let size = reg.as_slice().read_be_u64(8).unwrap();
        // assuming one 4k page
        active_table().map(from as usize, from as usize);
        let data = unsafe { slice::from_raw_parts(from as *const u8, size as usize)};
        let mut header = unsafe { &mut *(from as *mut VirtIOHeader) };
        let magic = header.magic.read();
        let version = header.version.read();
        let device_id = header.device_id.read();
        // only support legacy device
        if magic == 0x74726976 && version == 1 && device_id != 0 { // "virt" magic
            println!("Detected virtio net device with vendor id {:#X}", header.vendor_id.read());
            header.status.write(VirtIODeviceStatus::ACKNOWLEDGE.bits());
            if device_id == 1 { // net device
                header.status.write(VirtIODeviceStatus::DRIVER.bits());
                let mut device_features_bits: u64 = 0;
                header.device_features_sel.write(0); // device features [0, 32)
                device_features_bits = header.device_features.read().into();
                header.device_features_sel.write(1); // device features [32, 64)
                device_features_bits = device_features_bits + ((header.device_features.read() as u64) << 32);
                let device_features = VirtIONetFeature::from_bits_truncate(device_features_bits);
                println!("device features {:?}", device_features);
                let supported_features = VirtIONetFeature::MAC | VirtIONetFeature::STATUS;
                let driver_features = (device_features & supported_features).bits();
                header.driver_features_sel.write(0); // driver features [0, 32)
                header.driver_features.write((driver_features & 0xFFFFFFFF) as u32);
                header.driver_features_sel.write(1); // driver features [32, 64)
                header.driver_features.write(((driver_features & 0xFFFFFFFF00000000) >> 32) as u32);
                header.guest_page_size.write(4096); // 4K
            }
        } else {
            active_table().unmap(from as usize);
        }
    }
}