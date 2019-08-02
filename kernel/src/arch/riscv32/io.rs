use super::sbi;
use core::fmt::{Arguments, Result, Write};
use core::ptr::{read_volatile, write_volatile};

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

fn putchar(c: u8) {
    unsafe{
        while read_volatile(STATUS) & CAN_WRITE == 0 {}
        write_volatile(DATA, c as u8);
    }
}

pub fn getchar() -> char {
    let c = unsafe {
        while read_volatile(STATUS) & CAN_READ == 0 {}
        read_volatile(DATA)
    };

    match c {
        255 => '\0',   // null
        c => c as char,
    }
}

pub fn getchar_option() -> Option<char> {
    return if unsafe { read_volatile(STATUS) } & CAN_READ == 0 {
        None
    }else{
        Some(unsafe{ read_volatile(DATA) } as char)
    };
}

pub fn putfmt(fmt: Arguments) {
    SerialPort.write_fmt(fmt).unwrap();
}

const DATA: *mut u8 = 0x10000000 as *mut u8;
const STATUS: *const u8 = 0x10000005 as *const u8;
const CAN_READ: u8 = 1 << 0;
const CAN_WRITE: u8 = 1 << 5;
