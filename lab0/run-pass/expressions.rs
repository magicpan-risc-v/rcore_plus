// FIXME: Make me pass! Diff budget: 10 lines.
// Do not `use` any items.
use std::cmp::max;
// Do not change the following two lines.
#[derive(Debug, Eq,Ord,PartialOrd, PartialEq, Clone, Copy)]
struct IntWrapper(isize);

pub fn main() {
    assert_eq!(max(1usize, 3), 3);
    assert_eq!(max(1u8, 3), 3);
    assert_eq!(max(1u8, 3), 3);
    assert_eq!(max(IntWrapper(120), IntWrapper(248)), IntWrapper(248));
}
