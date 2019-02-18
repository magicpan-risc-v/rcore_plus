// FIXME: Make me pass! Diff budget: 25 lines.
use Duration::Seconds;
use Duration::Minutes;
use Duration::MilliSeconds;
//#[derive(Debug,PartialEq)]
#[derive(Debug)]
enum Duration {
    MilliSeconds(u64),
    Seconds(u32),
    Minutes(u16)
}

impl PartialEq for Duration {
    fn eq(&self, other: &Duration) -> bool {
        let i :u64 = match *self {
            MilliSeconds(n) => n,
            Seconds(s) => s as u64* 1000,
            Minutes(m) => m as u64* 1000* 60,
        };
        let j :u64 = match *other {
            MilliSeconds(n) => n,
            Seconds(s) => s as u64* 1000,
            Minutes(m) => m as u64* 1000* 60,
        };
        i == j
    }
}
fn main() {
    assert_eq!(Seconds(120), Minutes(2));
    assert_eq!(Seconds(420), Minutes(7));
    assert_eq!(MilliSeconds(420000), Minutes(7));
    assert_eq!(MilliSeconds(43000), Seconds(43));
}
