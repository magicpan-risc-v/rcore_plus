use core::slice;
use device_tree::{DeviceTree, Node};
use rcore_memory::paging::PageTable;
use volatile::{Volatile, ReadOnly, WriteOnly};
use super::bus::virtio_mmio::virtio_probe;

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
    let magic = u32::from_be(unsafe { *(dtb as *const u32) });
    if magic == 0xd00dfeed { // check device tree magic
        let mut size = u32::from_be(unsafe { *(dtb as *const u32).offset(1) });
        let dtb_data = unsafe { slice::from_raw_parts(dtb as *const u8, size as usize) };
        if let Ok(dt) = DeviceTree::load(dtb_data) {
            walk_dt_node(&dt.root);
        }
    }
}
