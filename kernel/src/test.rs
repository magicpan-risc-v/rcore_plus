extern crate rand;
use self::rand::rngs::SmallRng;
use alloc::{vec::Vec};
use crate::process::*;
pub use crate::syscall::*;
use tinyfs::*;
use tinyfs::file::{File, FileHandle};
use tinyfs::file::Whence::SeekSet;
use tinyfs::inode::Inode;
use tinyfs::file::File::{EmptyFile, DataFile, Directory};
use tinyfs::directory::DirectoryHandle;

pub extern fn tinyfs_all_test(_arg: usize) -> ! {
    println!("tinyfs_all_test");
    simple_test();
    loop { thread::yield_now(); }
}

fn rand_array(size: usize) -> Vec<u8> {
   // (0..size).map(|_| random::<u8>()).collect()
    (0..size).map(|_| 10).collect()
}

fn assert_eq_buf(first: &[u8], second: &[u8]) {
    assert_eq!(first.len(), second.len());

    for i in 0..first.len() {
        assert_eq!(first[i], second[i]);
    }
}

fn simple_test() {
    const SIZE: usize = 1024 + 3434;
    let mut p = process();
    let data = rand_array(SIZE);
    let mut buf = [0u8; SIZE];
    let filename = "first_file";

    let fd = sys_open(filename, O_RDWR | O_CREAT);
    sys_write(fd, &data);
    sys_seek(fd, 0, SeekSet);
    sys_read(fd, &mut buf);

    assert_eq_buf(&data, &buf);

    let fd2 = sys_open(filename, O_RDWR);
    let mut buf2 = [0u8; SIZE];
    sys_read(fd2, &mut buf2);

    assert_eq_buf(&data, &buf2);

    sys_close(fd);
    sys_close(fd2);

    let fd3 = sys_open(filename, O_RDWR);
    let mut buf3 = [0u8; SIZE];
    sys_read(fd3, &mut buf3);

    assert_eq_buf(&data, &buf3);
    sys_close(fd3);

    sys_unlink(filename);

    let fd4 = sys_open(filename, O_RDWR);
    assert_eq!(fd4, -2);
    println!("tinyfs simple_test passed");
}