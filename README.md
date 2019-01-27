# rCore labs

[![Build Status](https://travis-ci.org/oscourse-tsinghua/RustOS.svg?branch=lab8-rv32)](https://travis-ci.org/oscourse-tsinghua/RustOS)

Rust version of THU [uCore OS  Labs](https://github.com/chyyuu/ucore_os_lab).

Going to be the next generation teaching operating system.

Supported architectures: RISCV32

Tested boards: QEMU

[Dev docs](https://rucore.gitbook.io/rust-os-docs/) (in Chinese)

![demo](./docs/2_OSLab/os2atc/demo.png)

## Building

### Environment

* [Rust](https://www.rust-lang.org) toolchain at nightly-2019-01-01
* Cargo tools: [cargo-xbuild](https://github.com/rust-osdev/cargo-xbuild)
* [QEMU](https://www.qemu.org) >= 3.1.0
* [RISCV64 GNU toolchain](https://www.sifive.com/boards) (for riscv32/64)


### How to run

```bash
rustup component add rust-src
cargo install cargo-xbuild bootimage
```

```bash
git clone https://github.com//oscourse-tsinghua/rcore_plus.git --recursive
git checkout lab8-rv32
git submodule update --init --recursive
cd rcore_plus/riscv_pk
git checkout lab8-rv32
cd ../kernel
rustup override set nightly-2019-01-01
make run arch=riscv32
```

### QA
Q: When you `make build`, you got compiler error "Can not find ~/.rustup/toolchains/nightly-2019-01-27-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/libcompiler_builtins/". How to fix it?

A: 
```
1. add one line below [dependencies] in Cargo.toml 
compiler_builtins = { git = "https://github.com/rust-lang-nursery/compiler-builtins" }
2. in kernel DIR: make build, then cargo will download compiler_builtins in ~/.cargo
3. cp -r ~/.cargo/git/checkouts/compiler-builtins-ec094dc45a0179c8/61a3c5a89ddf/ ~/.rustup/toolchains/nightly-2019-01-27-x86_64-unknown-linux-gnu/lib/rustlib/src/rust/src/libcompiler_builtins/
```

## History

This is a project of THU courses:

* Operating System (2018 Spring) 
* Comprehensive Experiment of Computer System (2018 Summer)
* Operating System Train (2018 Autumn)

Project wiki (internal access only): [OS](http://os.cs.tsinghua.edu.cn/oscourse/OS2018spring/projects/g11), [CECS](http://os.cs.tsinghua.edu.cn/oscourse/csproject2018/group05), [OST](http://os.cs.tsinghua.edu.cn/oscourse/OsTrain2018)

Lab docs, Reports (in Chinese): [docs](./docs)

It's based on [BlogOS](https://github.com/phil-opp/blog_os) , a demo project in the excellent tutorial [Writing an OS in Rust (First Edition)](https://os.phil-opp.com/first-edition/).

## License

The source code is dual-licensed under MIT or the Apache License (Version 2.0).
