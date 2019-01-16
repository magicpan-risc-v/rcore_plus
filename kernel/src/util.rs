/// Convert C string to Rust string
pub unsafe fn from_cstr(s: *const u8) -> &'static str {
    use core::{str, slice};
    let len = (0usize..).find(|&i| *s.offset(i as isize) == 0).unwrap();
    str::from_utf8(slice::from_raw_parts(s, len)).unwrap()
}

pub fn to_be_u32(num: u32) -> u32 {
    (num & 0xFF000000) >> 24 | (num & 0x00FF0000) >> 8 | (num & 0x0000FF00) << 8 | (num & 0x000000FF) << 24
}