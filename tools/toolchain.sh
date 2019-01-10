#!/bin/bash

sudo apt-get update
sudo apt-get -y install \
  autoconf automake autotools-dev curl \
  libmpc-dev libmpfr-dev libgmp-dev gawk \
  build-essential bison flex texinfo \
  gperf libtool patchutils bc \
  zlib1g-dev libexpat-dev

mkdir _install
export PATH=`pwd`/_install/bin:$PATH

# gcc, binutils, newlib
git clone --recursive https://github.com/riscv/riscv-gnu-toolchain
pushd riscv-gnu-toolchain
./configure --prefix=`pwd`/../_install --enable-multilib
make -j`nproc`
popd

wget https://download.qemu.org/qemu-3.1.0.tar.xz
tar -xf qemu-3.1.0.tar.xz
pushd qemu-3.1.0
./configure --prefix=`pwd`/../_install --target-list=riscv32-softmmu,riscv64-softmmu
make -j`nproc` install
popd
