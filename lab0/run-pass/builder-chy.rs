// FIXME: Make me pass! Diff budget: 30 lines.
//#[derive(Default)]
struct Builder {
    string: Option<String>,
    number: Option<usize>,
    st : &'static str,
}
impl Builder{
    fn default()->Self {
        Builder {
            string:Some("".to_string()),
            number:Some(0),
            st:"",
        }
    }
    fn string(&mut self, s: &str) -> &mut Self {
        self.string=Some(String::from(s));
        self
    }
//    fn string(&mut self, s: String) ->&mut Self {
//        self.string=Some(s);
//        &mut self
//    }
    fn number(&mut self, n: usize) ->&mut Self {
        self.number=Some(n);
        self
    }
    fn to_string(&mut self) -> &str {
        self.string.unwrap().push_str(" ");
        self.string.unwrap().push_str(&self.number.unwrap().to_string());
        let s= self.string.unwrap();
        self.st = &s;
        self.st
    }
}

// Do not modify this function.
fn main() {
    let empty = Builder::default().to_string();
    assert_eq!(empty, "");

    let just_str = Builder::default().string("hi").to_string();
    assert_eq!(just_str, "hi");

    let just_num = Builder::default().number(254).to_string();
    assert_eq!(just_num, "254");

    let a = Builder::default()
        .string("hello, world!")
        .number(200)
        .to_string();

    assert_eq!(a, "hello, world! 200");

    let b = Builder::default()
        .string("hello, world!")
        .number(200)
        .string("bye now!")
        .to_string();

    assert_eq!(b, "bye now! 200");

    let c = Builder::default()
//        .string("heap!".to_owned())
        .string("heap!")
        .to_string();

    assert_eq!(c, "heap!");
}
