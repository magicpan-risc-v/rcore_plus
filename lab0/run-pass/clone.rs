fn main() {
    test_clone();
    test_to_owned();
}

// compiles and runs fine
fn test_clone() {
    let s1: &'static str = "I am static";
    let s2 = "I am boxed and owned".to_string();
//    let sa=s2;
//    let o1=Some(&s2);
//    let ref o2=o1.clone();
//    let o3=&Some(s1).clone();
//    let o4=(&o2).clone();
//    let o5=Some(o2);
//    let o6=o5;
    //o5+1;

    let c1 = s1.clone();
    let c2 = s2.clone();
    //c2;
    println!("{:?}", c1);
    println!("{:?}", c2);
//    println!("{:?}", o1);
//    println!("{:?}", o2);
//    println!("{:?}", o3);
//    println!("{:?}", o4);
//    println!("{:?}", o5);
//    println!("{:?}", o6);
    println!("{:?}", c1 == s1);  // prints true
    println!("{:?}", c2 == s2);  // prints true
}

fn test_to_owned() {
    let s1: &'static str = "I am static";
    let s2 = "I am boxed and owned".to_string();

    let c1 = s1.to_owned();
    let c2 = s2.to_owned();

    println!("{:?}", c1);
    println!("{:?}", c2);

    println!("{:?}", c1 == s1);   // compile-time error here (see below)
    println!("{:?}", c2 == s2);
}