extern crate cc;

fn main() {
	println!("cargo:rerun-if-env-changed=LOG");
	println!("cargo:rerun-if-changed=src/arch_rv32/compiler_rt.c");
	cc::Build::new()
		.file("src/arch_rv32/compiler_rt.c")
		.flag("-march=rv32imac")
		.flag("-mabi=ilp32")
		.flag("-Wno-builtin-declaration-mismatch")
		.flag("-O3")
		.compile("atomic_rt");
}
