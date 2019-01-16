use core::slice;
use device_tree::DeviceTree;
use crate::util::to_be_u32;

pub fn init(dtb: usize) {
    let mut size = to_be_u32(unsafe { *(dtb as *const u32).offset(1) });
    let dtb_data = unsafe { slice::from_raw_parts(dtb as *const u8, size as usize) };
    let dt = DeviceTree::load(dtb_data);
}