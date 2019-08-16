    .section .text.entry
    .globl _start
_start:
    # a0 == hartid
    # pc == 0x80200000
    # sp == 0x800xxxxx

    # 1. set sp
    # sp = bootstack + (hartid + 1) * 0x10000
	nop
    lui     t0, %hi(bootstacktop)
    addi    t0, t0, %lo(bootstacktop)
	mv		sp, t0

	li		t0, 0xffffffffc0800000
	addi    t0, t0, -8
	li      t2, 65
	sb      t2, 0(t0)

	# set up csr
	csrwi mie, 0      # mie
	csrwi mip, 0      # mip
    csrwi mscratch, 0      # mscratch
	li	  t0, -1
	csrw  medeleg, t0      # medeleg
	csrw  mideleg, t0      # mideleg
	csrw  mcounteren, t0      # mcounteren
	csrw  scounteren, t0      # scounteren
    li	  t0, 1 << 11      # MPP = S
	li    t1, 1 << 1	   # SIE = 1
	add   t0, t0, t1
    csrw  mstatus, t0      # mstatus

    # 2. enable paging
    # satp = (8 << 60) | PPN(boot_page_table_sv39)
	lui     t0, %hi(boot_page_table_sv39)
	li      t1, 0xffffffffc0000000 - 0x80000000
	sub     t0, t0, t1
	srli    t0, t0, 12
	li      t1, 8 << 60
	or      t0, t0, t1
	csrw    satp, t0
	# sfence.vma

    # 3. jump to rust_main (absolute address)
    lui     t0, %hi(rust_main)
    addi    t0, t0, %lo(rust_main)
    csrw  mepc, t0      # mepc


	mret

    .section .bss.stack
    .align 12   # page align
    .global bootstack
bootstack:
    .space 4096 * 4 * 8
    .global bootstacktop
bootstacktop:

    .section .data
    .align 12   # page align
boot_page_table_sv39:
    # 0x00000000_80000000 -> 0x80000000 (1G)
    # 0xffffffff_c0000000 -> 0x80000000 (1G)
    .quad 0
    .quad 0
    .quad (0x80000 << 10) | 0xcf # VRWXAD
    .zero 8 * 508
    .quad (0x80000 << 10) | 0xcf # VRWXAD
