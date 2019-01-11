use simple_filesystem::*;
use alloc::{boxed::Box, sync::Arc, string::String, collections::VecDeque, vec::Vec};
use core::any::Any;
use lazy_static::lazy_static;
use crate::sync::Condvar;
use crate::sync::SpinNoIrqLock as Mutex;

// Hard link user program
global_asm!(r#"
    .section .rodata
    .align 12
    .global _user_img_start
    .global _user_img_end
_user_img_start:
    .incbin "../user/img/ucore-riscv32.img"
_user_img_end:
"#);

lazy_static! {
    pub static ref ROOT_INODE: Arc<INode> = {
        let device = {
            extern {
                fn _user_img_start();
                fn _user_img_end();
            }
            // Hard link user program
            Box::new(unsafe { MemBuf::new(_user_img_start, _user_img_end) })
        };

        let sfs = SimpleFileSystem::open(device).expect("failed to open SFS");
        sfs.root_inode()
    };
}

struct MemBuf(&'static [u8]);

impl MemBuf {
    unsafe fn new(begin: unsafe extern fn(), end: unsafe extern fn()) -> Self {
        use core::slice;
        MemBuf(slice::from_raw_parts(begin as *const u8, end as usize - begin as usize))
    }
}

impl Device for MemBuf {
    fn read_at(&mut self, offset: usize, buf: &mut [u8]) -> Option<usize> {
        let slice = self.0;
        let len = buf.len().min(slice.len() - offset);
        buf[..len].copy_from_slice(&slice[offset..offset + len]);
        Some(len)
    }
    fn write_at(&mut self, _offset: usize, _buf: &[u8]) -> Option<usize> {
        None
    }
}

#[derive(Default)]
pub struct Stdin {
    buf: Mutex<VecDeque<char>>,
    pushed: Condvar,
}

impl Stdin {
    pub fn push(&self, c: char) {
        self.buf.lock().push_back(c);
        self.pushed.notify_one();
    }
    pub fn pop(&self) -> char {
        // QEMU v3.0 don't support M-mode external interrupt (bug?)
        // So we have to use polling.
        #[cfg(feature = "m_mode")]
        loop {
            let c = crate::arch::io::getchar();
            if c != '\0' { return c; }
        }
        #[cfg(not(feature = "m_mode"))]
        loop {
            let ret = self.buf.lock().pop_front();
            match ret {
                Some(c) => return c,
                None => self.pushed._wait(),
            }
        }
    }
}

#[derive(Default)]
pub struct Stdout;

lazy_static! {
    pub static ref STDIN: Arc<Stdin> = Arc::new(Stdin::default());
    pub static ref STDOUT: Arc<Stdout> = Arc::new(Stdout::default());
}

// TODO: better way to provide default impl?
macro_rules! impl_inode {
    () => {
        fn info(&self) -> Result<FileInfo> { Err(FsError::NotSupported) }
        fn sync(&self) -> Result<()> { Ok(()) }
        fn resize(&self, _len: usize) -> Result<()> { Err(FsError::NotSupported) }
        fn create(&self, _name: &str, _type_: FileType) -> Result<Arc<INode>> { Err(FsError::NotDir) }
        fn unlink(&self, _name: &str) -> Result<()> { Err(FsError::NotDir) }
        fn link(&self, _name: &str, _other: &Arc<INode>) -> Result<()> { Err(FsError::NotDir) }
        fn rename(&self, _old_name: &str, _new_name: &str) -> Result<()> { Err(FsError::NotDir) }
        fn move_(&self, _old_name: &str, _target: &Arc<INode>, _new_name: &str) -> Result<()> { Err(FsError::NotDir) }
        fn find(&self, _name: &str) -> Result<Arc<INode>> { Err(FsError::NotDir) }
        fn get_entry(&self, _id: usize) -> Result<String> { Err(FsError::NotDir) }
        fn fs(&self) -> Arc<FileSystem> { unimplemented!() }
        fn as_any_ref(&self) -> &Any { self }
    };
}

impl INode for Stdin {
    fn read_at(&self, _offset: usize, buf: &mut [u8]) -> Result<usize> {
        buf[0] = self.pop() as u8;
        Ok(1)
    }
    fn write_at(&self, _offset: usize, _buf: &[u8]) -> Result<usize> { unimplemented!() }
    impl_inode!();
}

impl INode for Stdout {
    fn read_at(&self, _offset: usize, _buf: &mut [u8]) -> Result<usize> { unimplemented!() }
    fn write_at(&self, _offset: usize, buf: &[u8]) -> Result<usize> {
        use core::str;
        //we do not care the utf-8 things, we just want to print it!
        let s = unsafe{ str::from_utf8_unchecked(buf) };
        print!("{}", s);
        Ok(buf.len())
    }
    impl_inode!();
}

pub trait INodeExt {
    fn read_as_vec(&self) -> Result<Vec<u8>>;
}

impl INodeExt for INode {
    fn read_as_vec(&self) -> Result<Vec<u8>> {
        let size = self.info()?.size;
        let mut buf = Vec::with_capacity(size);
        unsafe { buf.set_len(size); }
        self.read_at(0, buf.as_mut_slice())?;
        Ok(buf)
    }
}
