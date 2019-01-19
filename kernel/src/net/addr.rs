use core::fmt;

#[derive(Copy, Clone, PartialEq)]
pub struct MacAddr([u8; 6]);

impl MacAddr {
    pub fn from(addr: [u8; 6]) -> MacAddr {
        MacAddr(addr)
    }

    pub fn is_broadcast(&self) -> bool {
        self.0 == [0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF]
    }
}

impl fmt::Display for MacAddr {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, 
            "{:02x}:{:02x}:{:02x}:{:02x}:{:02x}:{:02x}",
            self.0[0], self.0[1], self.0[2], self.0[3], self.0[4], self.0[5]
        )
    }
}

impl fmt::Debug for MacAddr {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, 
            "{:02x}:{:02x}:{:02x}:{:02x}:{:02x}:{:02x}",
            self.0[0], self.0[1], self.0[2], self.0[3], self.0[4], self.0[5]
        )
    }
}

#[derive(Copy, Clone, PartialEq)]
pub struct IPv4Addr([u8; 4]);

impl IPv4Addr {
    pub fn from(addr: [u8; 4]) -> IPv4Addr {
        IPv4Addr(addr)
    }

    pub fn is_broadcast(&self) -> bool {
        self.0 == [0xFF, 0xFF, 0xFF, 0xFF]
    }
}

impl fmt::Display for IPv4Addr {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, 
            "{}.{}.{}.{}",
            self.0[0], self.0[1], self.0[2], self.0[3]
        )
    }
}

impl fmt::Debug for IPv4Addr {
    fn fmt(&self, f: &mut fmt::Formatter) -> fmt::Result {
        write!(f, 
            "{}.{}.{}.{}",
            self.0[0], self.0[1], self.0[2], self.0[3]
        )
    }
}