extern crate cc;

fn main() {
	println!("cargo:rerun-if-env-changed=LOG");
	println!("cargo:rerun-if-changed=src/compiler_rt.c");
	cc::Build::new()
		.file("src/compiler_rt.c")
		.flag("-march=rv32imac")
		.flag("-mabi=ilp32")
		.flag("-Wno-builtin-declaration-mismatch")
		.flag("-O3")
		.target("riscv32")
		.compile("atomic_rt");
}
