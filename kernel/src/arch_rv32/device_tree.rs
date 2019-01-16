use core::slice;
use device_tree::{DeviceTree, Node};
use device_tree::util::SliceRead;
use crate::util::to_be_u32;
use crate::memory::active_table;
use rcore_memory::paging::PageTable;
use volatile::{Volatile, ReadOnly, WriteOnly};

fn walk_dt_node(dt: &Node) {
    if let Ok(compatible) = dt.prop_str("compatible") {
        // TODO: query this from table
        if compatible == "virtio,mmio" {
            virtio_probe(dt);
        }
    }
    for child in dt.children.iter() {
        walk_dt_node(child);
    }
}

pub fn init(dtb: usize) {
    let mut size = to_be_u32(unsafe { *(dtb as *const u32).offset(1) });
    let dtb_data = unsafe { slice::from_raw_parts(dtb as *const u8, size as usize) };
    if let Ok(dt) = DeviceTree::load(dtb_data) {
        walk_dt_node(&dt.root);
    }
}

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
}

bitflags! {
    struct VirtIONetFeature : u32 {
        const CSUM = 1 << 0;
        const GUEST_CSUM = 1 << 1;
        const CTRL_GUEST_OFFLOADS = 1 << 2;
        const MTU = 1 << 3;
        const MAC = 1 << 5;
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
    }
}

fn virtio_probe(node: &Node){
    if let Some(reg) = node.prop_raw("reg") {
        let from = reg.as_slice().read_be_u64(0).unwrap();
        let size = reg.as_slice().read_be_u64(8).unwrap();
        // assuming one 4k page
        active_table().map(from as usize, from as usize);
        let data = unsafe { slice::from_raw_parts(from as *const u8, size as usize)};
        let mut header = unsafe { &mut *(from as *mut VirtIOHeader) };
        let magic = header.magic.read();
        let device_id = header.device_id.read();
        if magic == 0x74726976 && device_id == 1 { // "virt" magic and net device
            println!("Detected virtio net device version {} vendor id {:#X}", 
                header.version.read(), header.vendor_id.read());
            header.guest_page_size.write(4096); // 4K
            let device_features = VirtIONetFeature::from_bits_truncate(header.device_features.read());
            println!("device features {:?}", device_features);
        } else {
            active_table().unmap(from as usize);
        }
    }
}