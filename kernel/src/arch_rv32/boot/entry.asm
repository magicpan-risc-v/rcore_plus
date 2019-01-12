    .section .text.entry
    .globl _start
_start:
    # setup stack space for each CPU (a0=hartid)
    add t0, a0, 1
    slli t0, t0, 16
    lui sp, %hi(bootstack)
    add sp, sp, t0

    call rust_main

    .section .bss.stack
    .align 12  #PGSHIFT
    .global bootstack
bootstack:
    # MAX CPU NUM=8, each CPU has 64KB stack
    .space 4096 * 16 * 8
    .global bootstacktop
bootstacktop:
