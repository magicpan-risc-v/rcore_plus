// FIXME: Make me compile! Diff budget: 2 lines.
use std::io;

struct ReadWrapper<T> {
    inner: T
}

impl io::Read for ReadWrapper<std::fs::File> {
    fn read(&mut self, buf: &mut [u8]) -> Result<usize,std::io::Error> {
        self.inner.read(buf)
    }
}

fn main() { }
