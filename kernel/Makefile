# Commands:
#   make build                  Build
#   make run                    Build and run in QEMU
#   make justrun                Run the last build
#   make doc                    Generate docs
#   make asm                    Open the deassemble file of the last build
#   make header                 Open 'objdump -h' of the last build
#   make clean                  Clean
#
# Options:
#   arch    = riscv32               In this repository we only enable the riscv32 target.
#
#   d       = int
#           | in_asm
#           | ...     QEMU debug info
#
#   mode    = debug | release
#
#   LOG     = off
#           | error
#           | warn
#           | info
#           | debug
#           | trace
#
#   SFSIMG  = <sfsimg>              SFS image path of user programs
#
#   smp     = <positive integer>    Number of smp cores.
#
#   graphic = on                    enable/disable qemu graphical output
#           | off
#
#   board   = none                  Running on QEMU
#
#   m_mode                          Only available on riscv32, build for M-Mode, without MMU

arch ?= riscv32
board ?= none
mode ?= debug
LOG  ?= debug
smp  ?= 4
m_mode ?=

target := $(arch)
kernel := target/$(target)/$(mode)/rcore
bin := target/$(target)/$(mode)/kernel.bin
bbl_path := $(PWD)/../riscv-pk
user_dir := ../user

### export environments ###
export ARCH = $(arch)
export SMP = $(smp)
export SFSIMG = $(user_dir)/img/ucore-$(arch).img
# crate 'process' use this to set interrupt (MIE or SIE)
export M_MODE = $(m_mode)


### qemu options ###
qemu_opts := \
	-smp cores=$(smp) \
	-machine virt \
	-kernel $(bin) \
	-nographic

ifdef d
qemu_opts += -d $(d)
endif

### build args ###
build_args := --target $(target).json --features "$(features)"

ifeq ($(mode), release)
build_args += --release
endif


### prefix ###
prefix := riscv64-unknown-elf-

ld := $(prefix)ld
objdump := $(prefix)objdump
objcopy := $(prefix)objcopy
cc := $(prefix)gcc
as := $(prefix)as
gdb := $(prefix)gdb
export CC=$(cc)

.PHONY: all clean run build asm doc justrun debug kernel sfsimg install

all: kernel

clean:
	@cargo clean
	@cd $(user_dir) && make clean

doc:
	@cargo rustdoc --verbose -- --document-private-items

run: build justrun

justrun: build
	@qemu-system-$(arch) $(qemu_opts)

debug: $(kernel) $(bin)
	@qemu-system-$(arch) $(qemu_opts) -s -S &
	@sleep 1
	@$(gdb) $(kernel) -x ../tools/gdbinit

build: $(bin)

asm:
	@$(objdump) -dS $(kernel) | less

header:
	@$(objdump) -h $(kernel)

sym:
	@$(objdump) -t $(kernel) | less

$(bin): kernel
	@mkdir -p target/$(target)/bbl && \
	cd target/$(target)/bbl && \
	$(bbl_path)/configure \
		$(bbl_m_mode) \
		--with-arch=rv32imac \
		--disable-fp-emulation \
		--host=riscv64-unknown-elf \
		--with-payload=$(abspath $(kernel)) && \
	make -j32 && \
	cp bbl $(abspath $@)

kernel:
	@-patch -p0 -N -b \
		$(shell rustc --print sysroot)/lib/rustlib/src/rust/src/libcore/sync/atomic.rs \
		src/arch_rv32/atomic.patch
	@cargo xbuild $(build_args)


### user programs ###
sfsimg:
	@cd $(user_dir) && make sfsimg
