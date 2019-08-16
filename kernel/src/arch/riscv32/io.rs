use super::sbi;
use core::fmt::{Arguments, Result, Write};
use core::ptr::{read_volatile, write_volatile};
use crate::util::{read, write};

struct SerialPort;

impl Write for SerialPort {
    fn write_str(&mut self, s: &str) -> Result {
        for c in s.bytes() {
            if c == 127 {
                putchar(8);
                putchar(b' ');
                putchar(8);
            } else {
                putchar(c);
            }
        }
        Ok(())
    }
}

pub fn putchar(c: u8) {
    write(0x1234_5678_9abc_def0, c);
}

pub fn getchar() -> char {
    read::<u8>(0x1234_5678_9abc_def0) as char
}

pub fn getchar_option() -> Option<char> {
    Some(getchar())
}

pub fn putfmt(fmt: Arguments) {
    putchar(80u8);
    SerialPort.write_fmt(fmt).unwrap();
}

const DATA: *mut u8 = 0x10000000 as *mut u8;
const STATUS: *const u8 = 0x10000005 as *const u8;
const CAN_READ: u8 = 1 << 0;
const CAN_WRITE: u8 = 1 << 5;
