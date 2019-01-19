use super::super::net::virtio_net;
use volatile::{Volatile, ReadOnly, WriteOnly};
use log::*;
use device_tree::Node;
use device_tree::util::SliceRead;
use crate::memory::active_table;
use rcore_memory::paging::PageTable;

// virtio 4.2.4 Legacy interface
#[repr(packed)]
#[derive(Debug)]
pub struct VirtIOHeader {
    magic: ReadOnly<u32>, // 0x000
    version: ReadOnly<u32>, // 0x004
    device_id: ReadOnly<u32>, // 0x008
    vendor_id: ReadOnly<u32>, // 0x00c
    pub device_features: ReadOnly<u32>, // 0x010
    pub device_features_sel: WriteOnly<u32>, // 0x014
    __r1: [ReadOnly<u32>; 2], 
    pub driver_features: WriteOnly<u32>, // 0x020
    pub driver_features_sel: WriteOnly<u32>, // 0x024
    pub guest_page_size: WriteOnly<u32>, // 0x028
    __r2: ReadOnly<u32>,
    pub queue_sel: WriteOnly<u32>, // 0x030
    pub queue_num_max: ReadOnly<u32>, // 0x034
    pub queue_num: WriteOnly<u32>, // 0x038
    pub queue_align: WriteOnly<u32>, // 0x03c
    pub queue_pfn: Volatile<u32>, // 0x040
    queue_ready: Volatile<u32>, // new interface only
    __r3: [ReadOnly<u32>; 2],
    pub queue_notify: WriteOnly<u32>, // 0x050
    __r4: [ReadOnly<u32>; 3],
    pub interrupt_status: ReadOnly<u32>, // 0x060
    pub interrupt_ack: WriteOnly<u32>, // 0x064
    __r5: [ReadOnly<u32>; 2],
    pub status: Volatile<u32>, // 0x070
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
    pub struct VirtIODeviceStatus : u32 {
        const ACKNOWLEDGE = 1;
        const DRIVER = 2;
        const FAILED = 128;
        const FEATURES_OK = 8;
        const DRIVER_OK = 4;
        const DEVICE_NEEDS_RESET = 64;
    }
}

pub fn virtio_probe(node: &Node) {
    if let Some(reg) = node.prop_raw("reg") {
        let from = reg.as_slice().read_be_u64(0).unwrap();
        let size = reg.as_slice().read_be_u64(8).unwrap();
        // assuming one page
        active_table().map(from as usize, from as usize);
        let mut header = unsafe { &mut *(from as *mut VirtIOHeader) };
        let magic = header.magic.read();
        let version = header.version.read();
        let device_id = header.device_id.read();
        // only support legacy device
        if magic == 0x74726976 && version == 1 && device_id != 0 { // "virt" magic
            info!("Detected virtio net device with vendor id {:#X}", header.vendor_id.read());
            info!("Device tree node {:?}", node);
            // virtio 3.1.1 Device Initialization
            header.status.write(0);
            header.status.write(VirtIODeviceStatus::ACKNOWLEDGE.bits());
            if device_id == 1 { // net device
                virtio_net::virtio_net_init(node);
            }
        } else {
            active_table().unmap(from as usize);
        }
    }
}