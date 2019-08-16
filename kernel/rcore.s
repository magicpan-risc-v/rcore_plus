
target/riscv64/release/rcore:     file format elf64-littleriscv


Disassembly of section .text:

ffffffffc0000000 <_start>:
ffffffffc0000000:	00000013          	nop
ffffffffc0000004:	c00272b7          	lui	t0,0xc0027
ffffffffc0000008:	00028293          	mv	t0,t0
ffffffffc000000c:	00028113          	mv	sp,t0
ffffffffc0000010:	c08002b7          	lui	t0,0xc0800
ffffffffc0000014:	ff828293          	addi	t0,t0,-8 # ffffffffc07ffff8 <ebss+0x7d81c0>
ffffffffc0000018:	04100393          	li	t2,65
ffffffffc000001c:	00728023          	sb	t2,0(t0)
ffffffffc0000020:	30405073          	csrwi	mie,0
ffffffffc0000024:	34405073          	csrwi	mip,0
ffffffffc0000028:	34005073          	csrwi	mscratch,0
ffffffffc000002c:	fff00293          	li	t0,-1
ffffffffc0000030:	30229073          	csrw	medeleg,t0
ffffffffc0000034:	30329073          	csrw	mideleg,t0
ffffffffc0000038:	30629073          	csrw	mcounteren,t0
ffffffffc000003c:	10629073          	csrw	scounteren,t0
ffffffffc0000040:	000012b7          	lui	t0,0x1
ffffffffc0000044:	8002829b          	addiw	t0,t0,-2048
ffffffffc0000048:	30029073          	csrw	mstatus,t0
ffffffffc000004c:	c00052b7          	lui	t0,0xc0005
ffffffffc0000050:	ffd00313          	li	t1,-3
ffffffffc0000054:	01e31313          	slli	t1,t1,0x1e
ffffffffc0000058:	406282b3          	sub	t0,t0,t1
ffffffffc000005c:	00c2d293          	srli	t0,t0,0xc
ffffffffc0000060:	fff00313          	li	t1,-1
ffffffffc0000064:	03f31313          	slli	t1,t1,0x3f
ffffffffc0000068:	0062e2b3          	or	t0,t0,t1
ffffffffc000006c:	18029073          	csrw	satp,t0
ffffffffc0000070:	c00002b7          	lui	t0,0xc0000
ffffffffc0000074:	5c828293          	addi	t0,t0,1480 # ffffffffc00005c8 <rust_main>
ffffffffc0000078:	34129073          	csrw	mepc,t0
ffffffffc000007c:	30200073          	mret

ffffffffc0000080 <_ZN4core3ptr18real_drop_in_place17h019bb8f5de82176bE>:
ffffffffc0000080:	ff010113          	addi	sp,sp,-16
ffffffffc0000084:	00113423          	sd	ra,8(sp)
ffffffffc0000088:	00813023          	sd	s0,0(sp)
ffffffffc000008c:	01010413          	addi	s0,sp,16
ffffffffc0000090:	00013403          	ld	s0,0(sp)
ffffffffc0000094:	00813083          	ld	ra,8(sp)
ffffffffc0000098:	01010113          	addi	sp,sp,16
ffffffffc000009c:	00008067          	ret

ffffffffc00000a0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E>:
ffffffffc00000a0:	fe010113          	addi	sp,sp,-32
ffffffffc00000a4:	00113c23          	sd	ra,24(sp)
ffffffffc00000a8:	00813823          	sd	s0,16(sp)
ffffffffc00000ac:	02010413          	addi	s0,sp,32
ffffffffc00000b0:	fe042623          	sw	zero,-20(s0)
ffffffffc00000b4:	0005851b          	sext.w	a0,a1
ffffffffc00000b8:	07f00813          	li	a6,127
ffffffffc00000bc:	00a86a63          	bltu	a6,a0,ffffffffc00000d0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x30>
ffffffffc00000c0:	00100613          	li	a2,1
ffffffffc00000c4:	feb40623          	sb	a1,-20(s0)
ffffffffc00000c8:	0a061c63          	bnez	a2,ffffffffc0000180 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0xe0>
ffffffffc00000cc:	11c0006f          	j	ffffffffc00001e8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x148>
ffffffffc00000d0:	7ff00613          	li	a2,2047
ffffffffc00000d4:	02a66663          	bltu	a2,a0,ffffffffc0000100 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x60>
ffffffffc00000d8:	03f5f513          	andi	a0,a1,63
ffffffffc00000dc:	08056513          	ori	a0,a0,128
ffffffffc00000e0:	fea406a3          	sb	a0,-19(s0)
ffffffffc00000e4:	00200613          	li	a2,2
ffffffffc00000e8:	0065d513          	srli	a0,a1,0x6
ffffffffc00000ec:	01f57513          	andi	a0,a0,31
ffffffffc00000f0:	fc056593          	ori	a1,a0,-64
ffffffffc00000f4:	feb40623          	sb	a1,-20(s0)
ffffffffc00000f8:	08061463          	bnez	a2,ffffffffc0000180 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0xe0>
ffffffffc00000fc:	0ec0006f          	j	ffffffffc00001e8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x148>
ffffffffc0000100:	0105d51b          	srliw	a0,a1,0x10
ffffffffc0000104:	02051e63          	bnez	a0,ffffffffc0000140 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0xa0>
ffffffffc0000108:	03f5f513          	andi	a0,a1,63
ffffffffc000010c:	08056513          	ori	a0,a0,128
ffffffffc0000110:	fea40723          	sb	a0,-18(s0)
ffffffffc0000114:	0065d51b          	srliw	a0,a1,0x6
ffffffffc0000118:	03f57513          	andi	a0,a0,63
ffffffffc000011c:	08056513          	ori	a0,a0,128
ffffffffc0000120:	fea406a3          	sb	a0,-19(s0)
ffffffffc0000124:	00300613          	li	a2,3
ffffffffc0000128:	00c5d51b          	srliw	a0,a1,0xc
ffffffffc000012c:	00f57513          	andi	a0,a0,15
ffffffffc0000130:	fe056593          	ori	a1,a0,-32
ffffffffc0000134:	feb40623          	sb	a1,-20(s0)
ffffffffc0000138:	04061463          	bnez	a2,ffffffffc0000180 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0xe0>
ffffffffc000013c:	0ac0006f          	j	ffffffffc00001e8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x148>
ffffffffc0000140:	03f5f513          	andi	a0,a1,63
ffffffffc0000144:	08056513          	ori	a0,a0,128
ffffffffc0000148:	fea407a3          	sb	a0,-17(s0)
ffffffffc000014c:	0065d51b          	srliw	a0,a1,0x6
ffffffffc0000150:	03f57513          	andi	a0,a0,63
ffffffffc0000154:	08056513          	ori	a0,a0,128
ffffffffc0000158:	fea40723          	sb	a0,-18(s0)
ffffffffc000015c:	00c5d51b          	srliw	a0,a1,0xc
ffffffffc0000160:	03f57513          	andi	a0,a0,63
ffffffffc0000164:	08056513          	ori	a0,a0,128
ffffffffc0000168:	fea406a3          	sb	a0,-19(s0)
ffffffffc000016c:	00400613          	li	a2,4
ffffffffc0000170:	0125d51b          	srliw	a0,a1,0x12
ffffffffc0000174:	ff056593          	ori	a1,a0,-16
ffffffffc0000178:	feb40623          	sb	a1,-20(s0)
ffffffffc000017c:	06060663          	beqz	a2,ffffffffc00001e8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x148>
ffffffffc0000180:	fff60613          	addi	a2,a2,-1
ffffffffc0000184:	fec40513          	addi	a0,s0,-20
ffffffffc0000188:	00156693          	ori	a3,a0,1
ffffffffc000018c:	00247537          	lui	a0,0x247
ffffffffc0000190:	8ad5051b          	addiw	a0,a0,-1875
ffffffffc0000194:	00e51513          	slli	a0,a0,0xe
ffffffffc0000198:	c4d50513          	addi	a0,a0,-947 # 246c4d <XLENb+0x246c0d>
ffffffffc000019c:	00c51513          	slli	a0,a0,0xc
ffffffffc00001a0:	5e750513          	addi	a0,a0,1511
ffffffffc00001a4:	00d51713          	slli	a4,a0,0xd
ffffffffc00001a8:	00800793          	li	a5,8
ffffffffc00001ac:	02000893          	li	a7,32
ffffffffc00001b0:	0ff5f513          	andi	a0,a1,255
ffffffffc00001b4:	03051663          	bne	a0,a6,ffffffffc00001e0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x140>
ffffffffc00001b8:	01c0006f          	j	ffffffffc00001d4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x134>
ffffffffc00001bc:	fff60613          	addi	a2,a2,-1
ffffffffc00001c0:	00168513          	addi	a0,a3,1
ffffffffc00001c4:	0006c583          	lbu	a1,0(a3)
ffffffffc00001c8:	00050693          	mv	a3,a0
ffffffffc00001cc:	0ff5f513          	andi	a0,a1,255
ffffffffc00001d0:	01051863          	bne	a0,a6,ffffffffc00001e0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x140>
ffffffffc00001d4:	eef70823          	sb	a5,-272(a4)
ffffffffc00001d8:	ef170823          	sb	a7,-272(a4)
ffffffffc00001dc:	00078593          	mv	a1,a5
ffffffffc00001e0:	eeb70823          	sb	a1,-272(a4)
ffffffffc00001e4:	fc061ce3          	bnez	a2,ffffffffc00001bc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x11c>
ffffffffc00001e8:	00000513          	li	a0,0
ffffffffc00001ec:	01013403          	ld	s0,16(sp)
ffffffffc00001f0:	01813083          	ld	ra,24(sp)
ffffffffc00001f4:	02010113          	addi	sp,sp,32
ffffffffc00001f8:	00008067          	ret

ffffffffc00001fc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17he03a86b78c9b31f9E>:
ffffffffc00001fc:	fb010113          	addi	sp,sp,-80
ffffffffc0000200:	04113423          	sd	ra,72(sp)
ffffffffc0000204:	04813023          	sd	s0,64(sp)
ffffffffc0000208:	05010413          	addi	s0,sp,80
ffffffffc000020c:	00053503          	ld	a0,0(a0)
ffffffffc0000210:	faa43c23          	sd	a0,-72(s0)
ffffffffc0000214:	0285b503          	ld	a0,40(a1)
ffffffffc0000218:	fea43423          	sd	a0,-24(s0)
ffffffffc000021c:	0205b503          	ld	a0,32(a1)
ffffffffc0000220:	fea43023          	sd	a0,-32(s0)
ffffffffc0000224:	0185b503          	ld	a0,24(a1)
ffffffffc0000228:	fca43c23          	sd	a0,-40(s0)
ffffffffc000022c:	0105b503          	ld	a0,16(a1)
ffffffffc0000230:	fca43823          	sd	a0,-48(s0)
ffffffffc0000234:	0085b503          	ld	a0,8(a1)
ffffffffc0000238:	fca43423          	sd	a0,-56(s0)
ffffffffc000023c:	0005b503          	ld	a0,0(a1)
ffffffffc0000240:	fca43023          	sd	a0,-64(s0)
ffffffffc0000244:	c0004537          	lui	a0,0xc0004
ffffffffc0000248:	11050593          	addi	a1,a0,272 # ffffffffc0004110 <anon.92ae609f133ff3667839cadd6e6eb4d8.8.llvm.3073555343742554456>
ffffffffc000024c:	fb840513          	addi	a0,s0,-72
ffffffffc0000250:	fc040613          	addi	a2,s0,-64
ffffffffc0000254:	00002097          	auipc	ra,0x2
ffffffffc0000258:	a64080e7          	jalr	-1436(ra) # ffffffffc0001cb8 <_ZN4core3fmt5write17h62151e7ab9dfc071E>
ffffffffc000025c:	04013403          	ld	s0,64(sp)
ffffffffc0000260:	04813083          	ld	ra,72(sp)
ffffffffc0000264:	05010113          	addi	sp,sp,80
ffffffffc0000268:	00008067          	ret

ffffffffc000026c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha407aa4d27107cf6E>:
ffffffffc000026c:	ff010113          	addi	sp,sp,-16
ffffffffc0000270:	00113423          	sd	ra,8(sp)
ffffffffc0000274:	00813023          	sd	s0,0(sp)
ffffffffc0000278:	01010413          	addi	s0,sp,16
ffffffffc000027c:	04060863          	beqz	a2,ffffffffc00002cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha407aa4d27107cf6E+0x60>
ffffffffc0000280:	07f00513          	li	a0,127
ffffffffc0000284:	002476b7          	lui	a3,0x247
ffffffffc0000288:	8ad6869b          	addiw	a3,a3,-1875
ffffffffc000028c:	00e69693          	slli	a3,a3,0xe
ffffffffc0000290:	c4d68693          	addi	a3,a3,-947 # 246c4d <XLENb+0x246c0d>
ffffffffc0000294:	00c69693          	slli	a3,a3,0xc
ffffffffc0000298:	5e768693          	addi	a3,a3,1511
ffffffffc000029c:	00d69693          	slli	a3,a3,0xd
ffffffffc00002a0:	00800793          	li	a5,8
ffffffffc00002a4:	02000813          	li	a6,32
ffffffffc00002a8:	0005c703          	lbu	a4,0(a1)
ffffffffc00002ac:	00a71863          	bne	a4,a0,ffffffffc00002bc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha407aa4d27107cf6E+0x50>
ffffffffc00002b0:	eef68823          	sb	a5,-272(a3)
ffffffffc00002b4:	ef068823          	sb	a6,-272(a3)
ffffffffc00002b8:	00078713          	mv	a4,a5
ffffffffc00002bc:	eee68823          	sb	a4,-272(a3)
ffffffffc00002c0:	00158593          	addi	a1,a1,1
ffffffffc00002c4:	fff60613          	addi	a2,a2,-1
ffffffffc00002c8:	fe0610e3          	bnez	a2,ffffffffc00002a8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha407aa4d27107cf6E+0x3c>
ffffffffc00002cc:	00000513          	li	a0,0
ffffffffc00002d0:	00013403          	ld	s0,0(sp)
ffffffffc00002d4:	00813083          	ld	ra,8(sp)
ffffffffc00002d8:	01010113          	addi	sp,sp,16
ffffffffc00002dc:	00008067          	ret

ffffffffc00002e0 <abort>:
ffffffffc00002e0:	ff010113          	addi	sp,sp,-16
ffffffffc00002e4:	00113423          	sd	ra,8(sp)
ffffffffc00002e8:	00813023          	sd	s0,0(sp)
ffffffffc00002ec:	01010413          	addi	s0,sp,16
ffffffffc00002f0:	c0004537          	lui	a0,0xc0004
ffffffffc00002f4:	16850513          	addi	a0,a0,360 # ffffffffc0004168 <.Lanon.92ae609f133ff3667839cadd6e6eb4d8.42>
ffffffffc00002f8:	00001097          	auipc	ra,0x1
ffffffffc00002fc:	7e0080e7          	jalr	2016(ra) # ffffffffc0001ad8 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0000300:	00000097          	auipc	ra,0x0
ffffffffc0000304:	fe0080e7          	jalr	-32(ra) # ffffffffc00002e0 <abort>

ffffffffc0000308 <__atomic_load_4>:
ffffffffc0000308:	fe010113          	addi	sp,sp,-32
ffffffffc000030c:	00113c23          	sd	ra,24(sp)
ffffffffc0000310:	00813823          	sd	s0,16(sp)
ffffffffc0000314:	00913423          	sd	s1,8(sp)
ffffffffc0000318:	02010413          	addi	s0,sp,32
ffffffffc000031c:	00050493          	mv	s1,a0
ffffffffc0000320:	10002573          	csrr	a0,sstatus
ffffffffc0000324:	fea43023          	sd	a0,-32(s0)
ffffffffc0000328:	fe040513          	addi	a0,s0,-32
ffffffffc000032c:	00100593          	li	a1,1
ffffffffc0000330:	00001097          	auipc	ra,0x1
ffffffffc0000334:	b4c080e7          	jalr	-1204(ra) # ffffffffc0000e7c <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>
ffffffffc0000338:	00050593          	mv	a1,a0
ffffffffc000033c:	00200613          	li	a2,2
ffffffffc0000340:	10063073          	csrc	sstatus,a2
ffffffffc0000344:	0004e503          	lwu	a0,0(s1)
ffffffffc0000348:	00058463          	beqz	a1,ffffffffc0000350 <__atomic_load_4+0x48>
ffffffffc000034c:	10062073          	csrs	sstatus,a2
ffffffffc0000350:	00813483          	ld	s1,8(sp)
ffffffffc0000354:	01013403          	ld	s0,16(sp)
ffffffffc0000358:	01813083          	ld	ra,24(sp)
ffffffffc000035c:	02010113          	addi	sp,sp,32
ffffffffc0000360:	00008067          	ret

ffffffffc0000364 <__atomic_store_4>:
ffffffffc0000364:	fd010113          	addi	sp,sp,-48
ffffffffc0000368:	02113423          	sd	ra,40(sp)
ffffffffc000036c:	02813023          	sd	s0,32(sp)
ffffffffc0000370:	00913c23          	sd	s1,24(sp)
ffffffffc0000374:	01213823          	sd	s2,16(sp)
ffffffffc0000378:	03010413          	addi	s0,sp,48
ffffffffc000037c:	00058913          	mv	s2,a1
ffffffffc0000380:	00050493          	mv	s1,a0
ffffffffc0000384:	10002573          	csrr	a0,sstatus
ffffffffc0000388:	fca43c23          	sd	a0,-40(s0)
ffffffffc000038c:	fd840513          	addi	a0,s0,-40
ffffffffc0000390:	00100593          	li	a1,1
ffffffffc0000394:	00001097          	auipc	ra,0x1
ffffffffc0000398:	ae8080e7          	jalr	-1304(ra) # ffffffffc0000e7c <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>
ffffffffc000039c:	00200593          	li	a1,2
ffffffffc00003a0:	1005b073          	csrc	sstatus,a1
ffffffffc00003a4:	0124a023          	sw	s2,0(s1)
ffffffffc00003a8:	00050463          	beqz	a0,ffffffffc00003b0 <__atomic_store_4+0x4c>
ffffffffc00003ac:	1005a073          	csrs	sstatus,a1
ffffffffc00003b0:	01013903          	ld	s2,16(sp)
ffffffffc00003b4:	01813483          	ld	s1,24(sp)
ffffffffc00003b8:	02013403          	ld	s0,32(sp)
ffffffffc00003bc:	02813083          	ld	ra,40(sp)
ffffffffc00003c0:	03010113          	addi	sp,sp,48
ffffffffc00003c4:	00008067          	ret

ffffffffc00003c8 <__atomic_load_8>:
ffffffffc00003c8:	fe010113          	addi	sp,sp,-32
ffffffffc00003cc:	00113c23          	sd	ra,24(sp)
ffffffffc00003d0:	00813823          	sd	s0,16(sp)
ffffffffc00003d4:	00913423          	sd	s1,8(sp)
ffffffffc00003d8:	02010413          	addi	s0,sp,32
ffffffffc00003dc:	00050493          	mv	s1,a0
ffffffffc00003e0:	10002573          	csrr	a0,sstatus
ffffffffc00003e4:	fea43023          	sd	a0,-32(s0)
ffffffffc00003e8:	fe040513          	addi	a0,s0,-32
ffffffffc00003ec:	00100593          	li	a1,1
ffffffffc00003f0:	00001097          	auipc	ra,0x1
ffffffffc00003f4:	a8c080e7          	jalr	-1396(ra) # ffffffffc0000e7c <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>
ffffffffc00003f8:	00050593          	mv	a1,a0
ffffffffc00003fc:	00200613          	li	a2,2
ffffffffc0000400:	10063073          	csrc	sstatus,a2
ffffffffc0000404:	0004b503          	ld	a0,0(s1)
ffffffffc0000408:	00058463          	beqz	a1,ffffffffc0000410 <__atomic_load_8+0x48>
ffffffffc000040c:	10062073          	csrs	sstatus,a2
ffffffffc0000410:	00813483          	ld	s1,8(sp)
ffffffffc0000414:	01013403          	ld	s0,16(sp)
ffffffffc0000418:	01813083          	ld	ra,24(sp)
ffffffffc000041c:	02010113          	addi	sp,sp,32
ffffffffc0000420:	00008067          	ret

ffffffffc0000424 <__atomic_store_8>:
ffffffffc0000424:	fd010113          	addi	sp,sp,-48
ffffffffc0000428:	02113423          	sd	ra,40(sp)
ffffffffc000042c:	02813023          	sd	s0,32(sp)
ffffffffc0000430:	00913c23          	sd	s1,24(sp)
ffffffffc0000434:	01213823          	sd	s2,16(sp)
ffffffffc0000438:	03010413          	addi	s0,sp,48
ffffffffc000043c:	00058913          	mv	s2,a1
ffffffffc0000440:	00050493          	mv	s1,a0
ffffffffc0000444:	10002573          	csrr	a0,sstatus
ffffffffc0000448:	fca43c23          	sd	a0,-40(s0)
ffffffffc000044c:	fd840513          	addi	a0,s0,-40
ffffffffc0000450:	00100593          	li	a1,1
ffffffffc0000454:	00001097          	auipc	ra,0x1
ffffffffc0000458:	a28080e7          	jalr	-1496(ra) # ffffffffc0000e7c <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>
ffffffffc000045c:	00200593          	li	a1,2
ffffffffc0000460:	1005b073          	csrc	sstatus,a1
ffffffffc0000464:	0124b023          	sd	s2,0(s1)
ffffffffc0000468:	00050463          	beqz	a0,ffffffffc0000470 <__atomic_store_8+0x4c>
ffffffffc000046c:	1005a073          	csrs	sstatus,a1
ffffffffc0000470:	01013903          	ld	s2,16(sp)
ffffffffc0000474:	01813483          	ld	s1,24(sp)
ffffffffc0000478:	02013403          	ld	s0,32(sp)
ffffffffc000047c:	02813083          	ld	ra,40(sp)
ffffffffc0000480:	03010113          	addi	sp,sp,48
ffffffffc0000484:	00008067          	ret

ffffffffc0000488 <__atomic_compare_exchange_4>:
ffffffffc0000488:	fd010113          	addi	sp,sp,-48
ffffffffc000048c:	02113423          	sd	ra,40(sp)
ffffffffc0000490:	02813023          	sd	s0,32(sp)
ffffffffc0000494:	00913c23          	sd	s1,24(sp)
ffffffffc0000498:	01213823          	sd	s2,16(sp)
ffffffffc000049c:	01313423          	sd	s3,8(sp)
ffffffffc00004a0:	03010413          	addi	s0,sp,48
ffffffffc00004a4:	00060913          	mv	s2,a2
ffffffffc00004a8:	00058993          	mv	s3,a1
ffffffffc00004ac:	00050493          	mv	s1,a0
ffffffffc00004b0:	10002573          	csrr	a0,sstatus
ffffffffc00004b4:	fca43823          	sd	a0,-48(s0)
ffffffffc00004b8:	fd040513          	addi	a0,s0,-48
ffffffffc00004bc:	00100593          	li	a1,1
ffffffffc00004c0:	00001097          	auipc	ra,0x1
ffffffffc00004c4:	9bc080e7          	jalr	-1604(ra) # ffffffffc0000e7c <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>
ffffffffc00004c8:	00200593          	li	a1,2
ffffffffc00004cc:	1005b073          	csrc	sstatus,a1
ffffffffc00004d0:	0009a703          	lw	a4,0(s3)
ffffffffc00004d4:	02071613          	slli	a2,a4,0x20
ffffffffc00004d8:	02065613          	srli	a2,a2,0x20
ffffffffc00004dc:	0004a783          	lw	a5,0(s1)
ffffffffc00004e0:	02079693          	slli	a3,a5,0x20
ffffffffc00004e4:	0206d693          	srli	a3,a3,0x20
ffffffffc00004e8:	00e79a63          	bne	a5,a4,ffffffffc00004fc <__atomic_compare_exchange_4+0x74>
ffffffffc00004ec:	0124a023          	sw	s2,0(s1)
ffffffffc00004f0:	00050c63          	beqz	a0,ffffffffc0000508 <__atomic_compare_exchange_4+0x80>
ffffffffc00004f4:	1005a073          	csrs	sstatus,a1
ffffffffc00004f8:	0100006f          	j	ffffffffc0000508 <__atomic_compare_exchange_4+0x80>
ffffffffc00004fc:	00d9a023          	sw	a3,0(s3)
ffffffffc0000500:	00050463          	beqz	a0,ffffffffc0000508 <__atomic_compare_exchange_4+0x80>
ffffffffc0000504:	1005a073          	csrs	sstatus,a1
ffffffffc0000508:	0006051b          	sext.w	a0,a2
ffffffffc000050c:	0006859b          	sext.w	a1,a3
ffffffffc0000510:	00a5c533          	xor	a0,a1,a0
ffffffffc0000514:	00153513          	seqz	a0,a0
ffffffffc0000518:	00813983          	ld	s3,8(sp)
ffffffffc000051c:	01013903          	ld	s2,16(sp)
ffffffffc0000520:	01813483          	ld	s1,24(sp)
ffffffffc0000524:	02013403          	ld	s0,32(sp)
ffffffffc0000528:	02813083          	ld	ra,40(sp)
ffffffffc000052c:	03010113          	addi	sp,sp,48
ffffffffc0000530:	00008067          	ret

ffffffffc0000534 <__atomic_compare_exchange_8>:
ffffffffc0000534:	fd010113          	addi	sp,sp,-48
ffffffffc0000538:	02113423          	sd	ra,40(sp)
ffffffffc000053c:	02813023          	sd	s0,32(sp)
ffffffffc0000540:	00913c23          	sd	s1,24(sp)
ffffffffc0000544:	01213823          	sd	s2,16(sp)
ffffffffc0000548:	01313423          	sd	s3,8(sp)
ffffffffc000054c:	03010413          	addi	s0,sp,48
ffffffffc0000550:	00060913          	mv	s2,a2
ffffffffc0000554:	00058993          	mv	s3,a1
ffffffffc0000558:	00050493          	mv	s1,a0
ffffffffc000055c:	10002573          	csrr	a0,sstatus
ffffffffc0000560:	fca43823          	sd	a0,-48(s0)
ffffffffc0000564:	fd040513          	addi	a0,s0,-48
ffffffffc0000568:	00100593          	li	a1,1
ffffffffc000056c:	00001097          	auipc	ra,0x1
ffffffffc0000570:	910080e7          	jalr	-1776(ra) # ffffffffc0000e7c <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>
ffffffffc0000574:	00200613          	li	a2,2
ffffffffc0000578:	10063073          	csrc	sstatus,a2
ffffffffc000057c:	0009b583          	ld	a1,0(s3)
ffffffffc0000580:	0004b683          	ld	a3,0(s1)
ffffffffc0000584:	00b69a63          	bne	a3,a1,ffffffffc0000598 <__atomic_compare_exchange_8+0x64>
ffffffffc0000588:	0124b023          	sd	s2,0(s1)
ffffffffc000058c:	00050c63          	beqz	a0,ffffffffc00005a4 <__atomic_compare_exchange_8+0x70>
ffffffffc0000590:	10062073          	csrs	sstatus,a2
ffffffffc0000594:	0100006f          	j	ffffffffc00005a4 <__atomic_compare_exchange_8+0x70>
ffffffffc0000598:	00d9b023          	sd	a3,0(s3)
ffffffffc000059c:	00050463          	beqz	a0,ffffffffc00005a4 <__atomic_compare_exchange_8+0x70>
ffffffffc00005a0:	10062073          	csrs	sstatus,a2
ffffffffc00005a4:	00b6c533          	xor	a0,a3,a1
ffffffffc00005a8:	00153513          	seqz	a0,a0
ffffffffc00005ac:	00813983          	ld	s3,8(sp)
ffffffffc00005b0:	01013903          	ld	s2,16(sp)
ffffffffc00005b4:	01813483          	ld	s1,24(sp)
ffffffffc00005b8:	02013403          	ld	s0,32(sp)
ffffffffc00005bc:	02813083          	ld	ra,40(sp)
ffffffffc00005c0:	03010113          	addi	sp,sp,48
ffffffffc00005c4:	00008067          	ret

ffffffffc00005c8 <rust_main>:
ffffffffc00005c8:	fc010113          	addi	sp,sp,-64
ffffffffc00005cc:	02113c23          	sd	ra,56(sp)
ffffffffc00005d0:	02813823          	sd	s0,48(sp)
ffffffffc00005d4:	04010413          	addi	s0,sp,64
ffffffffc00005d8:	fe043423          	sd	zero,-24(s0)
ffffffffc00005dc:	fc043823          	sd	zero,-48(s0)
ffffffffc00005e0:	00100513          	li	a0,1
ffffffffc00005e4:	fca43423          	sd	a0,-56(s0)
ffffffffc00005e8:	c0004537          	lui	a0,0xc0004
ffffffffc00005ec:	19050513          	addi	a0,a0,400 # ffffffffc0004190 <.Lanon.cf9dc1e5aa4d189ae143dbcf42a6f840.91>
ffffffffc00005f0:	fea43023          	sd	a0,-32(s0)
ffffffffc00005f4:	c0004537          	lui	a0,0xc0004
ffffffffc00005f8:	1a050513          	addi	a0,a0,416 # ffffffffc00041a0 <.Lanon.cf9dc1e5aa4d189ae143dbcf42a6f840.92>
ffffffffc00005fc:	fca43023          	sd	a0,-64(s0)
ffffffffc0000600:	fc040513          	addi	a0,s0,-64
ffffffffc0000604:	00000097          	auipc	ra,0x0
ffffffffc0000608:	320080e7          	jalr	800(ra) # ffffffffc0000924 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE>
ffffffffc000060c:	0000006f          	j	ffffffffc000060c <rust_main+0x44>

ffffffffc0000610 <_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c5391660d5391c3E.llvm.16372150097381141863>:
ffffffffc0000610:	fc010113          	addi	sp,sp,-64
ffffffffc0000614:	02113c23          	sd	ra,56(sp)
ffffffffc0000618:	02813823          	sd	s0,48(sp)
ffffffffc000061c:	02913423          	sd	s1,40(sp)
ffffffffc0000620:	03213023          	sd	s2,32(sp)
ffffffffc0000624:	01313c23          	sd	s3,24(sp)
ffffffffc0000628:	01413823          	sd	s4,16(sp)
ffffffffc000062c:	01513423          	sd	s5,8(sp)
ffffffffc0000630:	04010413          	addi	s0,sp,64
ffffffffc0000634:	00058493          	mv	s1,a1
ffffffffc0000638:	00050913          	mv	s2,a0
ffffffffc000063c:	0505ea83          	lwu	s5,80(a1)
ffffffffc0000640:	0085ba03          	ld	s4,8(a1)
ffffffffc0000644:	0005b983          	ld	s3,0(a1)
ffffffffc0000648:	00058513          	mv	a0,a1
ffffffffc000064c:	00002097          	auipc	ra,0x2
ffffffffc0000650:	1e8080e7          	jalr	488(ra) # ffffffffc0002834 <_ZN4core3fmt9Formatter9alternate17hdc33dae1f8ce40c8E>
ffffffffc0000654:	0504e583          	lwu	a1,80(s1)
ffffffffc0000658:	02050263          	beqz	a0,ffffffffc000067c <_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c5391660d5391c3E.llvm.16372150097381141863+0x6c>
ffffffffc000065c:	0085e593          	ori	a1,a1,8
ffffffffc0000660:	04b4a823          	sw	a1,80(s1)
ffffffffc0000664:	0004b503          	ld	a0,0(s1)
ffffffffc0000668:	00051a63          	bnez	a0,ffffffffc000067c <_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c5391660d5391c3E.llvm.16372150097381141863+0x6c>
ffffffffc000066c:	00100513          	li	a0,1
ffffffffc0000670:	00a4b023          	sd	a0,0(s1)
ffffffffc0000674:	01200513          	li	a0,18
ffffffffc0000678:	00a4b423          	sd	a0,8(s1)
ffffffffc000067c:	0045e513          	ori	a0,a1,4
ffffffffc0000680:	04a4a823          	sw	a0,80(s1)
ffffffffc0000684:	00093503          	ld	a0,0(s2)
ffffffffc0000688:	fca43023          	sd	a0,-64(s0)
ffffffffc000068c:	fc040513          	addi	a0,s0,-64
ffffffffc0000690:	00048593          	mv	a1,s1
ffffffffc0000694:	00001097          	auipc	ra,0x1
ffffffffc0000698:	a90080e7          	jalr	-1392(ra) # ffffffffc0001124 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h4e3d261f6c3eb358E>
ffffffffc000069c:	0554a823          	sw	s5,80(s1)
ffffffffc00006a0:	0144b423          	sd	s4,8(s1)
ffffffffc00006a4:	0134b023          	sd	s3,0(s1)
ffffffffc00006a8:	00813a83          	ld	s5,8(sp)
ffffffffc00006ac:	01013a03          	ld	s4,16(sp)
ffffffffc00006b0:	01813983          	ld	s3,24(sp)
ffffffffc00006b4:	02013903          	ld	s2,32(sp)
ffffffffc00006b8:	02813483          	ld	s1,40(sp)
ffffffffc00006bc:	03013403          	ld	s0,48(sp)
ffffffffc00006c0:	03813083          	ld	ra,56(sp)
ffffffffc00006c4:	04010113          	addi	sp,sp,64
ffffffffc00006c8:	00008067          	ret

ffffffffc00006cc <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E>:
ffffffffc00006cc:	f1010113          	addi	sp,sp,-240
ffffffffc00006d0:	0e113423          	sd	ra,232(sp)
ffffffffc00006d4:	0e813023          	sd	s0,224(sp)
ffffffffc00006d8:	0c913c23          	sd	s1,216(sp)
ffffffffc00006dc:	0d213823          	sd	s2,208(sp)
ffffffffc00006e0:	0d313423          	sd	s3,200(sp)
ffffffffc00006e4:	0d413023          	sd	s4,192(sp)
ffffffffc00006e8:	0b513c23          	sd	s5,184(sp)
ffffffffc00006ec:	0b613823          	sd	s6,176(sp)
ffffffffc00006f0:	0b713423          	sd	s7,168(sp)
ffffffffc00006f4:	0b813023          	sd	s8,160(sp)
ffffffffc00006f8:	09913c23          	sd	s9,152(sp)
ffffffffc00006fc:	09a13823          	sd	s10,144(sp)
ffffffffc0000700:	09b13423          	sd	s11,136(sp)
ffffffffc0000704:	0f010413          	addi	s0,sp,240
ffffffffc0000708:	00050993          	mv	s3,a0
ffffffffc000070c:	10002573          	csrr	a0,sstatus
ffffffffc0000710:	f6a43023          	sd	a0,-160(s0)
ffffffffc0000714:	f6040513          	addi	a0,s0,-160
ffffffffc0000718:	00100a93          	li	s5,1
ffffffffc000071c:	000a8593          	mv	a1,s5
ffffffffc0000720:	00000097          	auipc	ra,0x0
ffffffffc0000724:	75c080e7          	jalr	1884(ra) # ffffffffc0000e7c <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>
ffffffffc0000728:	f0a43c23          	sd	a0,-232(s0)
ffffffffc000072c:	00200693          	li	a3,2
ffffffffc0000730:	1006b073          	csrc	sstatus,a3
ffffffffc0000734:	f6042023          	sw	zero,-160(s0)
ffffffffc0000738:	01098493          	addi	s1,s3,16
ffffffffc000073c:	f6040593          	addi	a1,s0,-160
ffffffffc0000740:	00048513          	mv	a0,s1
ffffffffc0000744:	000a8613          	mv	a2,s5
ffffffffc0000748:	00068713          	mv	a4,a3
ffffffffc000074c:	00000097          	auipc	ra,0x0
ffffffffc0000750:	d3c080e7          	jalr	-708(ra) # ffffffffc0000488 <__atomic_compare_exchange_4>
ffffffffc0000754:	12051263          	bnez	a0,ffffffffc0000878 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0x1ac>
ffffffffc0000758:	00100a93          	li	s5,1
ffffffffc000075c:	00100d37          	lui	s10,0x100
ffffffffc0000760:	c0028537          	lui	a0,0xc0028
ffffffffc0000764:	e3050b93          	addi	s7,a0,-464 # ffffffffc0027e30 <_ZN3log20MAX_LOG_LEVEL_FILTER17hc28b96925e30fb0cE>
ffffffffc0000768:	c0000537          	lui	a0,0xc0000
ffffffffc000076c:	61050d93          	addi	s11,a0,1552 # ffffffffc0000610 <_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c5391660d5391c3E.llvm.16372150097381141863>
ffffffffc0000770:	c0001537          	lui	a0,0xc0001
ffffffffc0000774:	6cc50913          	addi	s2,a0,1740 # ffffffffc00016cc <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>
ffffffffc0000778:	00300b13          	li	s6,3
ffffffffc000077c:	c0004537          	lui	a0,0xc0004
ffffffffc0000780:	1e850a13          	addi	s4,a0,488 # ffffffffc00041e8 <anon.c8ae6708d3f9347f8b66c09830c9fdd6.3.llvm.16372150097381141863>
ffffffffc0000784:	c0004537          	lui	a0,0xc0004
ffffffffc0000788:	24050c13          	addi	s8,a0,576 # ffffffffc0004240 <anon.c8ae6708d3f9347f8b66c09830c9fdd6.6.llvm.16372150097381141863>
ffffffffc000078c:	00048513          	mv	a0,s1
ffffffffc0000790:	00000593          	li	a1,0
ffffffffc0000794:	00000097          	auipc	ra,0x0
ffffffffc0000798:	b74080e7          	jalr	-1164(ra) # ffffffffc0000308 <__atomic_load_4>
ffffffffc000079c:	02051513          	slli	a0,a0,0x20
ffffffffc00007a0:	02055513          	srli	a0,a0,0x20
ffffffffc00007a4:	0a050863          	beqz	a0,ffffffffc0000854 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0x188>
ffffffffc00007a8:	00000c93          	li	s9,0
ffffffffc00007ac:	00000013          	nop
ffffffffc00007b0:	001c8c93          	addi	s9,s9,1
ffffffffc00007b4:	020c9513          	slli	a0,s9,0x20
ffffffffc00007b8:	02055513          	srli	a0,a0,0x20
ffffffffc00007bc:	07a51e63          	bne	a0,s10,ffffffffc0000838 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0x16c>
ffffffffc00007c0:	0089b503          	ld	a0,8(s3)
ffffffffc00007c4:	0009b583          	ld	a1,0(s3)
ffffffffc00007c8:	f2b43023          	sd	a1,-224(s0)
ffffffffc00007cc:	f2a43423          	sd	a0,-216(s0)
ffffffffc00007d0:	000b8513          	mv	a0,s7
ffffffffc00007d4:	00000593          	li	a1,0
ffffffffc00007d8:	00000097          	auipc	ra,0x0
ffffffffc00007dc:	bf0080e7          	jalr	-1040(ra) # ffffffffc00003c8 <__atomic_load_8>
ffffffffc00007e0:	04050c63          	beqz	a0,ffffffffc0000838 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0x16c>
ffffffffc00007e4:	f9b43423          	sd	s11,-120(s0)
ffffffffc00007e8:	f9040513          	addi	a0,s0,-112
ffffffffc00007ec:	f8a43023          	sd	a0,-128(s0)
ffffffffc00007f0:	f2840513          	addi	a0,s0,-216
ffffffffc00007f4:	f6a43823          	sd	a0,-144(s0)
ffffffffc00007f8:	f7243c23          	sd	s2,-136(s0)
ffffffffc00007fc:	f7243423          	sd	s2,-152(s0)
ffffffffc0000800:	f2040513          	addi	a0,s0,-224
ffffffffc0000804:	f6a43023          	sd	a0,-160(s0)
ffffffffc0000808:	f9343823          	sd	s3,-112(s0)
ffffffffc000080c:	f6040513          	addi	a0,s0,-160
ffffffffc0000810:	f4a43823          	sd	a0,-176(s0)
ffffffffc0000814:	f4043023          	sd	zero,-192(s0)
ffffffffc0000818:	f5643c23          	sd	s6,-168(s0)
ffffffffc000081c:	f3643c23          	sd	s6,-200(s0)
ffffffffc0000820:	f3443823          	sd	s4,-208(s0)
ffffffffc0000824:	f3040513          	addi	a0,s0,-208
ffffffffc0000828:	000a8593          	mv	a1,s5
ffffffffc000082c:	000c0613          	mv	a2,s8
ffffffffc0000830:	00000097          	auipc	ra,0x0
ffffffffc0000834:	7b8080e7          	jalr	1976(ra) # ffffffffc0000fe8 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc0000838:	00048513          	mv	a0,s1
ffffffffc000083c:	00000593          	li	a1,0
ffffffffc0000840:	00000097          	auipc	ra,0x0
ffffffffc0000844:	ac8080e7          	jalr	-1336(ra) # ffffffffc0000308 <__atomic_load_4>
ffffffffc0000848:	02051513          	slli	a0,a0,0x20
ffffffffc000084c:	02055513          	srli	a0,a0,0x20
ffffffffc0000850:	f4051ee3          	bnez	a0,ffffffffc00007ac <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0xe0>
ffffffffc0000854:	f6042023          	sw	zero,-160(s0)
ffffffffc0000858:	00048513          	mv	a0,s1
ffffffffc000085c:	f6040593          	addi	a1,s0,-160
ffffffffc0000860:	000a8613          	mv	a2,s5
ffffffffc0000864:	00200693          	li	a3,2
ffffffffc0000868:	00068713          	mv	a4,a3
ffffffffc000086c:	00000097          	auipc	ra,0x0
ffffffffc0000870:	c1c080e7          	jalr	-996(ra) # ffffffffc0000488 <__atomic_compare_exchange_4>
ffffffffc0000874:	f0050ce3          	beqz	a0,ffffffffc000078c <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0xc0>
ffffffffc0000878:	00018693          	mv	a3,gp
ffffffffc000087c:	04000513          	li	a0,64
ffffffffc0000880:	08a6f263          	bgeu	a3,a0,ffffffffc0000904 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0x238>
ffffffffc0000884:	00018493          	mv	s1,gp
ffffffffc0000888:	03800593          	li	a1,56
ffffffffc000088c:	00068513          	mv	a0,a3
ffffffffc0000890:	00003097          	auipc	ra,0x3
ffffffffc0000894:	ac4080e7          	jalr	-1340(ra) # ffffffffc0003354 <__muldi3>
ffffffffc0000898:	c00275b7          	lui	a1,0xc0027
ffffffffc000089c:	02858593          	addi	a1,a1,40 # ffffffffc0027028 <_ZN5rcore7process10PROCESSORS17hf462062560b59999E.llvm.8779777836745146182>
ffffffffc00008a0:	00b50533          	add	a0,a0,a1
ffffffffc00008a4:	00000097          	auipc	ra,0x0
ffffffffc00008a8:	62c080e7          	jalr	1580(ra) # ffffffffc0000ed0 <_ZN12rcore_thread9processor9Processor10tid_option17hadef156e4b87ab78E>
ffffffffc00008ac:	0099b023          	sd	s1,0(s3)
ffffffffc00008b0:	00000613          	li	a2,0
ffffffffc00008b4:	00050463          	beqz	a0,ffffffffc00008bc <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0x1f0>
ffffffffc00008b8:	00058613          	mv	a2,a1
ffffffffc00008bc:	00c9b423          	sd	a2,8(s3)
ffffffffc00008c0:	00098513          	mv	a0,s3
ffffffffc00008c4:	f1843583          	ld	a1,-232(s0)
ffffffffc00008c8:	08813d83          	ld	s11,136(sp)
ffffffffc00008cc:	09013d03          	ld	s10,144(sp)
ffffffffc00008d0:	09813c83          	ld	s9,152(sp)
ffffffffc00008d4:	0a013c03          	ld	s8,160(sp)
ffffffffc00008d8:	0a813b83          	ld	s7,168(sp)
ffffffffc00008dc:	0b013b03          	ld	s6,176(sp)
ffffffffc00008e0:	0b813a83          	ld	s5,184(sp)
ffffffffc00008e4:	0c013a03          	ld	s4,192(sp)
ffffffffc00008e8:	0c813983          	ld	s3,200(sp)
ffffffffc00008ec:	0d013903          	ld	s2,208(sp)
ffffffffc00008f0:	0d813483          	ld	s1,216(sp)
ffffffffc00008f4:	0e013403          	ld	s0,224(sp)
ffffffffc00008f8:	0e813083          	ld	ra,232(sp)
ffffffffc00008fc:	0f010113          	addi	sp,sp,240
ffffffffc0000900:	00008067          	ret
ffffffffc0000904:	c0004537          	lui	a0,0xc0004
ffffffffc0000908:	54850513          	addi	a0,a0,1352 # ffffffffc0004548 <anon.0456b34b9222a12e0a8f90e19a843365.82.llvm.8779777836745146182>
ffffffffc000090c:	04000613          	li	a2,64
ffffffffc0000910:	00068593          	mv	a1,a3
ffffffffc0000914:	00001097          	auipc	ra,0x1
ffffffffc0000918:	238080e7          	jalr	568(ra) # ffffffffc0001b4c <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc000091c:	00000097          	auipc	ra,0x0
ffffffffc0000920:	9c4080e7          	jalr	-1596(ra) # ffffffffc00002e0 <abort>

ffffffffc0000924 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE>:
ffffffffc0000924:	f6010113          	addi	sp,sp,-160
ffffffffc0000928:	08113c23          	sd	ra,152(sp)
ffffffffc000092c:	08813823          	sd	s0,144(sp)
ffffffffc0000930:	08913423          	sd	s1,136(sp)
ffffffffc0000934:	09213023          	sd	s2,128(sp)
ffffffffc0000938:	07313c23          	sd	s3,120(sp)
ffffffffc000093c:	07413823          	sd	s4,112(sp)
ffffffffc0000940:	0a010413          	addi	s0,sp,160
ffffffffc0000944:	00050913          	mv	s2,a0
ffffffffc0000948:	c0027537          	lui	a0,0xc0027
ffffffffc000094c:	00050493          	mv	s1,a0
ffffffffc0000950:	00500593          	li	a1,5
ffffffffc0000954:	00048513          	mv	a0,s1
ffffffffc0000958:	00000097          	auipc	ra,0x0
ffffffffc000095c:	a70080e7          	jalr	-1424(ra) # ffffffffc00003c8 <__atomic_load_8>
ffffffffc0000960:	02050e63          	beqz	a0,ffffffffc000099c <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x78>
ffffffffc0000964:	00100a13          	li	s4,1
ffffffffc0000968:	00500993          	li	s3,5
ffffffffc000096c:	01451c63          	bne	a0,s4,ffffffffc0000984 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x60>
ffffffffc0000970:	00048513          	mv	a0,s1
ffffffffc0000974:	00098593          	mv	a1,s3
ffffffffc0000978:	00000097          	auipc	ra,0x0
ffffffffc000097c:	a50080e7          	jalr	-1456(ra) # ffffffffc00003c8 <__atomic_load_8>
ffffffffc0000980:	ff4508e3          	beq	a0,s4,ffffffffc0000970 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x4c>
ffffffffc0000984:	00200593          	li	a1,2
ffffffffc0000988:	18b51663          	bne	a0,a1,ffffffffc0000b14 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x1f0>
ffffffffc000098c:	0084b503          	ld	a0,8(s1)
ffffffffc0000990:	07450a63          	beq	a0,s4,ffffffffc0000a04 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0xe0>
ffffffffc0000994:	00000513          	li	a0,0
ffffffffc0000998:	0700006f          	j	ffffffffc0000a08 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0xe4>
ffffffffc000099c:	f8043c23          	sd	zero,-104(s0)
ffffffffc00009a0:	f9840593          	addi	a1,s0,-104
ffffffffc00009a4:	00100993          	li	s3,1
ffffffffc00009a8:	00500693          	li	a3,5
ffffffffc00009ac:	00048513          	mv	a0,s1
ffffffffc00009b0:	00098613          	mv	a2,s3
ffffffffc00009b4:	00068713          	mv	a4,a3
ffffffffc00009b8:	00000097          	auipc	ra,0x0
ffffffffc00009bc:	b7c080e7          	jalr	-1156(ra) # ffffffffc0000534 <__atomic_compare_exchange_8>
ffffffffc00009c0:	14050063          	beqz	a0,ffffffffc0000b00 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x1dc>
ffffffffc00009c4:	0134b423          	sd	s3,8(s1)
ffffffffc00009c8:	0204a023          	sw	zero,32(s1)
ffffffffc00009cc:	0004bc23          	sd	zero,24(s1)
ffffffffc00009d0:	0004b823          	sd	zero,16(s1)
ffffffffc00009d4:	fa040023          	sb	zero,-96(s0)
ffffffffc00009d8:	f8943c23          	sd	s1,-104(s0)
ffffffffc00009dc:	00200593          	li	a1,2
ffffffffc00009e0:	00500613          	li	a2,5
ffffffffc00009e4:	00048513          	mv	a0,s1
ffffffffc00009e8:	00000097          	auipc	ra,0x0
ffffffffc00009ec:	a3c080e7          	jalr	-1476(ra) # ffffffffc0000424 <__atomic_store_8>
ffffffffc00009f0:	0084ba03          	ld	s4,8(s1)
ffffffffc00009f4:	f9840513          	addi	a0,s0,-104
ffffffffc00009f8:	00000097          	auipc	ra,0x0
ffffffffc00009fc:	530080e7          	jalr	1328(ra) # ffffffffc0000f28 <_ZN74_$LT$spin..once..Finish$LT$$u27$a$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h654284c2fdccbe76E>
ffffffffc0000a00:	f93a1ae3          	bne	s4,s3,ffffffffc0000994 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x70>
ffffffffc0000a04:	01048513          	addi	a0,s1,16
ffffffffc0000a08:	00000097          	auipc	ra,0x0
ffffffffc0000a0c:	cc4080e7          	jalr	-828(ra) # ffffffffc00006cc <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E>
ffffffffc0000a10:	00050493          	mv	s1,a0
ffffffffc0000a14:	00058993          	mv	s3,a1
ffffffffc0000a18:	02893503          	ld	a0,40(s2)
ffffffffc0000a1c:	f8a43423          	sd	a0,-120(s0)
ffffffffc0000a20:	02093503          	ld	a0,32(s2)
ffffffffc0000a24:	f8a43023          	sd	a0,-128(s0)
ffffffffc0000a28:	01893503          	ld	a0,24(s2)
ffffffffc0000a2c:	f6a43c23          	sd	a0,-136(s0)
ffffffffc0000a30:	01093503          	ld	a0,16(s2)
ffffffffc0000a34:	f6a43823          	sd	a0,-144(s0)
ffffffffc0000a38:	00893503          	ld	a0,8(s2)
ffffffffc0000a3c:	f6a43423          	sd	a0,-152(s0)
ffffffffc0000a40:	00093503          	ld	a0,0(s2)
ffffffffc0000a44:	f6a43023          	sd	a0,-160(s0)
ffffffffc0000a48:	00247537          	lui	a0,0x247
ffffffffc0000a4c:	8ad5051b          	addiw	a0,a0,-1875
ffffffffc0000a50:	00e51513          	slli	a0,a0,0xe
ffffffffc0000a54:	c4d50513          	addi	a0,a0,-947 # 246c4d <XLENb+0x246c0d>
ffffffffc0000a58:	00c51513          	slli	a0,a0,0xc
ffffffffc0000a5c:	5e750513          	addi	a0,a0,1511
ffffffffc0000a60:	00d51513          	slli	a0,a0,0xd
ffffffffc0000a64:	05000593          	li	a1,80
ffffffffc0000a68:	eeb50823          	sb	a1,-272(a0)
ffffffffc0000a6c:	fc840513          	addi	a0,s0,-56
ffffffffc0000a70:	f8a43823          	sd	a0,-112(s0)
ffffffffc0000a74:	f8843503          	ld	a0,-120(s0)
ffffffffc0000a78:	fca43023          	sd	a0,-64(s0)
ffffffffc0000a7c:	f8043503          	ld	a0,-128(s0)
ffffffffc0000a80:	faa43c23          	sd	a0,-72(s0)
ffffffffc0000a84:	f7843503          	ld	a0,-136(s0)
ffffffffc0000a88:	faa43823          	sd	a0,-80(s0)
ffffffffc0000a8c:	f7043503          	ld	a0,-144(s0)
ffffffffc0000a90:	faa43423          	sd	a0,-88(s0)
ffffffffc0000a94:	f6843503          	ld	a0,-152(s0)
ffffffffc0000a98:	faa43023          	sd	a0,-96(s0)
ffffffffc0000a9c:	f6043503          	ld	a0,-160(s0)
ffffffffc0000aa0:	f8a43c23          	sd	a0,-104(s0)
ffffffffc0000aa4:	c0004537          	lui	a0,0xc0004
ffffffffc0000aa8:	11050593          	addi	a1,a0,272 # ffffffffc0004110 <anon.92ae609f133ff3667839cadd6e6eb4d8.8.llvm.3073555343742554456>
ffffffffc0000aac:	f9040513          	addi	a0,s0,-112
ffffffffc0000ab0:	f9840613          	addi	a2,s0,-104
ffffffffc0000ab4:	00001097          	auipc	ra,0x1
ffffffffc0000ab8:	204080e7          	jalr	516(ra) # ffffffffc0001cb8 <_ZN4core3fmt5write17h62151e7ab9dfc071E>
ffffffffc0000abc:	08051863          	bnez	a0,ffffffffc0000b4c <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x228>
ffffffffc0000ac0:	01048513          	addi	a0,s1,16
ffffffffc0000ac4:	00300613          	li	a2,3
ffffffffc0000ac8:	00000593          	li	a1,0
ffffffffc0000acc:	00000097          	auipc	ra,0x0
ffffffffc0000ad0:	898080e7          	jalr	-1896(ra) # ffffffffc0000364 <__atomic_store_4>
ffffffffc0000ad4:	00098663          	beqz	s3,ffffffffc0000ae0 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x1bc>
ffffffffc0000ad8:	00200513          	li	a0,2
ffffffffc0000adc:	10052073          	csrs	sstatus,a0
ffffffffc0000ae0:	07013a03          	ld	s4,112(sp)
ffffffffc0000ae4:	07813983          	ld	s3,120(sp)
ffffffffc0000ae8:	08013903          	ld	s2,128(sp)
ffffffffc0000aec:	08813483          	ld	s1,136(sp)
ffffffffc0000af0:	09013403          	ld	s0,144(sp)
ffffffffc0000af4:	09813083          	ld	ra,152(sp)
ffffffffc0000af8:	0a010113          	addi	sp,sp,160
ffffffffc0000afc:	00008067          	ret
ffffffffc0000b00:	f9843503          	ld	a0,-104(s0)
ffffffffc0000b04:	00100a13          	li	s4,1
ffffffffc0000b08:	00500993          	li	s3,5
ffffffffc0000b0c:	e7451ce3          	bne	a0,s4,ffffffffc0000984 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x60>
ffffffffc0000b10:	e61ff06f          	j	ffffffffc0000970 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x4c>
ffffffffc0000b14:	00300593          	li	a1,3
ffffffffc0000b18:	00b51e63          	bne	a0,a1,ffffffffc0000b34 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x210>
ffffffffc0000b1c:	c0004537          	lui	a0,0xc0004
ffffffffc0000b20:	06850513          	addi	a0,a0,104 # ffffffffc0004068 <anon.92ae609f133ff3667839cadd6e6eb4d8.2.llvm.3073555343742554456>
ffffffffc0000b24:	00001097          	auipc	ra,0x1
ffffffffc0000b28:	fb4080e7          	jalr	-76(ra) # ffffffffc0001ad8 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0000b2c:	fffff097          	auipc	ra,0xfffff
ffffffffc0000b30:	7b4080e7          	jalr	1972(ra) # ffffffffc00002e0 <abort>
ffffffffc0000b34:	c0004537          	lui	a0,0xc0004
ffffffffc0000b38:	0b850513          	addi	a0,a0,184 # ffffffffc00040b8 <anon.92ae609f133ff3667839cadd6e6eb4d8.4.llvm.3073555343742554456>
ffffffffc0000b3c:	00001097          	auipc	ra,0x1
ffffffffc0000b40:	f9c080e7          	jalr	-100(ra) # ffffffffc0001ad8 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0000b44:	fffff097          	auipc	ra,0xfffff
ffffffffc0000b48:	79c080e7          	jalr	1948(ra) # ffffffffc00002e0 <abort>
ffffffffc0000b4c:	c0004537          	lui	a0,0xc0004
ffffffffc0000b50:	0e050513          	addi	a0,a0,224 # ffffffffc00040e0 <anon.92ae609f133ff3667839cadd6e6eb4d8.7.llvm.3073555343742554456>
ffffffffc0000b54:	02b00593          	li	a1,43
ffffffffc0000b58:	00000097          	auipc	ra,0x0
ffffffffc0000b5c:	0f0080e7          	jalr	240(ra) # ffffffffc0000c48 <_ZN4core6result13unwrap_failed17h15d22fce372aec20E>
ffffffffc0000b60:	fffff097          	auipc	ra,0xfffff
ffffffffc0000b64:	780080e7          	jalr	1920(ra) # ffffffffc00002e0 <abort>

ffffffffc0000b68 <rust_begin_unwind>:
ffffffffc0000b68:	fa010113          	addi	sp,sp,-96
ffffffffc0000b6c:	04113c23          	sd	ra,88(sp)
ffffffffc0000b70:	04813823          	sd	s0,80(sp)
ffffffffc0000b74:	06010413          	addi	s0,sp,96
ffffffffc0000b78:	faa43423          	sd	a0,-88(s0)
ffffffffc0000b7c:	c0028537          	lui	a0,0xc0028
ffffffffc0000b80:	e3050513          	addi	a0,a0,-464 # ffffffffc0027e30 <_ZN3log20MAX_LOG_LEVEL_FILTER17hc28b96925e30fb0cE>
ffffffffc0000b84:	00000593          	li	a1,0
ffffffffc0000b88:	00000097          	auipc	ra,0x0
ffffffffc0000b8c:	840080e7          	jalr	-1984(ra) # ffffffffc00003c8 <__atomic_load_8>
ffffffffc0000b90:	04050863          	beqz	a0,ffffffffc0000be0 <rust_begin_unwind+0x78>
ffffffffc0000b94:	c0001537          	lui	a0,0xc0001
ffffffffc0000b98:	c2050513          	addi	a0,a0,-992 # ffffffffc0000c20 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h83c67def041aad94E>
ffffffffc0000b9c:	fea43423          	sd	a0,-24(s0)
ffffffffc0000ba0:	fa840513          	addi	a0,s0,-88
ffffffffc0000ba4:	fea43023          	sd	a0,-32(s0)
ffffffffc0000ba8:	fe040513          	addi	a0,s0,-32
ffffffffc0000bac:	fca43823          	sd	a0,-48(s0)
ffffffffc0000bb0:	fc043023          	sd	zero,-64(s0)
ffffffffc0000bb4:	c0004537          	lui	a0,0xc0004
ffffffffc0000bb8:	28050513          	addi	a0,a0,640 # ffffffffc0004280 <.Lanon.286c32ef906c50e17470ad8264eef9ce.64>
ffffffffc0000bbc:	faa43823          	sd	a0,-80(s0)
ffffffffc0000bc0:	00100593          	li	a1,1
ffffffffc0000bc4:	fcb43c23          	sd	a1,-40(s0)
ffffffffc0000bc8:	fab43c23          	sd	a1,-72(s0)
ffffffffc0000bcc:	c0004537          	lui	a0,0xc0004
ffffffffc0000bd0:	2a850613          	addi	a2,a0,680 # ffffffffc00042a8 <.Lanon.286c32ef906c50e17470ad8264eef9ce.67>
ffffffffc0000bd4:	fb040513          	addi	a0,s0,-80
ffffffffc0000bd8:	00000097          	auipc	ra,0x0
ffffffffc0000bdc:	410080e7          	jalr	1040(ra) # ffffffffc0000fe8 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc0000be0:	00000097          	auipc	ra,0x0
ffffffffc0000be4:	0e8080e7          	jalr	232(ra) # ffffffffc0000cc8 <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E>
ffffffffc0000be8:	10500073          	wfi
ffffffffc0000bec:	ffdff06f          	j	ffffffffc0000be8 <rust_begin_unwind+0x80>

ffffffffc0000bf0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5789d9f41831995eE>:
ffffffffc0000bf0:	ff010113          	addi	sp,sp,-16
ffffffffc0000bf4:	00113423          	sd	ra,8(sp)
ffffffffc0000bf8:	00813023          	sd	s0,0(sp)
ffffffffc0000bfc:	01010413          	addi	s0,sp,16
ffffffffc0000c00:	00058613          	mv	a2,a1
ffffffffc0000c04:	00853583          	ld	a1,8(a0)
ffffffffc0000c08:	00053503          	ld	a0,0(a0)
ffffffffc0000c0c:	00013403          	ld	s0,0(sp)
ffffffffc0000c10:	00813083          	ld	ra,8(sp)
ffffffffc0000c14:	01010113          	addi	sp,sp,16
ffffffffc0000c18:	00002317          	auipc	t1,0x2
ffffffffc0000c1c:	c4830067          	jr	-952(t1) # ffffffffc0002860 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17ha4db6e3e5fd36be8E>

ffffffffc0000c20 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h83c67def041aad94E>:
ffffffffc0000c20:	ff010113          	addi	sp,sp,-16
ffffffffc0000c24:	00113423          	sd	ra,8(sp)
ffffffffc0000c28:	00813023          	sd	s0,0(sp)
ffffffffc0000c2c:	01010413          	addi	s0,sp,16
ffffffffc0000c30:	00053503          	ld	a0,0(a0)
ffffffffc0000c34:	00013403          	ld	s0,0(sp)
ffffffffc0000c38:	00813083          	ld	ra,8(sp)
ffffffffc0000c3c:	01010113          	addi	sp,sp,16
ffffffffc0000c40:	00001317          	auipc	t1,0x1
ffffffffc0000c44:	d1030067          	jr	-752(t1) # ffffffffc0001950 <_ZN75_$LT$core..panic..PanicInfo$LT$$u27$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hcacd4d94b13e8d6fE>

ffffffffc0000c48 <_ZN4core6result13unwrap_failed17h15d22fce372aec20E>:
ffffffffc0000c48:	f8010113          	addi	sp,sp,-128
ffffffffc0000c4c:	06113c23          	sd	ra,120(sp)
ffffffffc0000c50:	06813823          	sd	s0,112(sp)
ffffffffc0000c54:	08010413          	addi	s0,sp,128
ffffffffc0000c58:	f8b43823          	sd	a1,-112(s0)
ffffffffc0000c5c:	f8a43423          	sd	a0,-120(s0)
ffffffffc0000c60:	c0003537          	lui	a0,0xc0003
ffffffffc0000c64:	89450513          	addi	a0,a0,-1900 # ffffffffc0002894 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hbda3aee8c603d282E>
ffffffffc0000c68:	fea43023          	sd	a0,-32(s0)
ffffffffc0000c6c:	fe840513          	addi	a0,s0,-24
ffffffffc0000c70:	fca43c23          	sd	a0,-40(s0)
ffffffffc0000c74:	c0001537          	lui	a0,0xc0001
ffffffffc0000c78:	bf050513          	addi	a0,a0,-1040 # ffffffffc0000bf0 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5789d9f41831995eE>
ffffffffc0000c7c:	fca43823          	sd	a0,-48(s0)
ffffffffc0000c80:	f8840513          	addi	a0,s0,-120
ffffffffc0000c84:	fca43423          	sd	a0,-56(s0)
ffffffffc0000c88:	fc840513          	addi	a0,s0,-56
ffffffffc0000c8c:	faa43c23          	sd	a0,-72(s0)
ffffffffc0000c90:	fa043423          	sd	zero,-88(s0)
ffffffffc0000c94:	00200513          	li	a0,2
ffffffffc0000c98:	fca43023          	sd	a0,-64(s0)
ffffffffc0000c9c:	faa43023          	sd	a0,-96(s0)
ffffffffc0000ca0:	c0004537          	lui	a0,0xc0004
ffffffffc0000ca4:	2e850513          	addi	a0,a0,744 # ffffffffc00042e8 <.Lanon.0456b34b9222a12e0a8f90e19a843365.39>
ffffffffc0000ca8:	f8a43c23          	sd	a0,-104(s0)
ffffffffc0000cac:	c0004537          	lui	a0,0xc0004
ffffffffc0000cb0:	38050593          	addi	a1,a0,896 # ffffffffc0004380 <.Lanon.0456b34b9222a12e0a8f90e19a843365.41>
ffffffffc0000cb4:	f9840513          	addi	a0,s0,-104
ffffffffc0000cb8:	00001097          	auipc	ra,0x1
ffffffffc0000cbc:	f0c080e7          	jalr	-244(ra) # ffffffffc0001bc4 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>
ffffffffc0000cc0:	fffff097          	auipc	ra,0xfffff
ffffffffc0000cc4:	620080e7          	jalr	1568(ra) # ffffffffc00002e0 <abort>

ffffffffc0000cc8 <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E>:
ffffffffc0000cc8:	f1010113          	addi	sp,sp,-240
ffffffffc0000ccc:	0e113423          	sd	ra,232(sp)
ffffffffc0000cd0:	0e813023          	sd	s0,224(sp)
ffffffffc0000cd4:	0c913c23          	sd	s1,216(sp)
ffffffffc0000cd8:	0d213823          	sd	s2,208(sp)
ffffffffc0000cdc:	0d313423          	sd	s3,200(sp)
ffffffffc0000ce0:	0d413023          	sd	s4,192(sp)
ffffffffc0000ce4:	0b513c23          	sd	s5,184(sp)
ffffffffc0000ce8:	0b613823          	sd	s6,176(sp)
ffffffffc0000cec:	0b713423          	sd	s7,168(sp)
ffffffffc0000cf0:	0b813023          	sd	s8,160(sp)
ffffffffc0000cf4:	09913c23          	sd	s9,152(sp)
ffffffffc0000cf8:	09a13823          	sd	s10,144(sp)
ffffffffc0000cfc:	09b13423          	sd	s11,136(sp)
ffffffffc0000d00:	0f010413          	addi	s0,sp,240
ffffffffc0000d04:	00040493          	mv	s1,s0
ffffffffc0000d08:	f2943023          	sd	s1,-224(s0)
ffffffffc0000d0c:	f2042623          	sw	zero,-212(s0)
ffffffffc0000d10:	c0004537          	lui	a0,0xc0004
ffffffffc0000d14:	2e050513          	addi	a0,a0,736 # ffffffffc00042e0 <.Lanon.0456b34b9222a12e0a8f90e19a843365.38>
ffffffffc0000d18:	f0a43c23          	sd	a0,-232(s0)
ffffffffc0000d1c:	f8a43423          	sd	a0,-120(s0)
ffffffffc0000d20:	f8043823          	sd	zero,-112(s0)
ffffffffc0000d24:	f6043c23          	sd	zero,-136(s0)
ffffffffc0000d28:	00100513          	li	a0,1
ffffffffc0000d2c:	f6a43823          	sd	a0,-144(s0)
ffffffffc0000d30:	c0004537          	lui	a0,0xc0004
ffffffffc0000d34:	3e050513          	addi	a0,a0,992 # ffffffffc00043e0 <.Lanon.0456b34b9222a12e0a8f90e19a843365.64>
ffffffffc0000d38:	f6a43423          	sd	a0,-152(s0)
ffffffffc0000d3c:	f6840513          	addi	a0,s0,-152
ffffffffc0000d40:	00000097          	auipc	ra,0x0
ffffffffc0000d44:	be4080e7          	jalr	-1052(ra) # ffffffffc0000924 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE>
ffffffffc0000d48:	c0004537          	lui	a0,0xc0004
ffffffffc0000d4c:	00050b13          	mv	s6,a0
ffffffffc0000d50:	00008513          	mv	a0,ra
ffffffffc0000d54:	0aab6e63          	bltu	s6,a0,ffffffffc0000e10 <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E+0x148>
ffffffffc0000d58:	c00005b7          	lui	a1,0xc0000
ffffffffc0000d5c:	00058c13          	mv	s8,a1
ffffffffc0000d60:	0b856863          	bltu	a0,s8,ffffffffc0000e10 <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E+0x148>
ffffffffc0000d64:	0a048663          	beqz	s1,ffffffffc0000e10 <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E+0x148>
ffffffffc0000d68:	c00015b7          	lui	a1,0xc0001
ffffffffc0000d6c:	1c858493          	addi	s1,a1,456 # ffffffffc00011c8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17hd9a2e0e88955b4ccE>
ffffffffc0000d70:	f6040c93          	addi	s9,s0,-160
ffffffffc0000d74:	c00015b7          	lui	a1,0xc0001
ffffffffc0000d78:	26c58d13          	addi	s10,a1,620 # ffffffffc000126c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE>
ffffffffc0000d7c:	f2c40d93          	addi	s11,s0,-212
ffffffffc0000d80:	00300a13          	li	s4,3
ffffffffc0000d84:	c00045b7          	lui	a1,0xc0004
ffffffffc0000d88:	44058993          	addi	s3,a1,1088 # ffffffffc0004440 <.Lanon.0456b34b9222a12e0a8f90e19a843365.70>
ffffffffc0000d8c:	00400913          	li	s2,4
ffffffffc0000d90:	c00045b7          	lui	a1,0xc0004
ffffffffc0000d94:	40058b93          	addi	s7,a1,1024 # ffffffffc0004400 <.Lanon.0456b34b9222a12e0a8f90e19a843365.69>
ffffffffc0000d98:	f3040a93          	addi	s5,s0,-208
ffffffffc0000d9c:	f2040593          	addi	a1,s0,-224
ffffffffc0000da0:	f8b43423          	sd	a1,-120(s0)
ffffffffc0000da4:	f8943823          	sd	s1,-112(s0)
ffffffffc0000da8:	f8943023          	sd	s1,-128(s0)
ffffffffc0000dac:	f7943c23          	sd	s9,-136(s0)
ffffffffc0000db0:	f7a43823          	sd	s10,-144(s0)
ffffffffc0000db4:	f7b43423          	sd	s11,-152(s0)
ffffffffc0000db8:	ff850513          	addi	a0,a0,-8 # ffffffffc0003ff8 <__muldi3+0xca4>
ffffffffc0000dbc:	f6a43023          	sd	a0,-160(s0)
ffffffffc0000dc0:	f6840513          	addi	a0,s0,-152
ffffffffc0000dc4:	f4a43823          	sd	a0,-176(s0)
ffffffffc0000dc8:	f5443c23          	sd	s4,-168(s0)
ffffffffc0000dcc:	f5443423          	sd	s4,-184(s0)
ffffffffc0000dd0:	f5343023          	sd	s3,-192(s0)
ffffffffc0000dd4:	f3243c23          	sd	s2,-200(s0)
ffffffffc0000dd8:	f3743823          	sd	s7,-208(s0)
ffffffffc0000ddc:	000a8513          	mv	a0,s5
ffffffffc0000de0:	00000097          	auipc	ra,0x0
ffffffffc0000de4:	b44080e7          	jalr	-1212(ra) # ffffffffc0000924 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE>
ffffffffc0000de8:	f2c42503          	lw	a0,-212(s0)
ffffffffc0000dec:	00150513          	addi	a0,a0,1
ffffffffc0000df0:	f2a42623          	sw	a0,-212(s0)
ffffffffc0000df4:	f2043503          	ld	a0,-224(s0)
ffffffffc0000df8:	ff053503          	ld	a0,-16(a0)
ffffffffc0000dfc:	f2a43023          	sd	a0,-224(s0)
ffffffffc0000e00:	00050863          	beqz	a0,ffffffffc0000e10 <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E+0x148>
ffffffffc0000e04:	ff853503          	ld	a0,-8(a0)
ffffffffc0000e08:	00ab6463          	bltu	s6,a0,ffffffffc0000e10 <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E+0x148>
ffffffffc0000e0c:	f98578e3          	bgeu	a0,s8,ffffffffc0000d9c <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E+0xd4>
ffffffffc0000e10:	f8043823          	sd	zero,-112(s0)
ffffffffc0000e14:	f6043c23          	sd	zero,-136(s0)
ffffffffc0000e18:	00100513          	li	a0,1
ffffffffc0000e1c:	f6a43823          	sd	a0,-144(s0)
ffffffffc0000e20:	f1843503          	ld	a0,-232(s0)
ffffffffc0000e24:	f8a43423          	sd	a0,-120(s0)
ffffffffc0000e28:	c0004537          	lui	a0,0xc0004
ffffffffc0000e2c:	52050513          	addi	a0,a0,1312 # ffffffffc0004520 <.Lanon.0456b34b9222a12e0a8f90e19a843365.72>
ffffffffc0000e30:	f6a43423          	sd	a0,-152(s0)
ffffffffc0000e34:	f6840513          	addi	a0,s0,-152
ffffffffc0000e38:	00000097          	auipc	ra,0x0
ffffffffc0000e3c:	aec080e7          	jalr	-1300(ra) # ffffffffc0000924 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE>
ffffffffc0000e40:	08813d83          	ld	s11,136(sp)
ffffffffc0000e44:	09013d03          	ld	s10,144(sp)
ffffffffc0000e48:	09813c83          	ld	s9,152(sp)
ffffffffc0000e4c:	0a013c03          	ld	s8,160(sp)
ffffffffc0000e50:	0a813b83          	ld	s7,168(sp)
ffffffffc0000e54:	0b013b03          	ld	s6,176(sp)
ffffffffc0000e58:	0b813a83          	ld	s5,184(sp)
ffffffffc0000e5c:	0c013a03          	ld	s4,192(sp)
ffffffffc0000e60:	0c813983          	ld	s3,200(sp)
ffffffffc0000e64:	0d013903          	ld	s2,208(sp)
ffffffffc0000e68:	0d813483          	ld	s1,216(sp)
ffffffffc0000e6c:	0e013403          	ld	s0,224(sp)
ffffffffc0000e70:	0e813083          	ld	ra,232(sp)
ffffffffc0000e74:	0f010113          	addi	sp,sp,240
ffffffffc0000e78:	00008067          	ret

ffffffffc0000e7c <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>:
ffffffffc0000e7c:	ff010113          	addi	sp,sp,-16
ffffffffc0000e80:	00113423          	sd	ra,8(sp)
ffffffffc0000e84:	00813023          	sd	s0,0(sp)
ffffffffc0000e88:	01010413          	addi	s0,sp,16
ffffffffc0000e8c:	04000613          	li	a2,64
ffffffffc0000e90:	02c5f463          	bgeu	a1,a2,ffffffffc0000eb8 <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE+0x3c>
ffffffffc0000e94:	00100613          	li	a2,1
ffffffffc0000e98:	00b615b3          	sll	a1,a2,a1
ffffffffc0000e9c:	00053503          	ld	a0,0(a0)
ffffffffc0000ea0:	00b57533          	and	a0,a0,a1
ffffffffc0000ea4:	00a03533          	snez	a0,a0
ffffffffc0000ea8:	00013403          	ld	s0,0(sp)
ffffffffc0000eac:	00813083          	ld	ra,8(sp)
ffffffffc0000eb0:	01010113          	addi	sp,sp,16
ffffffffc0000eb4:	00008067          	ret
ffffffffc0000eb8:	c0004537          	lui	a0,0xc0004
ffffffffc0000ebc:	5e050513          	addi	a0,a0,1504 # ffffffffc00045e0 <.Lanon.1eb8fccf7bbb1750b1e0a9dc5c7b65c9.2>
ffffffffc0000ec0:	00001097          	auipc	ra,0x1
ffffffffc0000ec4:	c18080e7          	jalr	-1000(ra) # ffffffffc0001ad8 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0000ec8:	fffff097          	auipc	ra,0xfffff
ffffffffc0000ecc:	418080e7          	jalr	1048(ra) # ffffffffc00002e0 <abort>

ffffffffc0000ed0 <_ZN12rcore_thread9processor9Processor10tid_option17hadef156e4b87ab78E>:
ffffffffc0000ed0:	ff010113          	addi	sp,sp,-16
ffffffffc0000ed4:	00113423          	sd	ra,8(sp)
ffffffffc0000ed8:	00813023          	sd	s0,0(sp)
ffffffffc0000edc:	01010413          	addi	s0,sp,16
ffffffffc0000ee0:	02053603          	ld	a2,32(a0)
ffffffffc0000ee4:	00000593          	li	a1,0
ffffffffc0000ee8:	00060463          	beqz	a2,ffffffffc0000ef0 <_ZN12rcore_thread9processor9Processor10tid_option17hadef156e4b87ab78E+0x20>
ffffffffc0000eec:	00050593          	mv	a1,a0
ffffffffc0000ef0:	02060263          	beqz	a2,ffffffffc0000f14 <_ZN12rcore_thread9processor9Processor10tid_option17hadef156e4b87ab78E+0x44>
ffffffffc0000ef4:	0105b503          	ld	a0,16(a1)
ffffffffc0000ef8:	00050e63          	beqz	a0,ffffffffc0000f14 <_ZN12rcore_thread9processor9Processor10tid_option17hadef156e4b87ab78E+0x44>
ffffffffc0000efc:	00100513          	li	a0,1
ffffffffc0000f00:	0085b583          	ld	a1,8(a1)
ffffffffc0000f04:	00013403          	ld	s0,0(sp)
ffffffffc0000f08:	00813083          	ld	ra,8(sp)
ffffffffc0000f0c:	01010113          	addi	sp,sp,16
ffffffffc0000f10:	00008067          	ret
ffffffffc0000f14:	00000513          	li	a0,0
ffffffffc0000f18:	00013403          	ld	s0,0(sp)
ffffffffc0000f1c:	00813083          	ld	ra,8(sp)
ffffffffc0000f20:	01010113          	addi	sp,sp,16
ffffffffc0000f24:	00008067          	ret

ffffffffc0000f28 <_ZN74_$LT$spin..once..Finish$LT$$u27$a$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h654284c2fdccbe76E>:
ffffffffc0000f28:	ff010113          	addi	sp,sp,-16
ffffffffc0000f2c:	00113423          	sd	ra,8(sp)
ffffffffc0000f30:	00813023          	sd	s0,0(sp)
ffffffffc0000f34:	01010413          	addi	s0,sp,16
ffffffffc0000f38:	00854583          	lbu	a1,8(a0)
ffffffffc0000f3c:	00058c63          	beqz	a1,ffffffffc0000f54 <_ZN74_$LT$spin..once..Finish$LT$$u27$a$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h654284c2fdccbe76E+0x2c>
ffffffffc0000f40:	00053503          	ld	a0,0(a0)
ffffffffc0000f44:	00300593          	li	a1,3
ffffffffc0000f48:	00500613          	li	a2,5
ffffffffc0000f4c:	fffff097          	auipc	ra,0xfffff
ffffffffc0000f50:	4d8080e7          	jalr	1240(ra) # ffffffffc0000424 <__atomic_store_8>
ffffffffc0000f54:	00013403          	ld	s0,0(sp)
ffffffffc0000f58:	00813083          	ld	ra,8(sp)
ffffffffc0000f5c:	01010113          	addi	sp,sp,16
ffffffffc0000f60:	00008067          	ret

ffffffffc0000f64 <_ZN4core3ptr18real_drop_in_place17h55d3caa2ecaff896E>:
ffffffffc0000f64:	ff010113          	addi	sp,sp,-16
ffffffffc0000f68:	00113423          	sd	ra,8(sp)
ffffffffc0000f6c:	00813023          	sd	s0,0(sp)
ffffffffc0000f70:	01010413          	addi	s0,sp,16
ffffffffc0000f74:	00013403          	ld	s0,0(sp)
ffffffffc0000f78:	00813083          	ld	ra,8(sp)
ffffffffc0000f7c:	01010113          	addi	sp,sp,16
ffffffffc0000f80:	00008067          	ret

ffffffffc0000f84 <_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$7enabled17he212b390a40da6f7E>:
ffffffffc0000f84:	ff010113          	addi	sp,sp,-16
ffffffffc0000f88:	00113423          	sd	ra,8(sp)
ffffffffc0000f8c:	00813023          	sd	s0,0(sp)
ffffffffc0000f90:	01010413          	addi	s0,sp,16
ffffffffc0000f94:	00000513          	li	a0,0
ffffffffc0000f98:	00013403          	ld	s0,0(sp)
ffffffffc0000f9c:	00813083          	ld	ra,8(sp)
ffffffffc0000fa0:	01010113          	addi	sp,sp,16
ffffffffc0000fa4:	00008067          	ret

ffffffffc0000fa8 <_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$3log17h551c8a94a308baefE>:
ffffffffc0000fa8:	ff010113          	addi	sp,sp,-16
ffffffffc0000fac:	00113423          	sd	ra,8(sp)
ffffffffc0000fb0:	00813023          	sd	s0,0(sp)
ffffffffc0000fb4:	01010413          	addi	s0,sp,16
ffffffffc0000fb8:	00013403          	ld	s0,0(sp)
ffffffffc0000fbc:	00813083          	ld	ra,8(sp)
ffffffffc0000fc0:	01010113          	addi	sp,sp,16
ffffffffc0000fc4:	00008067          	ret

ffffffffc0000fc8 <_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$5flush17hd1b7fb83b273d384E>:
ffffffffc0000fc8:	ff010113          	addi	sp,sp,-16
ffffffffc0000fcc:	00113423          	sd	ra,8(sp)
ffffffffc0000fd0:	00813023          	sd	s0,0(sp)
ffffffffc0000fd4:	01010413          	addi	s0,sp,16
ffffffffc0000fd8:	00013403          	ld	s0,0(sp)
ffffffffc0000fdc:	00813083          	ld	ra,8(sp)
ffffffffc0000fe0:	01010113          	addi	sp,sp,16
ffffffffc0000fe4:	00008067          	ret

ffffffffc0000fe8 <_ZN3log17__private_api_log17hc32563721e7c7a78E>:
ffffffffc0000fe8:	f3010113          	addi	sp,sp,-208
ffffffffc0000fec:	0c113423          	sd	ra,200(sp)
ffffffffc0000ff0:	0c813023          	sd	s0,192(sp)
ffffffffc0000ff4:	0a913c23          	sd	s1,184(sp)
ffffffffc0000ff8:	0b213823          	sd	s2,176(sp)
ffffffffc0000ffc:	0b313423          	sd	s3,168(sp)
ffffffffc0001000:	0b413023          	sd	s4,160(sp)
ffffffffc0001004:	09513c23          	sd	s5,152(sp)
ffffffffc0001008:	09613823          	sd	s6,144(sp)
ffffffffc000100c:	09713423          	sd	s7,136(sp)
ffffffffc0001010:	09813023          	sd	s8,128(sp)
ffffffffc0001014:	07913c23          	sd	s9,120(sp)
ffffffffc0001018:	0d010413          	addi	s0,sp,208
ffffffffc000101c:	00058913          	mv	s2,a1
ffffffffc0001020:	00050493          	mv	s1,a0
ffffffffc0001024:	01063983          	ld	s3,16(a2)
ffffffffc0001028:	01863a03          	ld	s4,24(a2)
ffffffffc000102c:	02063a83          	ld	s5,32(a2)
ffffffffc0001030:	02863b03          	ld	s6,40(a2)
ffffffffc0001034:	03062b83          	lw	s7,48(a2)
ffffffffc0001038:	00063c03          	ld	s8,0(a2)
ffffffffc000103c:	00863c83          	ld	s9,8(a2)
ffffffffc0001040:	c0028537          	lui	a0,0xc0028
ffffffffc0001044:	e2850513          	addi	a0,a0,-472 # ffffffffc0027e28 <_ZN3log5STATE17h82e80c438c164fd2E>
ffffffffc0001048:	00500593          	li	a1,5
ffffffffc000104c:	fffff097          	auipc	ra,0xfffff
ffffffffc0001050:	37c080e7          	jalr	892(ra) # ffffffffc00003c8 <__atomic_load_8>
ffffffffc0001054:	00050593          	mv	a1,a0
ffffffffc0001058:	c0006637          	lui	a2,0xc0006
ffffffffc000105c:	00200693          	li	a3,2
ffffffffc0001060:	00d50e63          	beq	a0,a3,ffffffffc000107c <_ZN3log17__private_api_log17hc32563721e7c7a78E+0x94>
ffffffffc0001064:	c0004537          	lui	a0,0xc0004
ffffffffc0001068:	60850513          	addi	a0,a0,1544 # ffffffffc0004608 <.Lanon.8856ea40fba94ed7f7c9709234e2807a.15>
ffffffffc000106c:	00d59c63          	bne	a1,a3,ffffffffc0001084 <_ZN3log17__private_api_log17hc32563721e7c7a78E+0x9c>
ffffffffc0001070:	03060593          	addi	a1,a2,48 # ffffffffc0006030 <_ZN3log6LOGGER17h248b1b32f2af3ff4E>
ffffffffc0001074:	0085b583          	ld	a1,8(a1)
ffffffffc0001078:	0140006f          	j	ffffffffc000108c <_ZN3log17__private_api_log17hc32563721e7c7a78E+0xa4>
ffffffffc000107c:	03063503          	ld	a0,48(a2)
ffffffffc0001080:	fed588e3          	beq	a1,a3,ffffffffc0001070 <_ZN3log17__private_api_log17hc32563721e7c7a78E+0x88>
ffffffffc0001084:	c00045b7          	lui	a1,0xc0004
ffffffffc0001088:	60858593          	addi	a1,a1,1544 # ffffffffc0004608 <.Lanon.8856ea40fba94ed7f7c9709234e2807a.15>
ffffffffc000108c:	0184b603          	ld	a2,24(s1)
ffffffffc0001090:	0204b683          	ld	a3,32(s1)
ffffffffc0001094:	0284b703          	ld	a4,40(s1)
ffffffffc0001098:	0004b783          	ld	a5,0(s1)
ffffffffc000109c:	f4f43823          	sd	a5,-176(s0)
ffffffffc00010a0:	f5943423          	sd	s9,-184(s0)
ffffffffc00010a4:	f5843023          	sd	s8,-192(s0)
ffffffffc00010a8:	f3243c23          	sd	s2,-200(s0)
ffffffffc00010ac:	0104b783          	ld	a5,16(s1)
ffffffffc00010b0:	f6f43023          	sd	a5,-160(s0)
ffffffffc00010b4:	0084b783          	ld	a5,8(s1)
ffffffffc00010b8:	f4f43c23          	sd	a5,-168(s0)
ffffffffc00010bc:	fb742223          	sw	s7,-92(s0)
ffffffffc00010c0:	00100793          	li	a5,1
ffffffffc00010c4:	faf42023          	sw	a5,-96(s0)
ffffffffc00010c8:	f9643c23          	sd	s6,-104(s0)
ffffffffc00010cc:	f9543823          	sd	s5,-112(s0)
ffffffffc00010d0:	f9443423          	sd	s4,-120(s0)
ffffffffc00010d4:	f9343023          	sd	s3,-128(s0)
ffffffffc00010d8:	f6e43c23          	sd	a4,-136(s0)
ffffffffc00010dc:	f6d43823          	sd	a3,-144(s0)
ffffffffc00010e0:	f6c43423          	sd	a2,-152(s0)
ffffffffc00010e4:	0205b603          	ld	a2,32(a1)
ffffffffc00010e8:	f3840593          	addi	a1,s0,-200
ffffffffc00010ec:	000600e7          	jalr	a2
ffffffffc00010f0:	07813c83          	ld	s9,120(sp)
ffffffffc00010f4:	08013c03          	ld	s8,128(sp)
ffffffffc00010f8:	08813b83          	ld	s7,136(sp)
ffffffffc00010fc:	09013b03          	ld	s6,144(sp)
ffffffffc0001100:	09813a83          	ld	s5,152(sp)
ffffffffc0001104:	0a013a03          	ld	s4,160(sp)
ffffffffc0001108:	0a813983          	ld	s3,168(sp)
ffffffffc000110c:	0b013903          	ld	s2,176(sp)
ffffffffc0001110:	0b813483          	ld	s1,184(sp)
ffffffffc0001114:	0c013403          	ld	s0,192(sp)
ffffffffc0001118:	0c813083          	ld	ra,200(sp)
ffffffffc000111c:	0d010113          	addi	sp,sp,208
ffffffffc0001120:	00008067          	ret

ffffffffc0001124 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h4e3d261f6c3eb358E>:
ffffffffc0001124:	f7010113          	addi	sp,sp,-144
ffffffffc0001128:	08113423          	sd	ra,136(sp)
ffffffffc000112c:	08813023          	sd	s0,128(sp)
ffffffffc0001130:	09010413          	addi	s0,sp,144
ffffffffc0001134:	00058813          	mv	a6,a1
ffffffffc0001138:	00053503          	ld	a0,0(a0)
ffffffffc000113c:	00a00693          	li	a3,10
ffffffffc0001140:	f7040613          	addi	a2,s0,-144
ffffffffc0001144:	00000593          	li	a1,0
ffffffffc0001148:	00f57713          	andi	a4,a0,15
ffffffffc000114c:	00d76663          	bltu	a4,a3,ffffffffc0001158 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h4e3d261f6c3eb358E+0x34>
ffffffffc0001150:	05770713          	addi	a4,a4,87
ffffffffc0001154:	0080006f          	j	ffffffffc000115c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h4e3d261f6c3eb358E+0x38>
ffffffffc0001158:	03076713          	ori	a4,a4,48
ffffffffc000115c:	00b607b3          	add	a5,a2,a1
ffffffffc0001160:	06e78fa3          	sb	a4,127(a5)
ffffffffc0001164:	fff58593          	addi	a1,a1,-1
ffffffffc0001168:	00455513          	srli	a0,a0,0x4
ffffffffc000116c:	fc051ee3          	bnez	a0,ffffffffc0001148 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h4e3d261f6c3eb358E+0x24>
ffffffffc0001170:	08058513          	addi	a0,a1,128
ffffffffc0001174:	08100693          	li	a3,129
ffffffffc0001178:	02d57e63          	bgeu	a0,a3,ffffffffc00011b4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h4e3d261f6c3eb358E+0x90>
ffffffffc000117c:	00b60533          	add	a0,a2,a1
ffffffffc0001180:	40b007b3          	neg	a5,a1
ffffffffc0001184:	08050713          	addi	a4,a0,128
ffffffffc0001188:	c0004537          	lui	a0,0xc0004
ffffffffc000118c:	63850613          	addi	a2,a0,1592 # ffffffffc0004638 <anon.10b7be5cca1e645782a840f752253638.0.llvm.17117805323420214334>
ffffffffc0001190:	00100593          	li	a1,1
ffffffffc0001194:	00200693          	li	a3,2
ffffffffc0001198:	00080513          	mv	a0,a6
ffffffffc000119c:	00001097          	auipc	ra,0x1
ffffffffc00011a0:	eb4080e7          	jalr	-332(ra) # ffffffffc0002050 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>
ffffffffc00011a4:	08013403          	ld	s0,128(sp)
ffffffffc00011a8:	08813083          	ld	ra,136(sp)
ffffffffc00011ac:	09010113          	addi	sp,sp,144
ffffffffc00011b0:	00008067          	ret
ffffffffc00011b4:	08000593          	li	a1,128
ffffffffc00011b8:	00001097          	auipc	ra,0x1
ffffffffc00011bc:	a64080e7          	jalr	-1436(ra) # ffffffffc0001c1c <_ZN4core5slice22slice_index_order_fail17h2c29e16eca0878c2E>
ffffffffc00011c0:	fffff097          	auipc	ra,0xfffff
ffffffffc00011c4:	120080e7          	jalr	288(ra) # ffffffffc00002e0 <abort>

ffffffffc00011c8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17hd9a2e0e88955b4ccE>:
ffffffffc00011c8:	f7010113          	addi	sp,sp,-144
ffffffffc00011cc:	08113423          	sd	ra,136(sp)
ffffffffc00011d0:	08813023          	sd	s0,128(sp)
ffffffffc00011d4:	09010413          	addi	s0,sp,144
ffffffffc00011d8:	00058813          	mv	a6,a1
ffffffffc00011dc:	00053503          	ld	a0,0(a0)
ffffffffc00011e0:	00a00693          	li	a3,10
ffffffffc00011e4:	f7040613          	addi	a2,s0,-144
ffffffffc00011e8:	00000593          	li	a1,0
ffffffffc00011ec:	00f57713          	andi	a4,a0,15
ffffffffc00011f0:	00d76663          	bltu	a4,a3,ffffffffc00011fc <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17hd9a2e0e88955b4ccE+0x34>
ffffffffc00011f4:	03770713          	addi	a4,a4,55
ffffffffc00011f8:	0080006f          	j	ffffffffc0001200 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17hd9a2e0e88955b4ccE+0x38>
ffffffffc00011fc:	03076713          	ori	a4,a4,48
ffffffffc0001200:	00b607b3          	add	a5,a2,a1
ffffffffc0001204:	06e78fa3          	sb	a4,127(a5)
ffffffffc0001208:	fff58593          	addi	a1,a1,-1
ffffffffc000120c:	00455513          	srli	a0,a0,0x4
ffffffffc0001210:	fc051ee3          	bnez	a0,ffffffffc00011ec <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17hd9a2e0e88955b4ccE+0x24>
ffffffffc0001214:	08058513          	addi	a0,a1,128
ffffffffc0001218:	08100693          	li	a3,129
ffffffffc000121c:	02d57e63          	bgeu	a0,a3,ffffffffc0001258 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17hd9a2e0e88955b4ccE+0x90>
ffffffffc0001220:	00b60533          	add	a0,a2,a1
ffffffffc0001224:	40b007b3          	neg	a5,a1
ffffffffc0001228:	08050713          	addi	a4,a0,128
ffffffffc000122c:	c0004537          	lui	a0,0xc0004
ffffffffc0001230:	63850613          	addi	a2,a0,1592 # ffffffffc0004638 <anon.10b7be5cca1e645782a840f752253638.0.llvm.17117805323420214334>
ffffffffc0001234:	00100593          	li	a1,1
ffffffffc0001238:	00200693          	li	a3,2
ffffffffc000123c:	00080513          	mv	a0,a6
ffffffffc0001240:	00001097          	auipc	ra,0x1
ffffffffc0001244:	e10080e7          	jalr	-496(ra) # ffffffffc0002050 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>
ffffffffc0001248:	08013403          	ld	s0,128(sp)
ffffffffc000124c:	08813083          	ld	ra,136(sp)
ffffffffc0001250:	09010113          	addi	sp,sp,144
ffffffffc0001254:	00008067          	ret
ffffffffc0001258:	08000593          	li	a1,128
ffffffffc000125c:	00001097          	auipc	ra,0x1
ffffffffc0001260:	9c0080e7          	jalr	-1600(ra) # ffffffffc0001c1c <_ZN4core5slice22slice_index_order_fail17h2c29e16eca0878c2E>
ffffffffc0001264:	fffff097          	auipc	ra,0xfffff
ffffffffc0001268:	07c080e7          	jalr	124(ra) # ffffffffc00002e0 <abort>

ffffffffc000126c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE>:
ffffffffc000126c:	f6010113          	addi	sp,sp,-160
ffffffffc0001270:	08113c23          	sd	ra,152(sp)
ffffffffc0001274:	08813823          	sd	s0,144(sp)
ffffffffc0001278:	08913423          	sd	s1,136(sp)
ffffffffc000127c:	09213023          	sd	s2,128(sp)
ffffffffc0001280:	07313c23          	sd	s3,120(sp)
ffffffffc0001284:	07413823          	sd	s4,112(sp)
ffffffffc0001288:	07513423          	sd	s5,104(sp)
ffffffffc000128c:	07613023          	sd	s6,96(sp)
ffffffffc0001290:	05713c23          	sd	s7,88(sp)
ffffffffc0001294:	05813823          	sd	s8,80(sp)
ffffffffc0001298:	05913423          	sd	s9,72(sp)
ffffffffc000129c:	05a13023          	sd	s10,64(sp)
ffffffffc00012a0:	03b13c23          	sd	s11,56(sp)
ffffffffc00012a4:	0a010413          	addi	s0,sp,160
ffffffffc00012a8:	00058b13          	mv	s6,a1
ffffffffc00012ac:	00052b83          	lw	s7,0(a0)
ffffffffc00012b0:	43fbd513          	srai	a0,s7,0x3f
ffffffffc00012b4:	00ab85b3          	add	a1,s7,a0
ffffffffc00012b8:	00a5cab3          	xor	s5,a1,a0
ffffffffc00012bc:	c0004537          	lui	a0,0xc0004
ffffffffc00012c0:	70853c03          	ld	s8,1800(a0) # ffffffffc0004708 <_ZN4core3fmt3num14DEC_DIGITS_LUT17hefb44f08c26e5f71E>
ffffffffc00012c4:	004ad513          	srli	a0,s5,0x4
ffffffffc00012c8:	27100593          	li	a1,625
ffffffffc00012cc:	0eb56663          	bltu	a0,a1,ffffffffc00013b8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE+0x14c>
ffffffffc00012d0:	f7643423          	sd	s6,-152(s0)
ffffffffc00012d4:	00002537          	lui	a0,0x2
ffffffffc00012d8:	7105099b          	addiw	s3,a0,1808
ffffffffc00012dc:	06400a13          	li	s4,100
ffffffffc00012e0:	f7140c93          	addi	s9,s0,-143
ffffffffc00012e4:	05f5e537          	lui	a0,0x5f5e
ffffffffc00012e8:	0ff50d9b          	addiw	s11,a0,255
ffffffffc00012ec:	00000493          	li	s1,0
ffffffffc00012f0:	000a8b13          	mv	s6,s5
ffffffffc00012f4:	000a8513          	mv	a0,s5
ffffffffc00012f8:	00098593          	mv	a1,s3
ffffffffc00012fc:	00001097          	auipc	ra,0x1
ffffffffc0001300:	6ac080e7          	jalr	1708(ra) # ffffffffc00029a8 <__udivdi3>
ffffffffc0001304:	00050a93          	mv	s5,a0
ffffffffc0001308:	00098593          	mv	a1,s3
ffffffffc000130c:	00002097          	auipc	ra,0x2
ffffffffc0001310:	048080e7          	jalr	72(ra) # ffffffffc0003354 <__muldi3>
ffffffffc0001314:	40ab0d33          	sub	s10,s6,a0
ffffffffc0001318:	000d0513          	mv	a0,s10
ffffffffc000131c:	000a0593          	mv	a1,s4
ffffffffc0001320:	00001097          	auipc	ra,0x1
ffffffffc0001324:	688080e7          	jalr	1672(ra) # ffffffffc00029a8 <__udivdi3>
ffffffffc0001328:	009c8933          	add	s2,s9,s1
ffffffffc000132c:	00151593          	slli	a1,a0,0x1
ffffffffc0001330:	00bc05b3          	add	a1,s8,a1
ffffffffc0001334:	0005c603          	lbu	a2,0(a1)
ffffffffc0001338:	00158583          	lb	a1,1(a1)
ffffffffc000133c:	02b90223          	sb	a1,36(s2)
ffffffffc0001340:	02c901a3          	sb	a2,35(s2)
ffffffffc0001344:	000a0593          	mv	a1,s4
ffffffffc0001348:	00002097          	auipc	ra,0x2
ffffffffc000134c:	00c080e7          	jalr	12(ra) # ffffffffc0003354 <__muldi3>
ffffffffc0001350:	40ad0533          	sub	a0,s10,a0
ffffffffc0001354:	00151513          	slli	a0,a0,0x1
ffffffffc0001358:	00ac0533          	add	a0,s8,a0
ffffffffc000135c:	00054583          	lbu	a1,0(a0) # 5f5e000 <XLENb+0x5f5dfc0>
ffffffffc0001360:	00150503          	lb	a0,1(a0)
ffffffffc0001364:	02a90323          	sb	a0,38(s2)
ffffffffc0001368:	02b902a3          	sb	a1,37(s2)
ffffffffc000136c:	ffc48493          	addi	s1,s1,-4
ffffffffc0001370:	f96de0e3          	bltu	s11,s6,ffffffffc00012f0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE+0x84>
ffffffffc0001374:	02748493          	addi	s1,s1,39
ffffffffc0001378:	f6843b03          	ld	s6,-152(s0)
ffffffffc000137c:	06300513          	li	a0,99
ffffffffc0001380:	05556263          	bltu	a0,s5,ffffffffc00013c4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE+0x158>
ffffffffc0001384:	000a8993          	mv	s3,s5
ffffffffc0001388:	00900513          	li	a0,9
ffffffffc000138c:	09355e63          	bge	a0,s3,ffffffffc0001428 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE+0x1bc>
ffffffffc0001390:	00199513          	slli	a0,s3,0x1
ffffffffc0001394:	00ac05b3          	add	a1,s8,a0
ffffffffc0001398:	ffe48513          	addi	a0,s1,-2
ffffffffc000139c:	f7140613          	addi	a2,s0,-143
ffffffffc00013a0:	00a60633          	add	a2,a2,a0
ffffffffc00013a4:	0005c683          	lbu	a3,0(a1)
ffffffffc00013a8:	00158583          	lb	a1,1(a1)
ffffffffc00013ac:	00b600a3          	sb	a1,1(a2)
ffffffffc00013b0:	00d60023          	sb	a3,0(a2)
ffffffffc00013b4:	0880006f          	j	ffffffffc000143c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE+0x1d0>
ffffffffc00013b8:	02700493          	li	s1,39
ffffffffc00013bc:	06300513          	li	a0,99
ffffffffc00013c0:	fd5572e3          	bgeu	a0,s5,ffffffffc0001384 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE+0x118>
ffffffffc00013c4:	00010937          	lui	s2,0x10
ffffffffc00013c8:	fff9051b          	addiw	a0,s2,-1
ffffffffc00013cc:	00aaf533          	and	a0,s5,a0
ffffffffc00013d0:	06400a13          	li	s4,100
ffffffffc00013d4:	000a0593          	mv	a1,s4
ffffffffc00013d8:	00001097          	auipc	ra,0x1
ffffffffc00013dc:	5d0080e7          	jalr	1488(ra) # ffffffffc00029a8 <__udivdi3>
ffffffffc00013e0:	00050993          	mv	s3,a0
ffffffffc00013e4:	000a0593          	mv	a1,s4
ffffffffc00013e8:	00002097          	auipc	ra,0x2
ffffffffc00013ec:	f6c080e7          	jalr	-148(ra) # ffffffffc0003354 <__muldi3>
ffffffffc00013f0:	40aa8533          	sub	a0,s5,a0
ffffffffc00013f4:	00151513          	slli	a0,a0,0x1
ffffffffc00013f8:	ffe9059b          	addiw	a1,s2,-2
ffffffffc00013fc:	00b57533          	and	a0,a0,a1
ffffffffc0001400:	00ac0533          	add	a0,s8,a0
ffffffffc0001404:	ffe48493          	addi	s1,s1,-2
ffffffffc0001408:	f7140593          	addi	a1,s0,-143
ffffffffc000140c:	009585b3          	add	a1,a1,s1
ffffffffc0001410:	00054603          	lbu	a2,0(a0)
ffffffffc0001414:	00150503          	lb	a0,1(a0)
ffffffffc0001418:	00a580a3          	sb	a0,1(a1)
ffffffffc000141c:	00c58023          	sb	a2,0(a1)
ffffffffc0001420:	00900513          	li	a0,9
ffffffffc0001424:	f73546e3          	blt	a0,s3,ffffffffc0001390 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE+0x124>
ffffffffc0001428:	fff48513          	addi	a0,s1,-1
ffffffffc000142c:	f7140593          	addi	a1,s0,-143
ffffffffc0001430:	00a585b3          	add	a1,a1,a0
ffffffffc0001434:	03098613          	addi	a2,s3,48
ffffffffc0001438:	00c58023          	sb	a2,0(a1)
ffffffffc000143c:	fff00593          	li	a1,-1
ffffffffc0001440:	0175a5b3          	slt	a1,a1,s7
ffffffffc0001444:	f7140613          	addi	a2,s0,-143
ffffffffc0001448:	00a60733          	add	a4,a2,a0
ffffffffc000144c:	02700613          	li	a2,39
ffffffffc0001450:	40a607b3          	sub	a5,a2,a0
ffffffffc0001454:	c0004537          	lui	a0,0xc0004
ffffffffc0001458:	71050613          	addi	a2,a0,1808 # ffffffffc0004710 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.4>
ffffffffc000145c:	000b0513          	mv	a0,s6
ffffffffc0001460:	00000693          	li	a3,0
ffffffffc0001464:	00001097          	auipc	ra,0x1
ffffffffc0001468:	bec080e7          	jalr	-1044(ra) # ffffffffc0002050 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>
ffffffffc000146c:	03813d83          	ld	s11,56(sp)
ffffffffc0001470:	04013d03          	ld	s10,64(sp)
ffffffffc0001474:	04813c83          	ld	s9,72(sp)
ffffffffc0001478:	05013c03          	ld	s8,80(sp)
ffffffffc000147c:	05813b83          	ld	s7,88(sp)
ffffffffc0001480:	06013b03          	ld	s6,96(sp)
ffffffffc0001484:	06813a83          	ld	s5,104(sp)
ffffffffc0001488:	07013a03          	ld	s4,112(sp)
ffffffffc000148c:	07813983          	ld	s3,120(sp)
ffffffffc0001490:	08013903          	ld	s2,128(sp)
ffffffffc0001494:	08813483          	ld	s1,136(sp)
ffffffffc0001498:	09013403          	ld	s0,144(sp)
ffffffffc000149c:	09813083          	ld	ra,152(sp)
ffffffffc00014a0:	0a010113          	addi	sp,sp,160
ffffffffc00014a4:	00008067          	ret

ffffffffc00014a8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E>:
ffffffffc00014a8:	f7010113          	addi	sp,sp,-144
ffffffffc00014ac:	08113423          	sd	ra,136(sp)
ffffffffc00014b0:	08813023          	sd	s0,128(sp)
ffffffffc00014b4:	06913c23          	sd	s1,120(sp)
ffffffffc00014b8:	07213823          	sd	s2,112(sp)
ffffffffc00014bc:	07313423          	sd	s3,104(sp)
ffffffffc00014c0:	07413023          	sd	s4,96(sp)
ffffffffc00014c4:	05513c23          	sd	s5,88(sp)
ffffffffc00014c8:	05613823          	sd	s6,80(sp)
ffffffffc00014cc:	05713423          	sd	s7,72(sp)
ffffffffc00014d0:	05813023          	sd	s8,64(sp)
ffffffffc00014d4:	03913c23          	sd	s9,56(sp)
ffffffffc00014d8:	03a13823          	sd	s10,48(sp)
ffffffffc00014dc:	03b13423          	sd	s11,40(sp)
ffffffffc00014e0:	09010413          	addi	s0,sp,144
ffffffffc00014e4:	00058913          	mv	s2,a1
ffffffffc00014e8:	00056a83          	lwu	s5,0(a0)
ffffffffc00014ec:	c0004537          	lui	a0,0xc0004
ffffffffc00014f0:	70853b83          	ld	s7,1800(a0) # ffffffffc0004708 <_ZN4core3fmt3num14DEC_DIGITS_LUT17hefb44f08c26e5f71E>
ffffffffc00014f4:	004ad513          	srli	a0,s5,0x4
ffffffffc00014f8:	27100593          	li	a1,625
ffffffffc00014fc:	0eb56263          	bltu	a0,a1,ffffffffc00015e0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E+0x138>
ffffffffc0001500:	00002537          	lui	a0,0x2
ffffffffc0001504:	7105099b          	addiw	s3,a0,1808
ffffffffc0001508:	06400a13          	li	s4,100
ffffffffc000150c:	f7140c13          	addi	s8,s0,-143
ffffffffc0001510:	05f5e537          	lui	a0,0x5f5e
ffffffffc0001514:	0ff50d1b          	addiw	s10,a0,255
ffffffffc0001518:	00000d93          	li	s11,0
ffffffffc000151c:	000a8b13          	mv	s6,s5
ffffffffc0001520:	000a8513          	mv	a0,s5
ffffffffc0001524:	00098593          	mv	a1,s3
ffffffffc0001528:	00001097          	auipc	ra,0x1
ffffffffc000152c:	480080e7          	jalr	1152(ra) # ffffffffc00029a8 <__udivdi3>
ffffffffc0001530:	00050a93          	mv	s5,a0
ffffffffc0001534:	00098593          	mv	a1,s3
ffffffffc0001538:	00002097          	auipc	ra,0x2
ffffffffc000153c:	e1c080e7          	jalr	-484(ra) # ffffffffc0003354 <__muldi3>
ffffffffc0001540:	40ab0cb3          	sub	s9,s6,a0
ffffffffc0001544:	000c8513          	mv	a0,s9
ffffffffc0001548:	000a0593          	mv	a1,s4
ffffffffc000154c:	00001097          	auipc	ra,0x1
ffffffffc0001550:	45c080e7          	jalr	1116(ra) # ffffffffc00029a8 <__udivdi3>
ffffffffc0001554:	01bc04b3          	add	s1,s8,s11
ffffffffc0001558:	00151593          	slli	a1,a0,0x1
ffffffffc000155c:	00bb85b3          	add	a1,s7,a1
ffffffffc0001560:	0005c603          	lbu	a2,0(a1)
ffffffffc0001564:	00158583          	lb	a1,1(a1)
ffffffffc0001568:	02b48223          	sb	a1,36(s1)
ffffffffc000156c:	02c481a3          	sb	a2,35(s1)
ffffffffc0001570:	000a0593          	mv	a1,s4
ffffffffc0001574:	00002097          	auipc	ra,0x2
ffffffffc0001578:	de0080e7          	jalr	-544(ra) # ffffffffc0003354 <__muldi3>
ffffffffc000157c:	40ac8533          	sub	a0,s9,a0
ffffffffc0001580:	00151513          	slli	a0,a0,0x1
ffffffffc0001584:	00ab8533          	add	a0,s7,a0
ffffffffc0001588:	00054583          	lbu	a1,0(a0) # 5f5e000 <XLENb+0x5f5dfc0>
ffffffffc000158c:	00150503          	lb	a0,1(a0)
ffffffffc0001590:	02a48323          	sb	a0,38(s1)
ffffffffc0001594:	02b482a3          	sb	a1,37(s1)
ffffffffc0001598:	ffcd8d93          	addi	s11,s11,-4
ffffffffc000159c:	f96d60e3          	bltu	s10,s6,ffffffffc000151c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E+0x74>
ffffffffc00015a0:	027d8493          	addi	s1,s11,39
ffffffffc00015a4:	06300513          	li	a0,99
ffffffffc00015a8:	05556263          	bltu	a0,s5,ffffffffc00015ec <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E+0x144>
ffffffffc00015ac:	000a8993          	mv	s3,s5
ffffffffc00015b0:	00900513          	li	a0,9
ffffffffc00015b4:	09355e63          	bge	a0,s3,ffffffffc0001650 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E+0x1a8>
ffffffffc00015b8:	00199513          	slli	a0,s3,0x1
ffffffffc00015bc:	00ab85b3          	add	a1,s7,a0
ffffffffc00015c0:	ffe48513          	addi	a0,s1,-2
ffffffffc00015c4:	f7140613          	addi	a2,s0,-143
ffffffffc00015c8:	00a60633          	add	a2,a2,a0
ffffffffc00015cc:	0005c683          	lbu	a3,0(a1)
ffffffffc00015d0:	00158583          	lb	a1,1(a1)
ffffffffc00015d4:	00b600a3          	sb	a1,1(a2)
ffffffffc00015d8:	00d60023          	sb	a3,0(a2)
ffffffffc00015dc:	0880006f          	j	ffffffffc0001664 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E+0x1bc>
ffffffffc00015e0:	02700493          	li	s1,39
ffffffffc00015e4:	06300513          	li	a0,99
ffffffffc00015e8:	fd5572e3          	bgeu	a0,s5,ffffffffc00015ac <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E+0x104>
ffffffffc00015ec:	00010b37          	lui	s6,0x10
ffffffffc00015f0:	fffb051b          	addiw	a0,s6,-1
ffffffffc00015f4:	00aaf533          	and	a0,s5,a0
ffffffffc00015f8:	06400a13          	li	s4,100
ffffffffc00015fc:	000a0593          	mv	a1,s4
ffffffffc0001600:	00001097          	auipc	ra,0x1
ffffffffc0001604:	3a8080e7          	jalr	936(ra) # ffffffffc00029a8 <__udivdi3>
ffffffffc0001608:	00050993          	mv	s3,a0
ffffffffc000160c:	000a0593          	mv	a1,s4
ffffffffc0001610:	00002097          	auipc	ra,0x2
ffffffffc0001614:	d44080e7          	jalr	-700(ra) # ffffffffc0003354 <__muldi3>
ffffffffc0001618:	40aa8533          	sub	a0,s5,a0
ffffffffc000161c:	00151513          	slli	a0,a0,0x1
ffffffffc0001620:	ffeb059b          	addiw	a1,s6,-2
ffffffffc0001624:	00b57533          	and	a0,a0,a1
ffffffffc0001628:	00ab8533          	add	a0,s7,a0
ffffffffc000162c:	ffe48493          	addi	s1,s1,-2
ffffffffc0001630:	f7140593          	addi	a1,s0,-143
ffffffffc0001634:	009585b3          	add	a1,a1,s1
ffffffffc0001638:	00054603          	lbu	a2,0(a0)
ffffffffc000163c:	00150503          	lb	a0,1(a0)
ffffffffc0001640:	00a580a3          	sb	a0,1(a1)
ffffffffc0001644:	00c58023          	sb	a2,0(a1)
ffffffffc0001648:	00900513          	li	a0,9
ffffffffc000164c:	f73546e3          	blt	a0,s3,ffffffffc00015b8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E+0x110>
ffffffffc0001650:	fff48513          	addi	a0,s1,-1
ffffffffc0001654:	f7140593          	addi	a1,s0,-143
ffffffffc0001658:	00a585b3          	add	a1,a1,a0
ffffffffc000165c:	03098613          	addi	a2,s3,48
ffffffffc0001660:	00c58023          	sb	a2,0(a1)
ffffffffc0001664:	f7140593          	addi	a1,s0,-143
ffffffffc0001668:	00a58733          	add	a4,a1,a0
ffffffffc000166c:	02700593          	li	a1,39
ffffffffc0001670:	40a587b3          	sub	a5,a1,a0
ffffffffc0001674:	c0004537          	lui	a0,0xc0004
ffffffffc0001678:	71050613          	addi	a2,a0,1808 # ffffffffc0004710 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.4>
ffffffffc000167c:	00100593          	li	a1,1
ffffffffc0001680:	00090513          	mv	a0,s2
ffffffffc0001684:	00000693          	li	a3,0
ffffffffc0001688:	00001097          	auipc	ra,0x1
ffffffffc000168c:	9c8080e7          	jalr	-1592(ra) # ffffffffc0002050 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>
ffffffffc0001690:	02813d83          	ld	s11,40(sp)
ffffffffc0001694:	03013d03          	ld	s10,48(sp)
ffffffffc0001698:	03813c83          	ld	s9,56(sp)
ffffffffc000169c:	04013c03          	ld	s8,64(sp)
ffffffffc00016a0:	04813b83          	ld	s7,72(sp)
ffffffffc00016a4:	05013b03          	ld	s6,80(sp)
ffffffffc00016a8:	05813a83          	ld	s5,88(sp)
ffffffffc00016ac:	06013a03          	ld	s4,96(sp)
ffffffffc00016b0:	06813983          	ld	s3,104(sp)
ffffffffc00016b4:	07013903          	ld	s2,112(sp)
ffffffffc00016b8:	07813483          	ld	s1,120(sp)
ffffffffc00016bc:	08013403          	ld	s0,128(sp)
ffffffffc00016c0:	08813083          	ld	ra,136(sp)
ffffffffc00016c4:	09010113          	addi	sp,sp,144
ffffffffc00016c8:	00008067          	ret

ffffffffc00016cc <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>:
ffffffffc00016cc:	f7010113          	addi	sp,sp,-144
ffffffffc00016d0:	08113423          	sd	ra,136(sp)
ffffffffc00016d4:	08813023          	sd	s0,128(sp)
ffffffffc00016d8:	06913c23          	sd	s1,120(sp)
ffffffffc00016dc:	07213823          	sd	s2,112(sp)
ffffffffc00016e0:	07313423          	sd	s3,104(sp)
ffffffffc00016e4:	07413023          	sd	s4,96(sp)
ffffffffc00016e8:	05513c23          	sd	s5,88(sp)
ffffffffc00016ec:	05613823          	sd	s6,80(sp)
ffffffffc00016f0:	05713423          	sd	s7,72(sp)
ffffffffc00016f4:	05813023          	sd	s8,64(sp)
ffffffffc00016f8:	03913c23          	sd	s9,56(sp)
ffffffffc00016fc:	03a13823          	sd	s10,48(sp)
ffffffffc0001700:	03b13423          	sd	s11,40(sp)
ffffffffc0001704:	09010413          	addi	s0,sp,144
ffffffffc0001708:	00058913          	mv	s2,a1
ffffffffc000170c:	00053a83          	ld	s5,0(a0)
ffffffffc0001710:	c0004537          	lui	a0,0xc0004
ffffffffc0001714:	70853b83          	ld	s7,1800(a0) # ffffffffc0004708 <_ZN4core3fmt3num14DEC_DIGITS_LUT17hefb44f08c26e5f71E>
ffffffffc0001718:	004ad513          	srli	a0,s5,0x4
ffffffffc000171c:	27100593          	li	a1,625
ffffffffc0001720:	0eb56263          	bltu	a0,a1,ffffffffc0001804 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE+0x138>
ffffffffc0001724:	00002537          	lui	a0,0x2
ffffffffc0001728:	7105099b          	addiw	s3,a0,1808
ffffffffc000172c:	06400a13          	li	s4,100
ffffffffc0001730:	f7140c13          	addi	s8,s0,-143
ffffffffc0001734:	05f5e537          	lui	a0,0x5f5e
ffffffffc0001738:	0ff50d1b          	addiw	s10,a0,255
ffffffffc000173c:	00000d93          	li	s11,0
ffffffffc0001740:	000a8b13          	mv	s6,s5
ffffffffc0001744:	000a8513          	mv	a0,s5
ffffffffc0001748:	00098593          	mv	a1,s3
ffffffffc000174c:	00001097          	auipc	ra,0x1
ffffffffc0001750:	25c080e7          	jalr	604(ra) # ffffffffc00029a8 <__udivdi3>
ffffffffc0001754:	00050a93          	mv	s5,a0
ffffffffc0001758:	00098593          	mv	a1,s3
ffffffffc000175c:	00002097          	auipc	ra,0x2
ffffffffc0001760:	bf8080e7          	jalr	-1032(ra) # ffffffffc0003354 <__muldi3>
ffffffffc0001764:	40ab0cb3          	sub	s9,s6,a0
ffffffffc0001768:	000c8513          	mv	a0,s9
ffffffffc000176c:	000a0593          	mv	a1,s4
ffffffffc0001770:	00001097          	auipc	ra,0x1
ffffffffc0001774:	238080e7          	jalr	568(ra) # ffffffffc00029a8 <__udivdi3>
ffffffffc0001778:	01bc04b3          	add	s1,s8,s11
ffffffffc000177c:	00151593          	slli	a1,a0,0x1
ffffffffc0001780:	00bb85b3          	add	a1,s7,a1
ffffffffc0001784:	0005c603          	lbu	a2,0(a1)
ffffffffc0001788:	00158583          	lb	a1,1(a1)
ffffffffc000178c:	02b48223          	sb	a1,36(s1)
ffffffffc0001790:	02c481a3          	sb	a2,35(s1)
ffffffffc0001794:	000a0593          	mv	a1,s4
ffffffffc0001798:	00002097          	auipc	ra,0x2
ffffffffc000179c:	bbc080e7          	jalr	-1092(ra) # ffffffffc0003354 <__muldi3>
ffffffffc00017a0:	40ac8533          	sub	a0,s9,a0
ffffffffc00017a4:	00151513          	slli	a0,a0,0x1
ffffffffc00017a8:	00ab8533          	add	a0,s7,a0
ffffffffc00017ac:	00054583          	lbu	a1,0(a0) # 5f5e000 <XLENb+0x5f5dfc0>
ffffffffc00017b0:	00150503          	lb	a0,1(a0)
ffffffffc00017b4:	02a48323          	sb	a0,38(s1)
ffffffffc00017b8:	02b482a3          	sb	a1,37(s1)
ffffffffc00017bc:	ffcd8d93          	addi	s11,s11,-4
ffffffffc00017c0:	f96d60e3          	bltu	s10,s6,ffffffffc0001740 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE+0x74>
ffffffffc00017c4:	027d8493          	addi	s1,s11,39
ffffffffc00017c8:	06300513          	li	a0,99
ffffffffc00017cc:	05554263          	blt	a0,s5,ffffffffc0001810 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE+0x144>
ffffffffc00017d0:	000a8993          	mv	s3,s5
ffffffffc00017d4:	00900513          	li	a0,9
ffffffffc00017d8:	09355e63          	bge	a0,s3,ffffffffc0001874 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE+0x1a8>
ffffffffc00017dc:	00199513          	slli	a0,s3,0x1
ffffffffc00017e0:	00ab85b3          	add	a1,s7,a0
ffffffffc00017e4:	ffe48513          	addi	a0,s1,-2
ffffffffc00017e8:	f7140613          	addi	a2,s0,-143
ffffffffc00017ec:	00a60633          	add	a2,a2,a0
ffffffffc00017f0:	0005c683          	lbu	a3,0(a1)
ffffffffc00017f4:	00158583          	lb	a1,1(a1)
ffffffffc00017f8:	00b600a3          	sb	a1,1(a2)
ffffffffc00017fc:	00d60023          	sb	a3,0(a2)
ffffffffc0001800:	0880006f          	j	ffffffffc0001888 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE+0x1bc>
ffffffffc0001804:	02700493          	li	s1,39
ffffffffc0001808:	06300513          	li	a0,99
ffffffffc000180c:	fd5552e3          	bge	a0,s5,ffffffffc00017d0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE+0x104>
ffffffffc0001810:	00010b37          	lui	s6,0x10
ffffffffc0001814:	fffb051b          	addiw	a0,s6,-1
ffffffffc0001818:	00aaf533          	and	a0,s5,a0
ffffffffc000181c:	06400a13          	li	s4,100
ffffffffc0001820:	000a0593          	mv	a1,s4
ffffffffc0001824:	00001097          	auipc	ra,0x1
ffffffffc0001828:	184080e7          	jalr	388(ra) # ffffffffc00029a8 <__udivdi3>
ffffffffc000182c:	00050993          	mv	s3,a0
ffffffffc0001830:	000a0593          	mv	a1,s4
ffffffffc0001834:	00002097          	auipc	ra,0x2
ffffffffc0001838:	b20080e7          	jalr	-1248(ra) # ffffffffc0003354 <__muldi3>
ffffffffc000183c:	40aa8533          	sub	a0,s5,a0
ffffffffc0001840:	00151513          	slli	a0,a0,0x1
ffffffffc0001844:	ffeb059b          	addiw	a1,s6,-2
ffffffffc0001848:	00b57533          	and	a0,a0,a1
ffffffffc000184c:	00ab8533          	add	a0,s7,a0
ffffffffc0001850:	ffe48493          	addi	s1,s1,-2
ffffffffc0001854:	f7140593          	addi	a1,s0,-143
ffffffffc0001858:	009585b3          	add	a1,a1,s1
ffffffffc000185c:	00054603          	lbu	a2,0(a0)
ffffffffc0001860:	00150503          	lb	a0,1(a0)
ffffffffc0001864:	00a580a3          	sb	a0,1(a1)
ffffffffc0001868:	00c58023          	sb	a2,0(a1)
ffffffffc000186c:	00900513          	li	a0,9
ffffffffc0001870:	f73546e3          	blt	a0,s3,ffffffffc00017dc <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE+0x110>
ffffffffc0001874:	fff48513          	addi	a0,s1,-1
ffffffffc0001878:	f7140593          	addi	a1,s0,-143
ffffffffc000187c:	00a585b3          	add	a1,a1,a0
ffffffffc0001880:	03098613          	addi	a2,s3,48
ffffffffc0001884:	00c58023          	sb	a2,0(a1)
ffffffffc0001888:	f7140593          	addi	a1,s0,-143
ffffffffc000188c:	00a58733          	add	a4,a1,a0
ffffffffc0001890:	02700593          	li	a1,39
ffffffffc0001894:	40a587b3          	sub	a5,a1,a0
ffffffffc0001898:	c0004537          	lui	a0,0xc0004
ffffffffc000189c:	71050613          	addi	a2,a0,1808 # ffffffffc0004710 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.4>
ffffffffc00018a0:	00100593          	li	a1,1
ffffffffc00018a4:	00090513          	mv	a0,s2
ffffffffc00018a8:	00000693          	li	a3,0
ffffffffc00018ac:	00000097          	auipc	ra,0x0
ffffffffc00018b0:	7a4080e7          	jalr	1956(ra) # ffffffffc0002050 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>
ffffffffc00018b4:	02813d83          	ld	s11,40(sp)
ffffffffc00018b8:	03013d03          	ld	s10,48(sp)
ffffffffc00018bc:	03813c83          	ld	s9,56(sp)
ffffffffc00018c0:	04013c03          	ld	s8,64(sp)
ffffffffc00018c4:	04813b83          	ld	s7,72(sp)
ffffffffc00018c8:	05013b03          	ld	s6,80(sp)
ffffffffc00018cc:	05813a83          	ld	s5,88(sp)
ffffffffc00018d0:	06013a03          	ld	s4,96(sp)
ffffffffc00018d4:	06813983          	ld	s3,104(sp)
ffffffffc00018d8:	07013903          	ld	s2,112(sp)
ffffffffc00018dc:	07813483          	ld	s1,120(sp)
ffffffffc00018e0:	08013403          	ld	s0,128(sp)
ffffffffc00018e4:	08813083          	ld	ra,136(sp)
ffffffffc00018e8:	09010113          	addi	sp,sp,144
ffffffffc00018ec:	00008067          	ret

ffffffffc00018f0 <_ZN4core3ptr18real_drop_in_place17h74025c06c408c630E>:
ffffffffc00018f0:	ff010113          	addi	sp,sp,-16
ffffffffc00018f4:	00113423          	sd	ra,8(sp)
ffffffffc00018f8:	00813023          	sd	s0,0(sp)
ffffffffc00018fc:	01010413          	addi	s0,sp,16
ffffffffc0001900:	00013403          	ld	s0,0(sp)
ffffffffc0001904:	00813083          	ld	ra,8(sp)
ffffffffc0001908:	01010113          	addi	sp,sp,16
ffffffffc000190c:	00008067          	ret

ffffffffc0001910 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h04a6df3736df35c1E>:
ffffffffc0001910:	ff010113          	addi	sp,sp,-16
ffffffffc0001914:	00113423          	sd	ra,8(sp)
ffffffffc0001918:	00813023          	sd	s0,0(sp)
ffffffffc000191c:	01010413          	addi	s0,sp,16
ffffffffc0001920:	002ed537          	lui	a0,0x2ed
ffffffffc0001924:	2eb5051b          	addiw	a0,a0,747
ffffffffc0001928:	00c51513          	slli	a0,a0,0xc
ffffffffc000192c:	82150513          	addi	a0,a0,-2015 # 2ec821 <XLENb+0x2ec7e1>
ffffffffc0001930:	00c51513          	slli	a0,a0,0xc
ffffffffc0001934:	04350513          	addi	a0,a0,67
ffffffffc0001938:	00c51513          	slli	a0,a0,0xc
ffffffffc000193c:	79a50513          	addi	a0,a0,1946
ffffffffc0001940:	00013403          	ld	s0,0(sp)
ffffffffc0001944:	00813083          	ld	ra,8(sp)
ffffffffc0001948:	01010113          	addi	sp,sp,16
ffffffffc000194c:	00008067          	ret

ffffffffc0001950 <_ZN75_$LT$core..panic..PanicInfo$LT$$u27$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hcacd4d94b13e8d6fE>:
ffffffffc0001950:	f6010113          	addi	sp,sp,-160
ffffffffc0001954:	08113c23          	sd	ra,152(sp)
ffffffffc0001958:	08813823          	sd	s0,144(sp)
ffffffffc000195c:	08913423          	sd	s1,136(sp)
ffffffffc0001960:	09213023          	sd	s2,128(sp)
ffffffffc0001964:	07313c23          	sd	s3,120(sp)
ffffffffc0001968:	07413823          	sd	s4,112(sp)
ffffffffc000196c:	0a010413          	addi	s0,sp,160
ffffffffc0001970:	00058493          	mv	s1,a1
ffffffffc0001974:	00050913          	mv	s2,a0
ffffffffc0001978:	0205b503          	ld	a0,32(a1)
ffffffffc000197c:	0285b583          	ld	a1,40(a1)
ffffffffc0001980:	0185b683          	ld	a3,24(a1)
ffffffffc0001984:	c00045b7          	lui	a1,0xc0004
ffffffffc0001988:	73058593          	addi	a1,a1,1840 # ffffffffc0004730 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.5>
ffffffffc000198c:	00c00613          	li	a2,12
ffffffffc0001990:	000680e7          	jalr	a3
ffffffffc0001994:	00100993          	li	s3,1
ffffffffc0001998:	10051e63          	bnez	a0,ffffffffc0001ab4 <_ZN75_$LT$core..panic..PanicInfo$LT$$u27$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hcacd4d94b13e8d6fE+0x164>
ffffffffc000199c:	01093503          	ld	a0,16(s2) # 10010 <XLENb+0xffd0>
ffffffffc00019a0:	00050a63          	beqz	a0,ffffffffc00019b4 <_ZN75_$LT$core..panic..PanicInfo$LT$$u27$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hcacd4d94b13e8d6fE+0x64>
ffffffffc00019a4:	f6a43423          	sd	a0,-152(s0)
ffffffffc00019a8:	c0003537          	lui	a0,0xc0003
ffffffffc00019ac:	8cc50513          	addi	a0,a0,-1844 # ffffffffc00028cc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36d96680293b17a0E>
ffffffffc00019b0:	0480006f          	j	ffffffffc00019f8 <_ZN75_$LT$core..panic..PanicInfo$LT$$u27$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hcacd4d94b13e8d6fE+0xa8>
ffffffffc00019b4:	00093a03          	ld	s4,0(s2)
ffffffffc00019b8:	00893503          	ld	a0,8(s2)
ffffffffc00019bc:	01853583          	ld	a1,24(a0)
ffffffffc00019c0:	000a0513          	mv	a0,s4
ffffffffc00019c4:	000580e7          	jalr	a1
ffffffffc00019c8:	008885b7          	lui	a1,0x888
ffffffffc00019cc:	4a75859b          	addiw	a1,a1,1191
ffffffffc00019d0:	00d59593          	slli	a1,a1,0xd
ffffffffc00019d4:	97158593          	addi	a1,a1,-1679 # 887971 <XLENb+0x887931>
ffffffffc00019d8:	00c59593          	slli	a1,a1,0xc
ffffffffc00019dc:	b0958593          	addi	a1,a1,-1271
ffffffffc00019e0:	00c59593          	slli	a1,a1,0xc
ffffffffc00019e4:	76458593          	addi	a1,a1,1892
ffffffffc00019e8:	04b51e63          	bne	a0,a1,ffffffffc0001a44 <_ZN75_$LT$core..panic..PanicInfo$LT$$u27$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hcacd4d94b13e8d6fE+0xf4>
ffffffffc00019ec:	f7443423          	sd	s4,-152(s0)
ffffffffc00019f0:	c0003537          	lui	a0,0xc0003
ffffffffc00019f4:	93c50513          	addi	a0,a0,-1732 # ffffffffc000293c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f0c1b3cb995c3c1E>
ffffffffc00019f8:	f6a43c23          	sd	a0,-136(s0)
ffffffffc00019fc:	f6840513          	addi	a0,s0,-152
ffffffffc0001a00:	f6a43823          	sd	a0,-144(s0)
ffffffffc0001a04:	0284b583          	ld	a1,40(s1)
ffffffffc0001a08:	0204b503          	ld	a0,32(s1)
ffffffffc0001a0c:	00100613          	li	a2,1
ffffffffc0001a10:	fcc43423          	sd	a2,-56(s0)
ffffffffc0001a14:	f7040613          	addi	a2,s0,-144
ffffffffc0001a18:	fcc43023          	sd	a2,-64(s0)
ffffffffc0001a1c:	00200613          	li	a2,2
ffffffffc0001a20:	fac43423          	sd	a2,-88(s0)
ffffffffc0001a24:	c0004637          	lui	a2,0xc0004
ffffffffc0001a28:	74060613          	addi	a2,a2,1856 # ffffffffc0004740 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.8>
ffffffffc0001a2c:	fac43023          	sd	a2,-96(s0)
ffffffffc0001a30:	fa043823          	sd	zero,-80(s0)
ffffffffc0001a34:	fa040613          	addi	a2,s0,-96
ffffffffc0001a38:	00000097          	auipc	ra,0x0
ffffffffc0001a3c:	280080e7          	jalr	640(ra) # ffffffffc0001cb8 <_ZN4core3fmt5write17h62151e7ab9dfc071E>
ffffffffc0001a40:	06051a63          	bnez	a0,ffffffffc0001ab4 <_ZN75_$LT$core..panic..PanicInfo$LT$$u27$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hcacd4d94b13e8d6fE+0x164>
ffffffffc0001a44:	02c90513          	addi	a0,s2,44
ffffffffc0001a48:	f8a43823          	sd	a0,-112(s0)
ffffffffc0001a4c:	c0001537          	lui	a0,0xc0001
ffffffffc0001a50:	4a850513          	addi	a0,a0,1192 # ffffffffc00014a8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E>
ffffffffc0001a54:	f8a43c23          	sd	a0,-104(s0)
ffffffffc0001a58:	f8a43423          	sd	a0,-120(s0)
ffffffffc0001a5c:	02890513          	addi	a0,s2,40
ffffffffc0001a60:	f8a43023          	sd	a0,-128(s0)
ffffffffc0001a64:	c0003537          	lui	a0,0xc0003
ffffffffc0001a68:	97450513          	addi	a0,a0,-1676 # ffffffffc0002974 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h949cc7e59610bfd8E>
ffffffffc0001a6c:	f6a43c23          	sd	a0,-136(s0)
ffffffffc0001a70:	01890513          	addi	a0,s2,24
ffffffffc0001a74:	f6a43823          	sd	a0,-144(s0)
ffffffffc0001a78:	0284b583          	ld	a1,40(s1)
ffffffffc0001a7c:	0204b503          	ld	a0,32(s1)
ffffffffc0001a80:	f7040613          	addi	a2,s0,-144
ffffffffc0001a84:	fcc43023          	sd	a2,-64(s0)
ffffffffc0001a88:	fa043823          	sd	zero,-80(s0)
ffffffffc0001a8c:	00300613          	li	a2,3
ffffffffc0001a90:	fcc43423          	sd	a2,-56(s0)
ffffffffc0001a94:	fac43423          	sd	a2,-88(s0)
ffffffffc0001a98:	c0004637          	lui	a2,0xc0004
ffffffffc0001a9c:	76860613          	addi	a2,a2,1896 # ffffffffc0004768 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.10>
ffffffffc0001aa0:	fac43023          	sd	a2,-96(s0)
ffffffffc0001aa4:	fa040613          	addi	a2,s0,-96
ffffffffc0001aa8:	00000097          	auipc	ra,0x0
ffffffffc0001aac:	210080e7          	jalr	528(ra) # ffffffffc0001cb8 <_ZN4core3fmt5write17h62151e7ab9dfc071E>
ffffffffc0001ab0:	00050993          	mv	s3,a0
ffffffffc0001ab4:	00098513          	mv	a0,s3
ffffffffc0001ab8:	07013a03          	ld	s4,112(sp)
ffffffffc0001abc:	07813983          	ld	s3,120(sp)
ffffffffc0001ac0:	08013903          	ld	s2,128(sp)
ffffffffc0001ac4:	08813483          	ld	s1,136(sp)
ffffffffc0001ac8:	09013403          	ld	s0,144(sp)
ffffffffc0001acc:	09813083          	ld	ra,152(sp)
ffffffffc0001ad0:	0a010113          	addi	sp,sp,160
ffffffffc0001ad4:	00008067          	ret

ffffffffc0001ad8 <_ZN4core9panicking5panic17hd2bd6502c4755698E>:
ffffffffc0001ad8:	f9010113          	addi	sp,sp,-112
ffffffffc0001adc:	06113423          	sd	ra,104(sp)
ffffffffc0001ae0:	06813023          	sd	s0,96(sp)
ffffffffc0001ae4:	07010413          	addi	s0,sp,112
ffffffffc0001ae8:	01053583          	ld	a1,16(a0)
ffffffffc0001aec:	01853603          	ld	a2,24(a0)
ffffffffc0001af0:	02053683          	ld	a3,32(a0)
ffffffffc0001af4:	00053703          	ld	a4,0(a0)
ffffffffc0001af8:	00853503          	ld	a0,8(a0)
ffffffffc0001afc:	fca43823          	sd	a0,-48(s0)
ffffffffc0001b00:	fce43423          	sd	a4,-56(s0)
ffffffffc0001b04:	c0004537          	lui	a0,0xc0004
ffffffffc0001b08:	71050513          	addi	a0,a0,1808 # ffffffffc0004710 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.4>
ffffffffc0001b0c:	faa43c23          	sd	a0,-72(s0)
ffffffffc0001b10:	fc043023          	sd	zero,-64(s0)
ffffffffc0001b14:	fa043423          	sd	zero,-88(s0)
ffffffffc0001b18:	00100513          	li	a0,1
ffffffffc0001b1c:	faa43023          	sd	a0,-96(s0)
ffffffffc0001b20:	fc840513          	addi	a0,s0,-56
ffffffffc0001b24:	f8a43c23          	sd	a0,-104(s0)
ffffffffc0001b28:	fed43423          	sd	a3,-24(s0)
ffffffffc0001b2c:	fec43023          	sd	a2,-32(s0)
ffffffffc0001b30:	fcb43c23          	sd	a1,-40(s0)
ffffffffc0001b34:	f9840513          	addi	a0,s0,-104
ffffffffc0001b38:	fd840593          	addi	a1,s0,-40
ffffffffc0001b3c:	00000097          	auipc	ra,0x0
ffffffffc0001b40:	088080e7          	jalr	136(ra) # ffffffffc0001bc4 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>
ffffffffc0001b44:	ffffe097          	auipc	ra,0xffffe
ffffffffc0001b48:	79c080e7          	jalr	1948(ra) # ffffffffc00002e0 <abort>

ffffffffc0001b4c <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>:
ffffffffc0001b4c:	f9010113          	addi	sp,sp,-112
ffffffffc0001b50:	06113423          	sd	ra,104(sp)
ffffffffc0001b54:	06813023          	sd	s0,96(sp)
ffffffffc0001b58:	07010413          	addi	s0,sp,112
ffffffffc0001b5c:	00050693          	mv	a3,a0
ffffffffc0001b60:	f8c43c23          	sd	a2,-104(s0)
ffffffffc0001b64:	f8b43823          	sd	a1,-112(s0)
ffffffffc0001b68:	f9040513          	addi	a0,s0,-112
ffffffffc0001b6c:	fea43023          	sd	a0,-32(s0)
ffffffffc0001b70:	c0001537          	lui	a0,0xc0001
ffffffffc0001b74:	6cc50513          	addi	a0,a0,1740 # ffffffffc00016cc <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>
ffffffffc0001b78:	fea43423          	sd	a0,-24(s0)
ffffffffc0001b7c:	fca43c23          	sd	a0,-40(s0)
ffffffffc0001b80:	f9840513          	addi	a0,s0,-104
ffffffffc0001b84:	fca43823          	sd	a0,-48(s0)
ffffffffc0001b88:	fd040513          	addi	a0,s0,-48
ffffffffc0001b8c:	fca43023          	sd	a0,-64(s0)
ffffffffc0001b90:	fa043823          	sd	zero,-80(s0)
ffffffffc0001b94:	00200513          	li	a0,2
ffffffffc0001b98:	fca43423          	sd	a0,-56(s0)
ffffffffc0001b9c:	faa43423          	sd	a0,-88(s0)
ffffffffc0001ba0:	c0004537          	lui	a0,0xc0004
ffffffffc0001ba4:	7b050513          	addi	a0,a0,1968 # ffffffffc00047b0 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.13>
ffffffffc0001ba8:	faa43023          	sd	a0,-96(s0)
ffffffffc0001bac:	fa040513          	addi	a0,s0,-96
ffffffffc0001bb0:	00068593          	mv	a1,a3
ffffffffc0001bb4:	00000097          	auipc	ra,0x0
ffffffffc0001bb8:	010080e7          	jalr	16(ra) # ffffffffc0001bc4 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>
ffffffffc0001bbc:	ffffe097          	auipc	ra,0xffffe
ffffffffc0001bc0:	724080e7          	jalr	1828(ra) # ffffffffc00002e0 <abort>

ffffffffc0001bc4 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>:
ffffffffc0001bc4:	fc010113          	addi	sp,sp,-64
ffffffffc0001bc8:	02113c23          	sd	ra,56(sp)
ffffffffc0001bcc:	02813823          	sd	s0,48(sp)
ffffffffc0001bd0:	04010413          	addi	s0,sp,64
ffffffffc0001bd4:	0005b603          	ld	a2,0(a1)
ffffffffc0001bd8:	0085b683          	ld	a3,8(a1)
ffffffffc0001bdc:	0105b583          	ld	a1,16(a1)
ffffffffc0001be0:	feb43423          	sd	a1,-24(s0)
ffffffffc0001be4:	fed43023          	sd	a3,-32(s0)
ffffffffc0001be8:	fcc43c23          	sd	a2,-40(s0)
ffffffffc0001bec:	fca43823          	sd	a0,-48(s0)
ffffffffc0001bf0:	c0004537          	lui	a0,0xc0004
ffffffffc0001bf4:	71050513          	addi	a0,a0,1808 # ffffffffc0004710 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.4>
ffffffffc0001bf8:	fca43423          	sd	a0,-56(s0)
ffffffffc0001bfc:	c0004537          	lui	a0,0xc0004
ffffffffc0001c00:	71050513          	addi	a0,a0,1808 # ffffffffc0004710 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.4>
ffffffffc0001c04:	fca43023          	sd	a0,-64(s0)
ffffffffc0001c08:	fc040513          	addi	a0,s0,-64
ffffffffc0001c0c:	fffff097          	auipc	ra,0xfffff
ffffffffc0001c10:	f5c080e7          	jalr	-164(ra) # ffffffffc0000b68 <rust_begin_unwind>
ffffffffc0001c14:	ffffe097          	auipc	ra,0xffffe
ffffffffc0001c18:	6cc080e7          	jalr	1740(ra) # ffffffffc00002e0 <abort>

ffffffffc0001c1c <_ZN4core5slice22slice_index_order_fail17h2c29e16eca0878c2E>:
ffffffffc0001c1c:	f9010113          	addi	sp,sp,-112
ffffffffc0001c20:	06113423          	sd	ra,104(sp)
ffffffffc0001c24:	06813023          	sd	s0,96(sp)
ffffffffc0001c28:	07010413          	addi	s0,sp,112
ffffffffc0001c2c:	f8b43c23          	sd	a1,-104(s0)
ffffffffc0001c30:	f8a43823          	sd	a0,-112(s0)
ffffffffc0001c34:	f9840513          	addi	a0,s0,-104
ffffffffc0001c38:	fea43023          	sd	a0,-32(s0)
ffffffffc0001c3c:	c0001537          	lui	a0,0xc0001
ffffffffc0001c40:	6cc50513          	addi	a0,a0,1740 # ffffffffc00016cc <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>
ffffffffc0001c44:	fea43423          	sd	a0,-24(s0)
ffffffffc0001c48:	fca43c23          	sd	a0,-40(s0)
ffffffffc0001c4c:	f9040513          	addi	a0,s0,-112
ffffffffc0001c50:	fca43823          	sd	a0,-48(s0)
ffffffffc0001c54:	fd040513          	addi	a0,s0,-48
ffffffffc0001c58:	fca43023          	sd	a0,-64(s0)
ffffffffc0001c5c:	fa043823          	sd	zero,-80(s0)
ffffffffc0001c60:	00200513          	li	a0,2
ffffffffc0001c64:	fca43423          	sd	a0,-56(s0)
ffffffffc0001c68:	faa43423          	sd	a0,-88(s0)
ffffffffc0001c6c:	c0005537          	lui	a0,0xc0005
ffffffffc0001c70:	87050513          	addi	a0,a0,-1936 # ffffffffc0004870 <.Lanon.95c827826308e5136436438cbae97c0b.57>
ffffffffc0001c74:	faa43023          	sd	a0,-96(s0)
ffffffffc0001c78:	c0005537          	lui	a0,0xc0005
ffffffffc0001c7c:	89050593          	addi	a1,a0,-1904 # ffffffffc0004890 <.Lanon.95c827826308e5136436438cbae97c0b.58>
ffffffffc0001c80:	fa040513          	addi	a0,s0,-96
ffffffffc0001c84:	00000097          	auipc	ra,0x0
ffffffffc0001c88:	f40080e7          	jalr	-192(ra) # ffffffffc0001bc4 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>
ffffffffc0001c8c:	ffffe097          	auipc	ra,0xffffe
ffffffffc0001c90:	654080e7          	jalr	1620(ra) # ffffffffc00002e0 <abort>

ffffffffc0001c94 <_ZN4core3fmt10ArgumentV110show_usize17h0fc7316aa8f9cde8E.llvm.18115772582800530547>:
ffffffffc0001c94:	ff010113          	addi	sp,sp,-16
ffffffffc0001c98:	00113423          	sd	ra,8(sp)
ffffffffc0001c9c:	00813023          	sd	s0,0(sp)
ffffffffc0001ca0:	01010413          	addi	s0,sp,16
ffffffffc0001ca4:	00013403          	ld	s0,0(sp)
ffffffffc0001ca8:	00813083          	ld	ra,8(sp)
ffffffffc0001cac:	01010113          	addi	sp,sp,16
ffffffffc0001cb0:	00000317          	auipc	t1,0x0
ffffffffc0001cb4:	a1c30067          	jr	-1508(t1) # ffffffffc00016cc <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>

ffffffffc0001cb8 <_ZN4core3fmt5write17h62151e7ab9dfc071E>:
ffffffffc0001cb8:	f3010113          	addi	sp,sp,-208
ffffffffc0001cbc:	0c113423          	sd	ra,200(sp)
ffffffffc0001cc0:	0c813023          	sd	s0,192(sp)
ffffffffc0001cc4:	0a913c23          	sd	s1,184(sp)
ffffffffc0001cc8:	0b213823          	sd	s2,176(sp)
ffffffffc0001ccc:	0b313423          	sd	s3,168(sp)
ffffffffc0001cd0:	0b413023          	sd	s4,160(sp)
ffffffffc0001cd4:	09513c23          	sd	s5,152(sp)
ffffffffc0001cd8:	09613823          	sd	s6,144(sp)
ffffffffc0001cdc:	09713423          	sd	s7,136(sp)
ffffffffc0001ce0:	09813023          	sd	s8,128(sp)
ffffffffc0001ce4:	07913c23          	sd	s9,120(sp)
ffffffffc0001ce8:	07a13823          	sd	s10,112(sp)
ffffffffc0001cec:	07b13423          	sd	s11,104(sp)
ffffffffc0001cf0:	0d010413          	addi	s0,sp,208
ffffffffc0001cf4:	02063b83          	ld	s7,32(a2)
ffffffffc0001cf8:	02863683          	ld	a3,40(a2)
ffffffffc0001cfc:	00300a93          	li	s5,3
ffffffffc0001d00:	f9540823          	sb	s5,-112(s0)
ffffffffc0001d04:	00100b13          	li	s6,1
ffffffffc0001d08:	025b1713          	slli	a4,s6,0x25
ffffffffc0001d0c:	f8e43423          	sd	a4,-120(s0)
ffffffffc0001d10:	f6b43023          	sd	a1,-160(s0)
ffffffffc0001d14:	f4a43c23          	sd	a0,-168(s0)
ffffffffc0001d18:	00469713          	slli	a4,a3,0x4
ffffffffc0001d1c:	00eb8733          	add	a4,s7,a4
ffffffffc0001d20:	f6e43823          	sd	a4,-144(s0)
ffffffffc0001d24:	f8d43023          	sd	a3,-128(s0)
ffffffffc0001d28:	f7743c23          	sd	s7,-136(s0)
ffffffffc0001d2c:	f7743423          	sd	s7,-152(s0)
ffffffffc0001d30:	f4043423          	sd	zero,-184(s0)
ffffffffc0001d34:	f2043c23          	sd	zero,-200(s0)
ffffffffc0001d38:	01063483          	ld	s1,16(a2)
ffffffffc0001d3c:	1c048c63          	beqz	s1,ffffffffc0001f14 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x25c>
ffffffffc0001d40:	03ab1693          	slli	a3,s6,0x3a
ffffffffc0001d44:	fff68693          	addi	a3,a3,-1
ffffffffc0001d48:	01863703          	ld	a4,24(a2)
ffffffffc0001d4c:	00d776b3          	and	a3,a4,a3
ffffffffc0001d50:	00863903          	ld	s2,8(a2)
ffffffffc0001d54:	00090b93          	mv	s7,s2
ffffffffc0001d58:	00d96463          	bltu	s2,a3,ffffffffc0001d60 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0xa8>
ffffffffc0001d5c:	00068b93          	mv	s7,a3
ffffffffc0001d60:	00063983          	ld	s3,0(a2)
ffffffffc0001d64:	220b8863          	beqz	s7,ffffffffc0001f94 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x2dc>
ffffffffc0001d68:	0185b683          	ld	a3,24(a1)
ffffffffc0001d6c:	0089b603          	ld	a2,8(s3)
ffffffffc0001d70:	0009b583          	ld	a1,0(s3)
ffffffffc0001d74:	000680e7          	jalr	a3
ffffffffc0001d78:	24051463          	bnez	a0,ffffffffc0001fc0 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x308>
ffffffffc0001d7c:	01898c13          	addi	s8,s3,24
ffffffffc0001d80:	02048493          	addi	s1,s1,32
ffffffffc0001d84:	c0002537          	lui	a0,0xc0002
ffffffffc0001d88:	c9450d13          	addi	s10,a0,-876 # ffffffffc0001c94 <_ZN4core3fmt10ArgumentV110show_usize17h0fc7316aa8f9cde8E.llvm.18115772582800530547>
ffffffffc0001d8c:	f3840a13          	addi	s4,s0,-200
ffffffffc0001d90:	00200d93          	li	s11,2
ffffffffc0001d94:	000b0c93          	mv	s9,s6
ffffffffc0001d98:	0104a503          	lw	a0,16(s1)
ffffffffc0001d9c:	f8a42623          	sw	a0,-116(s0)
ffffffffc0001da0:	01848503          	lb	a0,24(s1)
ffffffffc0001da4:	f8a40823          	sb	a0,-112(s0)
ffffffffc0001da8:	0144a503          	lw	a0,20(s1)
ffffffffc0001dac:	f8a42423          	sw	a0,-120(s0)
ffffffffc0001db0:	0084b583          	ld	a1,8(s1)
ffffffffc0001db4:	0004b503          	ld	a0,0(s1)
ffffffffc0001db8:	03650a63          	beq	a0,s6,ffffffffc0001dec <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x134>
ffffffffc0001dbc:	01b50663          	beq	a0,s11,ffffffffc0001dc8 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x110>
ffffffffc0001dc0:	03550263          	beq	a0,s5,ffffffffc0001de4 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x12c>
ffffffffc0001dc4:	04c0006f          	j	ffffffffc0001e10 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x158>
ffffffffc0001dc8:	f6843503          	ld	a0,-152(s0)
ffffffffc0001dcc:	f7043583          	ld	a1,-144(s0)
ffffffffc0001dd0:	00b50a63          	beq	a0,a1,ffffffffc0001de4 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x12c>
ffffffffc0001dd4:	01050593          	addi	a1,a0,16
ffffffffc0001dd8:	f6b43423          	sd	a1,-152(s0)
ffffffffc0001ddc:	00853583          	ld	a1,8(a0)
ffffffffc0001de0:	03a58463          	beq	a1,s10,ffffffffc0001e08 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x150>
ffffffffc0001de4:	00000513          	li	a0,0
ffffffffc0001de8:	02c0006f          	j	ffffffffc0001e14 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x15c>
ffffffffc0001dec:	f8043603          	ld	a2,-128(s0)
ffffffffc0001df0:	22c5f863          	bgeu	a1,a2,ffffffffc0002020 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x368>
ffffffffc0001df4:	00459513          	slli	a0,a1,0x4
ffffffffc0001df8:	f7843583          	ld	a1,-136(s0)
ffffffffc0001dfc:	00a58533          	add	a0,a1,a0
ffffffffc0001e00:	00853583          	ld	a1,8(a0)
ffffffffc0001e04:	ffa590e3          	bne	a1,s10,ffffffffc0001de4 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x12c>
ffffffffc0001e08:	00053503          	ld	a0,0(a0)
ffffffffc0001e0c:	00053583          	ld	a1,0(a0)
ffffffffc0001e10:	000b0513          	mv	a0,s6
ffffffffc0001e14:	f4b43023          	sd	a1,-192(s0)
ffffffffc0001e18:	f2a43c23          	sd	a0,-200(s0)
ffffffffc0001e1c:	ff84b583          	ld	a1,-8(s1)
ffffffffc0001e20:	ff04b503          	ld	a0,-16(s1)
ffffffffc0001e24:	05650e63          	beq	a0,s6,ffffffffc0001e80 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x1c8>
ffffffffc0001e28:	01b50663          	beq	a0,s11,ffffffffc0001e34 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x17c>
ffffffffc0001e2c:	03550263          	beq	a0,s5,ffffffffc0001e50 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x198>
ffffffffc0001e30:	0740006f          	j	ffffffffc0001ea4 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x1ec>
ffffffffc0001e34:	f6843503          	ld	a0,-152(s0)
ffffffffc0001e38:	f7043583          	ld	a1,-144(s0)
ffffffffc0001e3c:	00b50a63          	beq	a0,a1,ffffffffc0001e50 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x198>
ffffffffc0001e40:	01050593          	addi	a1,a0,16
ffffffffc0001e44:	f6b43423          	sd	a1,-152(s0)
ffffffffc0001e48:	00853583          	ld	a1,8(a0)
ffffffffc0001e4c:	05a58863          	beq	a1,s10,ffffffffc0001e9c <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x1e4>
ffffffffc0001e50:	00000513          	li	a0,0
ffffffffc0001e54:	f4b43823          	sd	a1,-176(s0)
ffffffffc0001e58:	f4a43423          	sd	a0,-184(s0)
ffffffffc0001e5c:	fe04b503          	ld	a0,-32(s1)
ffffffffc0001e60:	05651c63          	bne	a0,s6,ffffffffc0001eb8 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x200>
ffffffffc0001e64:	fe84b583          	ld	a1,-24(s1)
ffffffffc0001e68:	f8043603          	ld	a2,-128(s0)
ffffffffc0001e6c:	18c5fe63          	bgeu	a1,a2,ffffffffc0002008 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x350>
ffffffffc0001e70:	00459513          	slli	a0,a1,0x4
ffffffffc0001e74:	f7843583          	ld	a1,-136(s0)
ffffffffc0001e78:	00a58533          	add	a0,a1,a0
ffffffffc0001e7c:	0500006f          	j	ffffffffc0001ecc <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x214>
ffffffffc0001e80:	f8043603          	ld	a2,-128(s0)
ffffffffc0001e84:	18c5fe63          	bgeu	a1,a2,ffffffffc0002020 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x368>
ffffffffc0001e88:	00459513          	slli	a0,a1,0x4
ffffffffc0001e8c:	f7843583          	ld	a1,-136(s0)
ffffffffc0001e90:	00a58533          	add	a0,a1,a0
ffffffffc0001e94:	00853583          	ld	a1,8(a0)
ffffffffc0001e98:	fba59ce3          	bne	a1,s10,ffffffffc0001e50 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x198>
ffffffffc0001e9c:	00053503          	ld	a0,0(a0)
ffffffffc0001ea0:	00053583          	ld	a1,0(a0)
ffffffffc0001ea4:	000b0513          	mv	a0,s6
ffffffffc0001ea8:	f4b43823          	sd	a1,-176(s0)
ffffffffc0001eac:	f4a43423          	sd	a0,-184(s0)
ffffffffc0001eb0:	fe04b503          	ld	a0,-32(s1)
ffffffffc0001eb4:	fb6508e3          	beq	a0,s6,ffffffffc0001e64 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x1ac>
ffffffffc0001eb8:	f6843503          	ld	a0,-152(s0)
ffffffffc0001ebc:	f7043583          	ld	a1,-144(s0)
ffffffffc0001ec0:	16b50c63          	beq	a0,a1,ffffffffc0002038 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x380>
ffffffffc0001ec4:	01050593          	addi	a1,a0,16
ffffffffc0001ec8:	f6b43423          	sd	a1,-152(s0)
ffffffffc0001ecc:	00850593          	addi	a1,a0,8
ffffffffc0001ed0:	0005b603          	ld	a2,0(a1)
ffffffffc0001ed4:	00053503          	ld	a0,0(a0)
ffffffffc0001ed8:	000a0593          	mv	a1,s4
ffffffffc0001edc:	000600e7          	jalr	a2
ffffffffc0001ee0:	0e051063          	bnez	a0,ffffffffc0001fc0 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x308>
ffffffffc0001ee4:	0b7cfa63          	bgeu	s9,s7,ffffffffc0001f98 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x2e0>
ffffffffc0001ee8:	f6043503          	ld	a0,-160(s0)
ffffffffc0001eec:	01853683          	ld	a3,24(a0)
ffffffffc0001ef0:	000c3603          	ld	a2,0(s8)
ffffffffc0001ef4:	ff8c3583          	ld	a1,-8(s8)
ffffffffc0001ef8:	f5843503          	ld	a0,-168(s0)
ffffffffc0001efc:	000680e7          	jalr	a3
ffffffffc0001f00:	010c0c13          	addi	s8,s8,16
ffffffffc0001f04:	04048493          	addi	s1,s1,64
ffffffffc0001f08:	001c8c93          	addi	s9,s9,1
ffffffffc0001f0c:	e80506e3          	beqz	a0,ffffffffc0001d98 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0xe0>
ffffffffc0001f10:	0b00006f          	j	ffffffffc0001fc0 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x308>
ffffffffc0001f14:	00863903          	ld	s2,8(a2)
ffffffffc0001f18:	00090a93          	mv	s5,s2
ffffffffc0001f1c:	00d96463          	bltu	s2,a3,ffffffffc0001f24 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x26c>
ffffffffc0001f20:	00068a93          	mv	s5,a3
ffffffffc0001f24:	00063983          	ld	s3,0(a2)
ffffffffc0001f28:	060a8663          	beqz	s5,ffffffffc0001f94 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x2dc>
ffffffffc0001f2c:	0185b683          	ld	a3,24(a1)
ffffffffc0001f30:	0089b603          	ld	a2,8(s3)
ffffffffc0001f34:	0009b583          	ld	a1,0(s3)
ffffffffc0001f38:	000680e7          	jalr	a3
ffffffffc0001f3c:	08051263          	bnez	a0,ffffffffc0001fc0 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x308>
ffffffffc0001f40:	00100c93          	li	s9,1
ffffffffc0001f44:	f3840a13          	addi	s4,s0,-200
ffffffffc0001f48:	00000493          	li	s1,0
ffffffffc0001f4c:	009b85b3          	add	a1,s7,s1
ffffffffc0001f50:	0005b503          	ld	a0,0(a1)
ffffffffc0001f54:	0085b603          	ld	a2,8(a1)
ffffffffc0001f58:	000a0593          	mv	a1,s4
ffffffffc0001f5c:	000600e7          	jalr	a2
ffffffffc0001f60:	06051063          	bnez	a0,ffffffffc0001fc0 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x308>
ffffffffc0001f64:	035cfa63          	bgeu	s9,s5,ffffffffc0001f98 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x2e0>
ffffffffc0001f68:	00998533          	add	a0,s3,s1
ffffffffc0001f6c:	01853603          	ld	a2,24(a0)
ffffffffc0001f70:	01053583          	ld	a1,16(a0)
ffffffffc0001f74:	f6043503          	ld	a0,-160(s0)
ffffffffc0001f78:	01853683          	ld	a3,24(a0)
ffffffffc0001f7c:	f5843503          	ld	a0,-168(s0)
ffffffffc0001f80:	000680e7          	jalr	a3
ffffffffc0001f84:	01048493          	addi	s1,s1,16
ffffffffc0001f88:	001c8c93          	addi	s9,s9,1
ffffffffc0001f8c:	fc0500e3          	beqz	a0,ffffffffc0001f4c <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x294>
ffffffffc0001f90:	0300006f          	j	ffffffffc0001fc0 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x308>
ffffffffc0001f94:	00000c93          	li	s9,0
ffffffffc0001f98:	032cf863          	bgeu	s9,s2,ffffffffc0001fc8 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x310>
ffffffffc0001f9c:	004c9513          	slli	a0,s9,0x4
ffffffffc0001fa0:	00a98533          	add	a0,s3,a0
ffffffffc0001fa4:	00853603          	ld	a2,8(a0)
ffffffffc0001fa8:	00053583          	ld	a1,0(a0)
ffffffffc0001fac:	f6043503          	ld	a0,-160(s0)
ffffffffc0001fb0:	01853683          	ld	a3,24(a0)
ffffffffc0001fb4:	f5843503          	ld	a0,-168(s0)
ffffffffc0001fb8:	000680e7          	jalr	a3
ffffffffc0001fbc:	00050663          	beqz	a0,ffffffffc0001fc8 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x310>
ffffffffc0001fc0:	00100513          	li	a0,1
ffffffffc0001fc4:	0080006f          	j	ffffffffc0001fcc <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x314>
ffffffffc0001fc8:	00000513          	li	a0,0
ffffffffc0001fcc:	06813d83          	ld	s11,104(sp)
ffffffffc0001fd0:	07013d03          	ld	s10,112(sp)
ffffffffc0001fd4:	07813c83          	ld	s9,120(sp)
ffffffffc0001fd8:	08013c03          	ld	s8,128(sp)
ffffffffc0001fdc:	08813b83          	ld	s7,136(sp)
ffffffffc0001fe0:	09013b03          	ld	s6,144(sp)
ffffffffc0001fe4:	09813a83          	ld	s5,152(sp)
ffffffffc0001fe8:	0a013a03          	ld	s4,160(sp)
ffffffffc0001fec:	0a813983          	ld	s3,168(sp)
ffffffffc0001ff0:	0b013903          	ld	s2,176(sp)
ffffffffc0001ff4:	0b813483          	ld	s1,184(sp)
ffffffffc0001ff8:	0c013403          	ld	s0,192(sp)
ffffffffc0001ffc:	0c813083          	ld	ra,200(sp)
ffffffffc0002000:	0d010113          	addi	sp,sp,208
ffffffffc0002004:	00008067          	ret
ffffffffc0002008:	c0005537          	lui	a0,0xc0005
ffffffffc000200c:	9e850513          	addi	a0,a0,-1560 # ffffffffc00049e8 <.Lanon.48f9e11bbce1b892091ea8507ea176ad.10>
ffffffffc0002010:	00000097          	auipc	ra,0x0
ffffffffc0002014:	b3c080e7          	jalr	-1220(ra) # ffffffffc0001b4c <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0002018:	ffffe097          	auipc	ra,0xffffe
ffffffffc000201c:	2c8080e7          	jalr	712(ra) # ffffffffc00002e0 <abort>
ffffffffc0002020:	c0005537          	lui	a0,0xc0005
ffffffffc0002024:	a0050513          	addi	a0,a0,-1536 # ffffffffc0004a00 <.Lanon.48f9e11bbce1b892091ea8507ea176ad.11>
ffffffffc0002028:	00000097          	auipc	ra,0x0
ffffffffc000202c:	b24080e7          	jalr	-1244(ra) # ffffffffc0001b4c <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0002030:	ffffe097          	auipc	ra,0xffffe
ffffffffc0002034:	2b0080e7          	jalr	688(ra) # ffffffffc00002e0 <abort>
ffffffffc0002038:	c0005537          	lui	a0,0xc0005
ffffffffc000203c:	94850513          	addi	a0,a0,-1720 # ffffffffc0004948 <.Lanon.48f9e11bbce1b892091ea8507ea176ad.8>
ffffffffc0002040:	00000097          	auipc	ra,0x0
ffffffffc0002044:	a98080e7          	jalr	-1384(ra) # ffffffffc0001ad8 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0002048:	ffffe097          	auipc	ra,0xffffe
ffffffffc000204c:	298080e7          	jalr	664(ra) # ffffffffc00002e0 <abort>

ffffffffc0002050 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>:
ffffffffc0002050:	fa010113          	addi	sp,sp,-96
ffffffffc0002054:	04113c23          	sd	ra,88(sp)
ffffffffc0002058:	04813823          	sd	s0,80(sp)
ffffffffc000205c:	04913423          	sd	s1,72(sp)
ffffffffc0002060:	05213023          	sd	s2,64(sp)
ffffffffc0002064:	03313c23          	sd	s3,56(sp)
ffffffffc0002068:	03413823          	sd	s4,48(sp)
ffffffffc000206c:	03513423          	sd	s5,40(sp)
ffffffffc0002070:	03613023          	sd	s6,32(sp)
ffffffffc0002074:	01713c23          	sd	s7,24(sp)
ffffffffc0002078:	01813823          	sd	s8,16(sp)
ffffffffc000207c:	01913423          	sd	s9,8(sp)
ffffffffc0002080:	01a13023          	sd	s10,0(sp)
ffffffffc0002084:	06010413          	addi	s0,sp,96
ffffffffc0002088:	00078913          	mv	s2,a5
ffffffffc000208c:	00070993          	mv	s3,a4
ffffffffc0002090:	00068a93          	mv	s5,a3
ffffffffc0002094:	00060b13          	mv	s6,a2
ffffffffc0002098:	00050d13          	mv	s10,a0
ffffffffc000209c:	04058c63          	beqz	a1,ffffffffc00020f4 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0xa4>
ffffffffc00020a0:	050d6503          	lwu	a0,80(s10) # 100050 <XLENb+0x100010>
ffffffffc00020a4:	00157593          	andi	a1,a0,1
ffffffffc00020a8:	0a058663          	beqz	a1,ffffffffc0002154 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x104>
ffffffffc00020ac:	02b00b93          	li	s7,43
ffffffffc00020b0:	01258c33          	add	s8,a1,s2
ffffffffc00020b4:	00457593          	andi	a1,a0,4
ffffffffc00020b8:	04058863          	beqz	a1,ffffffffc0002108 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0xb8>
ffffffffc00020bc:	0a0a8663          	beqz	s5,ffffffffc0002168 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x118>
ffffffffc00020c0:	08000613          	li	a2,128
ffffffffc00020c4:	000a8693          	mv	a3,s5
ffffffffc00020c8:	00000593          	li	a1,0
ffffffffc00020cc:	000b0713          	mv	a4,s6
ffffffffc00020d0:	00074783          	lbu	a5,0(a4)
ffffffffc00020d4:	0c07f793          	andi	a5,a5,192
ffffffffc00020d8:	00c7c7b3          	xor	a5,a5,a2
ffffffffc00020dc:	0017b793          	seqz	a5,a5
ffffffffc00020e0:	00f585b3          	add	a1,a1,a5
ffffffffc00020e4:	00170713          	addi	a4,a4,1
ffffffffc00020e8:	fff68693          	addi	a3,a3,-1
ffffffffc00020ec:	fe0692e3          	bnez	a3,ffffffffc00020d0 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x80>
ffffffffc00020f0:	07c0006f          	j	ffffffffc000216c <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x11c>
ffffffffc00020f4:	02d00b93          	li	s7,45
ffffffffc00020f8:	050d6503          	lwu	a0,80(s10)
ffffffffc00020fc:	00190c13          	addi	s8,s2,1
ffffffffc0002100:	00457593          	andi	a1,a0,4
ffffffffc0002104:	fa059ce3          	bnez	a1,ffffffffc00020bc <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x6c>
ffffffffc0002108:	00000b13          	li	s6,0
ffffffffc000210c:	000d3583          	ld	a1,0(s10)
ffffffffc0002110:	00100a13          	li	s4,1
ffffffffc0002114:	07459663          	bne	a1,s4,ffffffffc0002180 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x130>
ffffffffc0002118:	008d3c83          	ld	s9,8(s10)
ffffffffc000211c:	079c7263          	bgeu	s8,s9,ffffffffc0002180 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x130>
ffffffffc0002120:	00857513          	andi	a0,a0,8
ffffffffc0002124:	0c051863          	bnez	a0,ffffffffc00021f4 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x1a4>
ffffffffc0002128:	058d4503          	lbu	a0,88(s10)
ffffffffc000212c:	00300593          	li	a1,3
ffffffffc0002130:	00b51463          	bne	a0,a1,ffffffffc0002138 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0xe8>
ffffffffc0002134:	00100513          	li	a0,1
ffffffffc0002138:	418c8c33          	sub	s8,s9,s8
ffffffffc000213c:	00357593          	andi	a1,a0,3
ffffffffc0002140:	10058663          	beqz	a1,ffffffffc000224c <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x1fc>
ffffffffc0002144:	00200593          	li	a1,2
ffffffffc0002148:	10b50863          	beq	a0,a1,ffffffffc0002258 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x208>
ffffffffc000214c:	00000c93          	li	s9,0
ffffffffc0002150:	1180006f          	j	ffffffffc0002268 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x218>
ffffffffc0002154:	00110bb7          	lui	s7,0x110
ffffffffc0002158:	01258c33          	add	s8,a1,s2
ffffffffc000215c:	00457593          	andi	a1,a0,4
ffffffffc0002160:	f4059ee3          	bnez	a1,ffffffffc00020bc <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x6c>
ffffffffc0002164:	fa5ff06f          	j	ffffffffc0002108 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0xb8>
ffffffffc0002168:	00000593          	li	a1,0
ffffffffc000216c:	015c0633          	add	a2,s8,s5
ffffffffc0002170:	40b60c33          	sub	s8,a2,a1
ffffffffc0002174:	000d3583          	ld	a1,0(s10)
ffffffffc0002178:	00100a13          	li	s4,1
ffffffffc000217c:	f9458ee3          	beq	a1,s4,ffffffffc0002118 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0xc8>
ffffffffc0002180:	000d0513          	mv	a0,s10
ffffffffc0002184:	000b8593          	mv	a1,s7
ffffffffc0002188:	000b0613          	mv	a2,s6
ffffffffc000218c:	000a8693          	mv	a3,s5
ffffffffc0002190:	00000097          	auipc	ra,0x0
ffffffffc0002194:	208080e7          	jalr	520(ra) # ffffffffc0002398 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E>
ffffffffc0002198:	02051063          	bnez	a0,ffffffffc00021b8 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc000219c:	020d3503          	ld	a0,32(s10)
ffffffffc00021a0:	028d3583          	ld	a1,40(s10)
ffffffffc00021a4:	0185b683          	ld	a3,24(a1)
ffffffffc00021a8:	00098593          	mv	a1,s3
ffffffffc00021ac:	00090613          	mv	a2,s2
ffffffffc00021b0:	000680e7          	jalr	a3
ffffffffc00021b4:	00050a13          	mv	s4,a0
ffffffffc00021b8:	000a0513          	mv	a0,s4
ffffffffc00021bc:	00013d03          	ld	s10,0(sp)
ffffffffc00021c0:	00813c83          	ld	s9,8(sp)
ffffffffc00021c4:	01013c03          	ld	s8,16(sp)
ffffffffc00021c8:	01813b83          	ld	s7,24(sp)
ffffffffc00021cc:	02013b03          	ld	s6,32(sp)
ffffffffc00021d0:	02813a83          	ld	s5,40(sp)
ffffffffc00021d4:	03013a03          	ld	s4,48(sp)
ffffffffc00021d8:	03813983          	ld	s3,56(sp)
ffffffffc00021dc:	04013903          	ld	s2,64(sp)
ffffffffc00021e0:	04813483          	ld	s1,72(sp)
ffffffffc00021e4:	05013403          	ld	s0,80(sp)
ffffffffc00021e8:	05813083          	ld	ra,88(sp)
ffffffffc00021ec:	06010113          	addi	sp,sp,96
ffffffffc00021f0:	00008067          	ret
ffffffffc00021f4:	03000513          	li	a0,48
ffffffffc00021f8:	04ad2a23          	sw	a0,84(s10)
ffffffffc00021fc:	00100a13          	li	s4,1
ffffffffc0002200:	054d0c23          	sb	s4,88(s10)
ffffffffc0002204:	000d0513          	mv	a0,s10
ffffffffc0002208:	000b8593          	mv	a1,s7
ffffffffc000220c:	000b0613          	mv	a2,s6
ffffffffc0002210:	000a8693          	mv	a3,s5
ffffffffc0002214:	00000097          	auipc	ra,0x0
ffffffffc0002218:	184080e7          	jalr	388(ra) # ffffffffc0002398 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E>
ffffffffc000221c:	f8051ee3          	bnez	a0,ffffffffc00021b8 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc0002220:	058d4503          	lbu	a0,88(s10)
ffffffffc0002224:	00300593          	li	a1,3
ffffffffc0002228:	00b51463          	bne	a0,a1,ffffffffc0002230 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x1e0>
ffffffffc000222c:	00100513          	li	a0,1
ffffffffc0002230:	418c8ab3          	sub	s5,s9,s8
ffffffffc0002234:	00357593          	andi	a1,a0,3
ffffffffc0002238:	0c058263          	beqz	a1,ffffffffc00022fc <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x2ac>
ffffffffc000223c:	00200593          	li	a1,2
ffffffffc0002240:	0cb50463          	beq	a0,a1,ffffffffc0002308 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x2b8>
ffffffffc0002244:	00000b13          	li	s6,0
ffffffffc0002248:	0d00006f          	j	ffffffffc0002318 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x2c8>
ffffffffc000224c:	000c0c93          	mv	s9,s8
ffffffffc0002250:	00000c13          	li	s8,0
ffffffffc0002254:	0140006f          	j	ffffffffc0002268 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x218>
ffffffffc0002258:	001c5513          	srli	a0,s8,0x1
ffffffffc000225c:	001c0593          	addi	a1,s8,1
ffffffffc0002260:	0015dc93          	srli	s9,a1,0x1
ffffffffc0002264:	00050c13          	mv	s8,a0
ffffffffc0002268:	fff00493          	li	s1,-1
ffffffffc000226c:	00100a13          	li	s4,1
ffffffffc0002270:	00148493          	addi	s1,s1,1
ffffffffc0002274:	0384f063          	bgeu	s1,s8,ffffffffc0002294 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x244>
ffffffffc0002278:	054d2583          	lw	a1,84(s10)
ffffffffc000227c:	020d3503          	ld	a0,32(s10)
ffffffffc0002280:	028d3603          	ld	a2,40(s10)
ffffffffc0002284:	02063603          	ld	a2,32(a2)
ffffffffc0002288:	000600e7          	jalr	a2
ffffffffc000228c:	fe0502e3          	beqz	a0,ffffffffc0002270 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x220>
ffffffffc0002290:	f29ff06f          	j	ffffffffc00021b8 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc0002294:	054d6c03          	lwu	s8,84(s10)
ffffffffc0002298:	000d0513          	mv	a0,s10
ffffffffc000229c:	000b8593          	mv	a1,s7
ffffffffc00022a0:	000b0613          	mv	a2,s6
ffffffffc00022a4:	000a8693          	mv	a3,s5
ffffffffc00022a8:	00000097          	auipc	ra,0x0
ffffffffc00022ac:	0f0080e7          	jalr	240(ra) # ffffffffc0002398 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E>
ffffffffc00022b0:	f00514e3          	bnez	a0,ffffffffc00021b8 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc00022b4:	020d3503          	ld	a0,32(s10)
ffffffffc00022b8:	028d3583          	ld	a1,40(s10)
ffffffffc00022bc:	0185b683          	ld	a3,24(a1)
ffffffffc00022c0:	00098593          	mv	a1,s3
ffffffffc00022c4:	00090613          	mv	a2,s2
ffffffffc00022c8:	000680e7          	jalr	a3
ffffffffc00022cc:	ee0516e3          	bnez	a0,ffffffffc00021b8 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc00022d0:	fff00493          	li	s1,-1
ffffffffc00022d4:	028d3983          	ld	s3,40(s10)
ffffffffc00022d8:	020d3903          	ld	s2,32(s10)
ffffffffc00022dc:	00148493          	addi	s1,s1,1
ffffffffc00022e0:	0b94f863          	bgeu	s1,s9,ffffffffc0002390 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x340>
ffffffffc00022e4:	0209b603          	ld	a2,32(s3)
ffffffffc00022e8:	00090513          	mv	a0,s2
ffffffffc00022ec:	000c0593          	mv	a1,s8
ffffffffc00022f0:	000600e7          	jalr	a2
ffffffffc00022f4:	fe0504e3          	beqz	a0,ffffffffc00022dc <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x28c>
ffffffffc00022f8:	ec1ff06f          	j	ffffffffc00021b8 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc00022fc:	000a8b13          	mv	s6,s5
ffffffffc0002300:	00000a93          	li	s5,0
ffffffffc0002304:	0140006f          	j	ffffffffc0002318 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x2c8>
ffffffffc0002308:	001ad513          	srli	a0,s5,0x1
ffffffffc000230c:	001a8593          	addi	a1,s5,1
ffffffffc0002310:	0015db13          	srli	s6,a1,0x1
ffffffffc0002314:	00050a93          	mv	s5,a0
ffffffffc0002318:	fff00493          	li	s1,-1
ffffffffc000231c:	00100a13          	li	s4,1
ffffffffc0002320:	00148493          	addi	s1,s1,1
ffffffffc0002324:	0354f063          	bgeu	s1,s5,ffffffffc0002344 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x2f4>
ffffffffc0002328:	054d2583          	lw	a1,84(s10)
ffffffffc000232c:	020d3503          	ld	a0,32(s10)
ffffffffc0002330:	028d3603          	ld	a2,40(s10)
ffffffffc0002334:	02063603          	ld	a2,32(a2)
ffffffffc0002338:	000600e7          	jalr	a2
ffffffffc000233c:	fe0502e3          	beqz	a0,ffffffffc0002320 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x2d0>
ffffffffc0002340:	e79ff06f          	j	ffffffffc00021b8 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc0002344:	054d6a83          	lwu	s5,84(s10)
ffffffffc0002348:	020d3503          	ld	a0,32(s10)
ffffffffc000234c:	028d3583          	ld	a1,40(s10)
ffffffffc0002350:	0185b683          	ld	a3,24(a1)
ffffffffc0002354:	00098593          	mv	a1,s3
ffffffffc0002358:	00090613          	mv	a2,s2
ffffffffc000235c:	000680e7          	jalr	a3
ffffffffc0002360:	e4051ce3          	bnez	a0,ffffffffc00021b8 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc0002364:	fff00493          	li	s1,-1
ffffffffc0002368:	028d3983          	ld	s3,40(s10)
ffffffffc000236c:	020d3903          	ld	s2,32(s10)
ffffffffc0002370:	00148493          	addi	s1,s1,1
ffffffffc0002374:	0164fe63          	bgeu	s1,s6,ffffffffc0002390 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x340>
ffffffffc0002378:	0209b603          	ld	a2,32(s3)
ffffffffc000237c:	00090513          	mv	a0,s2
ffffffffc0002380:	000a8593          	mv	a1,s5
ffffffffc0002384:	000600e7          	jalr	a2
ffffffffc0002388:	fe0504e3          	beqz	a0,ffffffffc0002370 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x320>
ffffffffc000238c:	e2dff06f          	j	ffffffffc00021b8 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc0002390:	00000a13          	li	s4,0
ffffffffc0002394:	e25ff06f          	j	ffffffffc00021b8 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>

ffffffffc0002398 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E>:
ffffffffc0002398:	fd010113          	addi	sp,sp,-48
ffffffffc000239c:	02113423          	sd	ra,40(sp)
ffffffffc00023a0:	02813023          	sd	s0,32(sp)
ffffffffc00023a4:	00913c23          	sd	s1,24(sp)
ffffffffc00023a8:	01213823          	sd	s2,16(sp)
ffffffffc00023ac:	01313423          	sd	s3,8(sp)
ffffffffc00023b0:	03010413          	addi	s0,sp,48
ffffffffc00023b4:	00068913          	mv	s2,a3
ffffffffc00023b8:	00060993          	mv	s3,a2
ffffffffc00023bc:	00050493          	mv	s1,a0
ffffffffc00023c0:	02059513          	slli	a0,a1,0x20
ffffffffc00023c4:	02055513          	srli	a0,a0,0x20
ffffffffc00023c8:	00110637          	lui	a2,0x110
ffffffffc00023cc:	02c50063          	beq	a0,a2,ffffffffc00023ec <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E+0x54>
ffffffffc00023d0:	0204b503          	ld	a0,32(s1)
ffffffffc00023d4:	0284b603          	ld	a2,40(s1)
ffffffffc00023d8:	02063603          	ld	a2,32(a2) # 110020 <XLENb+0x10ffe0>
ffffffffc00023dc:	000600e7          	jalr	a2
ffffffffc00023e0:	00050663          	beqz	a0,ffffffffc00023ec <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E+0x54>
ffffffffc00023e4:	00100513          	li	a0,1
ffffffffc00023e8:	0280006f          	j	ffffffffc0002410 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E+0x78>
ffffffffc00023ec:	02098063          	beqz	s3,ffffffffc000240c <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E+0x74>
ffffffffc00023f0:	0204b503          	ld	a0,32(s1)
ffffffffc00023f4:	0284b583          	ld	a1,40(s1)
ffffffffc00023f8:	0185b683          	ld	a3,24(a1)
ffffffffc00023fc:	00098593          	mv	a1,s3
ffffffffc0002400:	00090613          	mv	a2,s2
ffffffffc0002404:	000680e7          	jalr	a3
ffffffffc0002408:	0080006f          	j	ffffffffc0002410 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E+0x78>
ffffffffc000240c:	00000513          	li	a0,0
ffffffffc0002410:	00813983          	ld	s3,8(sp)
ffffffffc0002414:	01013903          	ld	s2,16(sp)
ffffffffc0002418:	01813483          	ld	s1,24(sp)
ffffffffc000241c:	02013403          	ld	s0,32(sp)
ffffffffc0002420:	02813083          	ld	ra,40(sp)
ffffffffc0002424:	03010113          	addi	sp,sp,48
ffffffffc0002428:	00008067          	ret

ffffffffc000242c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E>:
ffffffffc000242c:	fb010113          	addi	sp,sp,-80
ffffffffc0002430:	04113423          	sd	ra,72(sp)
ffffffffc0002434:	04813023          	sd	s0,64(sp)
ffffffffc0002438:	02913c23          	sd	s1,56(sp)
ffffffffc000243c:	03213823          	sd	s2,48(sp)
ffffffffc0002440:	03313423          	sd	s3,40(sp)
ffffffffc0002444:	03413023          	sd	s4,32(sp)
ffffffffc0002448:	01513c23          	sd	s5,24(sp)
ffffffffc000244c:	01613823          	sd	s6,16(sp)
ffffffffc0002450:	01713423          	sd	s7,8(sp)
ffffffffc0002454:	05010413          	addi	s0,sp,80
ffffffffc0002458:	00060a13          	mv	s4,a2
ffffffffc000245c:	00058993          	mv	s3,a1
ffffffffc0002460:	00050b93          	mv	s7,a0
ffffffffc0002464:	01053503          	ld	a0,16(a0)
ffffffffc0002468:	000bb383          	ld	t2,0(s7) # 110000 <XLENb+0x10ffc0>
ffffffffc000246c:	00100913          	li	s2,1
ffffffffc0002470:	01239863          	bne	t2,s2,ffffffffc0002480 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x54>
ffffffffc0002474:	00100593          	li	a1,1
ffffffffc0002478:	00b50663          	beq	a0,a1,ffffffffc0002484 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x58>
ffffffffc000247c:	12c0006f          	j	ffffffffc00025a8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x17c>
ffffffffc0002480:	25251263          	bne	a0,s2,ffffffffc00026c4 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x298>
ffffffffc0002484:	100a0c63          	beqz	s4,ffffffffc000259c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x170>
ffffffffc0002488:	014984b3          	add	s1,s3,s4
ffffffffc000248c:	018bb603          	ld	a2,24(s7)
ffffffffc0002490:	00198793          	addi	a5,s3,1
ffffffffc0002494:	00098503          	lb	a0,0(s3)
ffffffffc0002498:	1c054663          	bltz	a0,ffffffffc0002664 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x238>
ffffffffc000249c:	20060263          	beqz	a2,ffffffffc00026a0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x274>
ffffffffc00024a0:	41378533          	sub	a0,a5,s3
ffffffffc00024a4:	0e000313          	li	t1,224
ffffffffc00024a8:	0f000813          	li	a6,240
ffffffffc00024ac:	001c08b7          	lui	a7,0x1c0
ffffffffc00024b0:	001102b7          	lui	t0,0x110
ffffffffc00024b4:	20f48463          	beq	s1,a5,ffffffffc00026bc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x290>
ffffffffc00024b8:	00050713          	mv	a4,a0
ffffffffc00024bc:	00078693          	mv	a3,a5
ffffffffc00024c0:	00178793          	addi	a5,a5,1
ffffffffc00024c4:	00068503          	lb	a0,0(a3)
ffffffffc00024c8:	00054c63          	bltz	a0,ffffffffc00024e0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xb4>
ffffffffc00024cc:	fff60613          	addi	a2,a2,-1
ffffffffc00024d0:	40d70533          	sub	a0,a4,a3
ffffffffc00024d4:	00f50533          	add	a0,a0,a5
ffffffffc00024d8:	fc061ee3          	bnez	a2,ffffffffc00024b4 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x88>
ffffffffc00024dc:	0980006f          	j	ffffffffc0002574 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x148>
ffffffffc00024e0:	0ff57513          	andi	a0,a0,255
ffffffffc00024e4:	04978863          	beq	a5,s1,ffffffffc0002534 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x108>
ffffffffc00024e8:	00268793          	addi	a5,a3,2
ffffffffc00024ec:	0016c583          	lbu	a1,1(a3)
ffffffffc00024f0:	03f5fe13          	andi	t3,a1,63
ffffffffc00024f4:	00078593          	mv	a1,a5
ffffffffc00024f8:	fc656ae3          	bltu	a0,t1,ffffffffc00024cc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xa0>
ffffffffc00024fc:	04958463          	beq	a1,s1,ffffffffc0002544 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x118>
ffffffffc0002500:	00158793          	addi	a5,a1,1
ffffffffc0002504:	0005c583          	lbu	a1,0(a1)
ffffffffc0002508:	03f5fe93          	andi	t4,a1,63
ffffffffc000250c:	00078593          	mv	a1,a5
ffffffffc0002510:	fb056ee3          	bltu	a0,a6,ffffffffc00024cc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xa0>
ffffffffc0002514:	01f57f13          	andi	t5,a0,31
ffffffffc0002518:	006e1513          	slli	a0,t3,0x6
ffffffffc000251c:	00aeee33          	or	t3,t4,a0
ffffffffc0002520:	02958a63          	beq	a1,s1,ffffffffc0002554 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x128>
ffffffffc0002524:	00158793          	addi	a5,a1,1
ffffffffc0002528:	0005c503          	lbu	a0,0(a1)
ffffffffc000252c:	03f57e93          	andi	t4,a0,63
ffffffffc0002530:	0280006f          	j	ffffffffc0002558 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x12c>
ffffffffc0002534:	00048593          	mv	a1,s1
ffffffffc0002538:	00000e13          	li	t3,0
ffffffffc000253c:	fc6570e3          	bgeu	a0,t1,ffffffffc00024fc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xd0>
ffffffffc0002540:	f8dff06f          	j	ffffffffc00024cc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xa0>
ffffffffc0002544:	00048593          	mv	a1,s1
ffffffffc0002548:	00000e93          	li	t4,0
ffffffffc000254c:	fd0574e3          	bgeu	a0,a6,ffffffffc0002514 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xe8>
ffffffffc0002550:	f7dff06f          	j	ffffffffc00024cc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xa0>
ffffffffc0002554:	00000e93          	li	t4,0
ffffffffc0002558:	012f1513          	slli	a0,t5,0x12
ffffffffc000255c:	01157533          	and	a0,a0,a7
ffffffffc0002560:	006e1593          	slli	a1,t3,0x6
ffffffffc0002564:	00a5e533          	or	a0,a1,a0
ffffffffc0002568:	01d56533          	or	a0,a0,t4
ffffffffc000256c:	f65510e3          	bne	a0,t0,ffffffffc00024cc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xa0>
ffffffffc0002570:	14c0006f          	j	ffffffffc00026bc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x290>
ffffffffc0002574:	12070a63          	beqz	a4,ffffffffc00026a8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x27c>
ffffffffc0002578:	13470863          	beq	a4,s4,ffffffffc00026a8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x27c>
ffffffffc000257c:	01477a63          	bgeu	a4,s4,ffffffffc0002590 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x164>
ffffffffc0002580:	00e98533          	add	a0,s3,a4
ffffffffc0002584:	00050503          	lb	a0,0(a0)
ffffffffc0002588:	fc000593          	li	a1,-64
ffffffffc000258c:	10b55e63          	bge	a0,a1,ffffffffc00026a8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x27c>
ffffffffc0002590:	00000513          	li	a0,0
ffffffffc0002594:	10051e63          	bnez	a0,ffffffffc00026b0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x284>
ffffffffc0002598:	11c0006f          	j	ffffffffc00026b4 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x288>
ffffffffc000259c:	00000a13          	li	s4,0
ffffffffc00025a0:	00100513          	li	a0,1
ffffffffc00025a4:	12a39063          	bne	t2,a0,ffffffffc00026c4 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x298>
ffffffffc00025a8:	0a0a0463          	beqz	s4,ffffffffc0002650 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x224>
ffffffffc00025ac:	08000593          	li	a1,128
ffffffffc00025b0:	000a0613          	mv	a2,s4
ffffffffc00025b4:	00000513          	li	a0,0
ffffffffc00025b8:	00098693          	mv	a3,s3
ffffffffc00025bc:	0006c703          	lbu	a4,0(a3)
ffffffffc00025c0:	0c077713          	andi	a4,a4,192
ffffffffc00025c4:	00b74733          	xor	a4,a4,a1
ffffffffc00025c8:	00173713          	seqz	a4,a4
ffffffffc00025cc:	00e50533          	add	a0,a0,a4
ffffffffc00025d0:	00168693          	addi	a3,a3,1
ffffffffc00025d4:	fff60613          	addi	a2,a2,-1
ffffffffc00025d8:	fe0612e3          	bnez	a2,ffffffffc00025bc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x190>
ffffffffc00025dc:	40aa05b3          	sub	a1,s4,a0
ffffffffc00025e0:	008bb503          	ld	a0,8(s7)
ffffffffc00025e4:	0ea5f063          	bgeu	a1,a0,ffffffffc00026c4 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x298>
ffffffffc00025e8:	120a0463          	beqz	s4,ffffffffc0002710 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x2e4>
ffffffffc00025ec:	08000613          	li	a2,128
ffffffffc00025f0:	000a0693          	mv	a3,s4
ffffffffc00025f4:	00000593          	li	a1,0
ffffffffc00025f8:	00098713          	mv	a4,s3
ffffffffc00025fc:	00074783          	lbu	a5,0(a4)
ffffffffc0002600:	0c07f793          	andi	a5,a5,192
ffffffffc0002604:	00c7c7b3          	xor	a5,a5,a2
ffffffffc0002608:	0017b793          	seqz	a5,a5
ffffffffc000260c:	00f585b3          	add	a1,a1,a5
ffffffffc0002610:	00170713          	addi	a4,a4,1
ffffffffc0002614:	fff68693          	addi	a3,a3,-1
ffffffffc0002618:	fe0692e3          	bnez	a3,ffffffffc00025fc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x1d0>
ffffffffc000261c:	058bc683          	lbu	a3,88(s7)
ffffffffc0002620:	00300713          	li	a4,3
ffffffffc0002624:	00000613          	li	a2,0
ffffffffc0002628:	00e68463          	beq	a3,a4,ffffffffc0002630 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x204>
ffffffffc000262c:	00068613          	mv	a2,a3
ffffffffc0002630:	414585b3          	sub	a1,a1,s4
ffffffffc0002634:	00a58ab3          	add	s5,a1,a0
ffffffffc0002638:	00367513          	andi	a0,a2,3
ffffffffc000263c:	0e050663          	beqz	a0,ffffffffc0002728 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x2fc>
ffffffffc0002640:	00200513          	li	a0,2
ffffffffc0002644:	0ea60863          	beq	a2,a0,ffffffffc0002734 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x308>
ffffffffc0002648:	00000b13          	li	s6,0
ffffffffc000264c:	0f80006f          	j	ffffffffc0002744 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x318>
ffffffffc0002650:	00000513          	li	a0,0
ffffffffc0002654:	40aa05b3          	sub	a1,s4,a0
ffffffffc0002658:	008bb503          	ld	a0,8(s7)
ffffffffc000265c:	f8a5e6e3          	bltu	a1,a0,ffffffffc00025e8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x1bc>
ffffffffc0002660:	0640006f          	j	ffffffffc00026c4 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x298>
ffffffffc0002664:	0ff57693          	andi	a3,a0,255
ffffffffc0002668:	00100513          	li	a0,1
ffffffffc000266c:	14aa1663          	bne	s4,a0,ffffffffc00027b8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x38c>
ffffffffc0002670:	00048593          	mv	a1,s1
ffffffffc0002674:	00000513          	li	a0,0
ffffffffc0002678:	0e000713          	li	a4,224
ffffffffc000267c:	e2e6e0e3          	bltu	a3,a4,ffffffffc000249c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x70>
ffffffffc0002680:	14958e63          	beq	a1,s1,ffffffffc00027dc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x3b0>
ffffffffc0002684:	00158793          	addi	a5,a1,1
ffffffffc0002688:	0005c583          	lbu	a1,0(a1)
ffffffffc000268c:	03f5f813          	andi	a6,a1,63
ffffffffc0002690:	00078713          	mv	a4,a5
ffffffffc0002694:	0f000593          	li	a1,240
ffffffffc0002698:	14b6fa63          	bgeu	a3,a1,ffffffffc00027ec <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x3c0>
ffffffffc000269c:	e01ff06f          	j	ffffffffc000249c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x70>
ffffffffc00026a0:	00000713          	li	a4,0
ffffffffc00026a4:	ec071ae3          	bnez	a4,ffffffffc0002578 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x14c>
ffffffffc00026a8:	00098513          	mv	a0,s3
ffffffffc00026ac:	00050463          	beqz	a0,ffffffffc00026b4 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x288>
ffffffffc00026b0:	00070a13          	mv	s4,a4
ffffffffc00026b4:	00050463          	beqz	a0,ffffffffc00026bc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x290>
ffffffffc00026b8:	00050993          	mv	s3,a0
ffffffffc00026bc:	00100513          	li	a0,1
ffffffffc00026c0:	eea384e3          	beq	t2,a0,ffffffffc00025a8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x17c>
ffffffffc00026c4:	020bb503          	ld	a0,32(s7)
ffffffffc00026c8:	028bb583          	ld	a1,40(s7)
ffffffffc00026cc:	0185b683          	ld	a3,24(a1)
ffffffffc00026d0:	00098593          	mv	a1,s3
ffffffffc00026d4:	000a0613          	mv	a2,s4
ffffffffc00026d8:	000680e7          	jalr	a3
ffffffffc00026dc:	00050913          	mv	s2,a0
ffffffffc00026e0:	00090513          	mv	a0,s2
ffffffffc00026e4:	00813b83          	ld	s7,8(sp)
ffffffffc00026e8:	01013b03          	ld	s6,16(sp)
ffffffffc00026ec:	01813a83          	ld	s5,24(sp)
ffffffffc00026f0:	02013a03          	ld	s4,32(sp)
ffffffffc00026f4:	02813983          	ld	s3,40(sp)
ffffffffc00026f8:	03013903          	ld	s2,48(sp)
ffffffffc00026fc:	03813483          	ld	s1,56(sp)
ffffffffc0002700:	04013403          	ld	s0,64(sp)
ffffffffc0002704:	04813083          	ld	ra,72(sp)
ffffffffc0002708:	05010113          	addi	sp,sp,80
ffffffffc000270c:	00008067          	ret
ffffffffc0002710:	00000593          	li	a1,0
ffffffffc0002714:	058bc683          	lbu	a3,88(s7)
ffffffffc0002718:	00300713          	li	a4,3
ffffffffc000271c:	00000613          	li	a2,0
ffffffffc0002720:	f0e696e3          	bne	a3,a4,ffffffffc000262c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x200>
ffffffffc0002724:	f0dff06f          	j	ffffffffc0002630 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x204>
ffffffffc0002728:	000a8b13          	mv	s6,s5
ffffffffc000272c:	00000a93          	li	s5,0
ffffffffc0002730:	0140006f          	j	ffffffffc0002744 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x318>
ffffffffc0002734:	001ad513          	srli	a0,s5,0x1
ffffffffc0002738:	001a8593          	addi	a1,s5,1
ffffffffc000273c:	0015db13          	srli	s6,a1,0x1
ffffffffc0002740:	00050a93          	mv	s5,a0
ffffffffc0002744:	fff00493          	li	s1,-1
ffffffffc0002748:	00148493          	addi	s1,s1,1
ffffffffc000274c:	0354f063          	bgeu	s1,s5,ffffffffc000276c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x340>
ffffffffc0002750:	054ba583          	lw	a1,84(s7)
ffffffffc0002754:	020bb503          	ld	a0,32(s7)
ffffffffc0002758:	028bb603          	ld	a2,40(s7)
ffffffffc000275c:	02063603          	ld	a2,32(a2)
ffffffffc0002760:	000600e7          	jalr	a2
ffffffffc0002764:	fe0502e3          	beqz	a0,ffffffffc0002748 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x31c>
ffffffffc0002768:	f79ff06f          	j	ffffffffc00026e0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x2b4>
ffffffffc000276c:	054bea83          	lwu	s5,84(s7)
ffffffffc0002770:	020bb503          	ld	a0,32(s7)
ffffffffc0002774:	028bb583          	ld	a1,40(s7)
ffffffffc0002778:	0185b683          	ld	a3,24(a1)
ffffffffc000277c:	00098593          	mv	a1,s3
ffffffffc0002780:	000a0613          	mv	a2,s4
ffffffffc0002784:	000680e7          	jalr	a3
ffffffffc0002788:	f4051ce3          	bnez	a0,ffffffffc00026e0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x2b4>
ffffffffc000278c:	fff00493          	li	s1,-1
ffffffffc0002790:	028bba03          	ld	s4,40(s7)
ffffffffc0002794:	020bb983          	ld	s3,32(s7)
ffffffffc0002798:	00148493          	addi	s1,s1,1
ffffffffc000279c:	0364fc63          	bgeu	s1,s6,ffffffffc00027d4 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x3a8>
ffffffffc00027a0:	020a3603          	ld	a2,32(s4)
ffffffffc00027a4:	00098513          	mv	a0,s3
ffffffffc00027a8:	000a8593          	mv	a1,s5
ffffffffc00027ac:	000600e7          	jalr	a2
ffffffffc00027b0:	fe0504e3          	beqz	a0,ffffffffc0002798 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x36c>
ffffffffc00027b4:	f2dff06f          	j	ffffffffc00026e0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x2b4>
ffffffffc00027b8:	00298793          	addi	a5,s3,2
ffffffffc00027bc:	0019c503          	lbu	a0,1(s3)
ffffffffc00027c0:	03f57513          	andi	a0,a0,63
ffffffffc00027c4:	00078593          	mv	a1,a5
ffffffffc00027c8:	0e000713          	li	a4,224
ffffffffc00027cc:	eae6fae3          	bgeu	a3,a4,ffffffffc0002680 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x254>
ffffffffc00027d0:	ccdff06f          	j	ffffffffc000249c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x70>
ffffffffc00027d4:	00000913          	li	s2,0
ffffffffc00027d8:	f09ff06f          	j	ffffffffc00026e0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x2b4>
ffffffffc00027dc:	00048713          	mv	a4,s1
ffffffffc00027e0:	00000813          	li	a6,0
ffffffffc00027e4:	0f000593          	li	a1,240
ffffffffc00027e8:	cab6eae3          	bltu	a3,a1,ffffffffc000249c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x70>
ffffffffc00027ec:	01f6f693          	andi	a3,a3,31
ffffffffc00027f0:	00651513          	slli	a0,a0,0x6
ffffffffc00027f4:	00a86533          	or	a0,a6,a0
ffffffffc00027f8:	00970a63          	beq	a4,s1,ffffffffc000280c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x3e0>
ffffffffc00027fc:	00170793          	addi	a5,a4,1
ffffffffc0002800:	00074583          	lbu	a1,0(a4)
ffffffffc0002804:	03f5f593          	andi	a1,a1,63
ffffffffc0002808:	0080006f          	j	ffffffffc0002810 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x3e4>
ffffffffc000280c:	00000593          	li	a1,0
ffffffffc0002810:	01269693          	slli	a3,a3,0x12
ffffffffc0002814:	001c0737          	lui	a4,0x1c0
ffffffffc0002818:	00e6f6b3          	and	a3,a3,a4
ffffffffc000281c:	00651513          	slli	a0,a0,0x6
ffffffffc0002820:	00d56533          	or	a0,a0,a3
ffffffffc0002824:	00b56533          	or	a0,a0,a1
ffffffffc0002828:	001105b7          	lui	a1,0x110
ffffffffc000282c:	e8b508e3          	beq	a0,a1,ffffffffc00026bc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x290>
ffffffffc0002830:	c6dff06f          	j	ffffffffc000249c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x70>

ffffffffc0002834 <_ZN4core3fmt9Formatter9alternate17hdc33dae1f8ce40c8E>:
ffffffffc0002834:	ff010113          	addi	sp,sp,-16
ffffffffc0002838:	00113423          	sd	ra,8(sp)
ffffffffc000283c:	00813023          	sd	s0,0(sp)
ffffffffc0002840:	01010413          	addi	s0,sp,16
ffffffffc0002844:	05054503          	lbu	a0,80(a0)
ffffffffc0002848:	00457513          	andi	a0,a0,4
ffffffffc000284c:	00255513          	srli	a0,a0,0x2
ffffffffc0002850:	00013403          	ld	s0,0(sp)
ffffffffc0002854:	00813083          	ld	ra,8(sp)
ffffffffc0002858:	01010113          	addi	sp,sp,16
ffffffffc000285c:	00008067          	ret

ffffffffc0002860 <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17ha4db6e3e5fd36be8E>:
ffffffffc0002860:	ff010113          	addi	sp,sp,-16
ffffffffc0002864:	00113423          	sd	ra,8(sp)
ffffffffc0002868:	00813023          	sd	s0,0(sp)
ffffffffc000286c:	01010413          	addi	s0,sp,16
ffffffffc0002870:	00058693          	mv	a3,a1
ffffffffc0002874:	00050593          	mv	a1,a0
ffffffffc0002878:	00060513          	mv	a0,a2
ffffffffc000287c:	00068613          	mv	a2,a3
ffffffffc0002880:	00013403          	ld	s0,0(sp)
ffffffffc0002884:	00813083          	ld	ra,8(sp)
ffffffffc0002888:	01010113          	addi	sp,sp,16
ffffffffc000288c:	00000317          	auipc	t1,0x0
ffffffffc0002890:	ba030067          	jr	-1120(t1) # ffffffffc000242c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E>

ffffffffc0002894 <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hbda3aee8c603d282E>:
ffffffffc0002894:	ff010113          	addi	sp,sp,-16
ffffffffc0002898:	00113423          	sd	ra,8(sp)
ffffffffc000289c:	00813023          	sd	s0,0(sp)
ffffffffc00028a0:	01010413          	addi	s0,sp,16
ffffffffc00028a4:	0205b503          	ld	a0,32(a1) # 110020 <XLENb+0x10ffe0>
ffffffffc00028a8:	0285b583          	ld	a1,40(a1)
ffffffffc00028ac:	0185b783          	ld	a5,24(a1)
ffffffffc00028b0:	c00055b7          	lui	a1,0xc0005
ffffffffc00028b4:	a1858593          	addi	a1,a1,-1512 # ffffffffc0004a18 <.Lanon.48f9e11bbce1b892091ea8507ea176ad.22>
ffffffffc00028b8:	00500613          	li	a2,5
ffffffffc00028bc:	00013403          	ld	s0,0(sp)
ffffffffc00028c0:	00813083          	ld	ra,8(sp)
ffffffffc00028c4:	01010113          	addi	sp,sp,16
ffffffffc00028c8:	00078067          	jr	a5

ffffffffc00028cc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36d96680293b17a0E>:
ffffffffc00028cc:	fc010113          	addi	sp,sp,-64
ffffffffc00028d0:	02113c23          	sd	ra,56(sp)
ffffffffc00028d4:	02813823          	sd	s0,48(sp)
ffffffffc00028d8:	04010413          	addi	s0,sp,64
ffffffffc00028dc:	0285b683          	ld	a3,40(a1)
ffffffffc00028e0:	0205b583          	ld	a1,32(a1)
ffffffffc00028e4:	00053503          	ld	a0,0(a0)
ffffffffc00028e8:	02853603          	ld	a2,40(a0)
ffffffffc00028ec:	fec43423          	sd	a2,-24(s0)
ffffffffc00028f0:	02053603          	ld	a2,32(a0)
ffffffffc00028f4:	fec43023          	sd	a2,-32(s0)
ffffffffc00028f8:	01853603          	ld	a2,24(a0)
ffffffffc00028fc:	fcc43c23          	sd	a2,-40(s0)
ffffffffc0002900:	01053603          	ld	a2,16(a0)
ffffffffc0002904:	fcc43823          	sd	a2,-48(s0)
ffffffffc0002908:	00853603          	ld	a2,8(a0)
ffffffffc000290c:	fcc43423          	sd	a2,-56(s0)
ffffffffc0002910:	00053503          	ld	a0,0(a0)
ffffffffc0002914:	fca43023          	sd	a0,-64(s0)
ffffffffc0002918:	fc040613          	addi	a2,s0,-64
ffffffffc000291c:	00058513          	mv	a0,a1
ffffffffc0002920:	00068593          	mv	a1,a3
ffffffffc0002924:	fffff097          	auipc	ra,0xfffff
ffffffffc0002928:	394080e7          	jalr	916(ra) # ffffffffc0001cb8 <_ZN4core3fmt5write17h62151e7ab9dfc071E>
ffffffffc000292c:	03013403          	ld	s0,48(sp)
ffffffffc0002930:	03813083          	ld	ra,56(sp)
ffffffffc0002934:	04010113          	addi	sp,sp,64
ffffffffc0002938:	00008067          	ret

ffffffffc000293c <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f0c1b3cb995c3c1E>:
ffffffffc000293c:	ff010113          	addi	sp,sp,-16
ffffffffc0002940:	00113423          	sd	ra,8(sp)
ffffffffc0002944:	00813023          	sd	s0,0(sp)
ffffffffc0002948:	01010413          	addi	s0,sp,16
ffffffffc000294c:	00058693          	mv	a3,a1
ffffffffc0002950:	00053503          	ld	a0,0(a0)
ffffffffc0002954:	00853603          	ld	a2,8(a0)
ffffffffc0002958:	00053583          	ld	a1,0(a0)
ffffffffc000295c:	00068513          	mv	a0,a3
ffffffffc0002960:	00013403          	ld	s0,0(sp)
ffffffffc0002964:	00813083          	ld	ra,8(sp)
ffffffffc0002968:	01010113          	addi	sp,sp,16
ffffffffc000296c:	00000317          	auipc	t1,0x0
ffffffffc0002970:	ac030067          	jr	-1344(t1) # ffffffffc000242c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E>

ffffffffc0002974 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h949cc7e59610bfd8E>:
ffffffffc0002974:	ff010113          	addi	sp,sp,-16
ffffffffc0002978:	00113423          	sd	ra,8(sp)
ffffffffc000297c:	00813023          	sd	s0,0(sp)
ffffffffc0002980:	01010413          	addi	s0,sp,16
ffffffffc0002984:	00058693          	mv	a3,a1
ffffffffc0002988:	00853603          	ld	a2,8(a0)
ffffffffc000298c:	00053583          	ld	a1,0(a0)
ffffffffc0002990:	00068513          	mv	a0,a3
ffffffffc0002994:	00013403          	ld	s0,0(sp)
ffffffffc0002998:	00813083          	ld	ra,8(sp)
ffffffffc000299c:	01010113          	addi	sp,sp,16
ffffffffc00029a0:	00000317          	auipc	t1,0x0
ffffffffc00029a4:	a8c30067          	jr	-1396(t1) # ffffffffc000242c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E>

ffffffffc00029a8 <__udivdi3>:
ffffffffc00029a8:	ff010113          	addi	sp,sp,-16
ffffffffc00029ac:	00113423          	sd	ra,8(sp)
ffffffffc00029b0:	00813023          	sd	s0,0(sp)
ffffffffc00029b4:	01010413          	addi	s0,sp,16
ffffffffc00029b8:	00000613          	li	a2,0
ffffffffc00029bc:	00013403          	ld	s0,0(sp)
ffffffffc00029c0:	00813083          	ld	ra,8(sp)
ffffffffc00029c4:	01010113          	addi	sp,sp,16
ffffffffc00029c8:	00000317          	auipc	t1,0x0
ffffffffc00029cc:	03c30067          	jr	60(t1) # ffffffffc0002a04 <__udivmoddi4>

ffffffffc00029d0 <__umoddi3>:
ffffffffc00029d0:	fe010113          	addi	sp,sp,-32
ffffffffc00029d4:	00113c23          	sd	ra,24(sp)
ffffffffc00029d8:	00813823          	sd	s0,16(sp)
ffffffffc00029dc:	02010413          	addi	s0,sp,32
ffffffffc00029e0:	fe043423          	sd	zero,-24(s0)
ffffffffc00029e4:	fe840613          	addi	a2,s0,-24
ffffffffc00029e8:	00000097          	auipc	ra,0x0
ffffffffc00029ec:	01c080e7          	jalr	28(ra) # ffffffffc0002a04 <__udivmoddi4>
ffffffffc00029f0:	fe843503          	ld	a0,-24(s0)
ffffffffc00029f4:	01013403          	ld	s0,16(sp)
ffffffffc00029f8:	01813083          	ld	ra,24(sp)
ffffffffc00029fc:	02010113          	addi	sp,sp,32
ffffffffc0002a00:	00008067          	ret

ffffffffc0002a04 <__udivmoddi4>:
ffffffffc0002a04:	fb010113          	addi	sp,sp,-80
ffffffffc0002a08:	04113423          	sd	ra,72(sp)
ffffffffc0002a0c:	04813023          	sd	s0,64(sp)
ffffffffc0002a10:	02913c23          	sd	s1,56(sp)
ffffffffc0002a14:	03213823          	sd	s2,48(sp)
ffffffffc0002a18:	03313423          	sd	s3,40(sp)
ffffffffc0002a1c:	03413023          	sd	s4,32(sp)
ffffffffc0002a20:	01513c23          	sd	s5,24(sp)
ffffffffc0002a24:	01613823          	sd	s6,16(sp)
ffffffffc0002a28:	01713423          	sd	s7,8(sp)
ffffffffc0002a2c:	01813023          	sd	s8,0(sp)
ffffffffc0002a30:	05010413          	addi	s0,sp,80
ffffffffc0002a34:	00060913          	mv	s2,a2
ffffffffc0002a38:	00058c13          	mv	s8,a1
ffffffffc0002a3c:	00050993          	mv	s3,a0
ffffffffc0002a40:	42055513          	srai	a0,a0,0x20
ffffffffc0002a44:	20050263          	beqz	a0,ffffffffc0002c48 <__udivmoddi4+0x244>
ffffffffc0002a48:	0209da13          	srli	s4,s3,0x20
ffffffffc0002a4c:	020c5a93          	srli	s5,s8,0x20
ffffffffc0002a50:	020c1513          	slli	a0,s8,0x20
ffffffffc0002a54:	02055513          	srli	a0,a0,0x20
ffffffffc0002a58:	22050063          	beqz	a0,ffffffffc0002c78 <__udivmoddi4+0x274>
ffffffffc0002a5c:	420a8e63          	beqz	s5,ffffffffc0002e98 <__udivmoddi4+0x494>
ffffffffc0002a60:	02000b13          	li	s6,32
ffffffffc0002a64:	000b0b93          	mv	s7,s6
ffffffffc0002a68:	0e0a8463          	beqz	s5,ffffffffc0002b50 <__udivmoddi4+0x14c>
ffffffffc0002a6c:	001ad513          	srli	a0,s5,0x1
ffffffffc0002a70:	00aae533          	or	a0,s5,a0
ffffffffc0002a74:	00255593          	srli	a1,a0,0x2
ffffffffc0002a78:	00b56533          	or	a0,a0,a1
ffffffffc0002a7c:	00455593          	srli	a1,a0,0x4
ffffffffc0002a80:	00b56533          	or	a0,a0,a1
ffffffffc0002a84:	00855593          	srli	a1,a0,0x8
ffffffffc0002a88:	00b56533          	or	a0,a0,a1
ffffffffc0002a8c:	01055593          	srli	a1,a0,0x10
ffffffffc0002a90:	00b56533          	or	a0,a0,a1
ffffffffc0002a94:	02055593          	srli	a1,a0,0x20
ffffffffc0002a98:	00b56533          	or	a0,a0,a1
ffffffffc0002a9c:	055555b7          	lui	a1,0x5555
ffffffffc0002aa0:	5555859b          	addiw	a1,a1,1365
ffffffffc0002aa4:	00c59593          	slli	a1,a1,0xc
ffffffffc0002aa8:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0002aac:	00c59593          	slli	a1,a1,0xc
ffffffffc0002ab0:	55558593          	addi	a1,a1,1365
ffffffffc0002ab4:	00c59593          	slli	a1,a1,0xc
ffffffffc0002ab8:	fff54513          	not	a0,a0
ffffffffc0002abc:	55558593          	addi	a1,a1,1365
ffffffffc0002ac0:	00155613          	srli	a2,a0,0x1
ffffffffc0002ac4:	00b675b3          	and	a1,a2,a1
ffffffffc0002ac8:	40b50533          	sub	a0,a0,a1
ffffffffc0002acc:	033335b7          	lui	a1,0x3333
ffffffffc0002ad0:	3335859b          	addiw	a1,a1,819
ffffffffc0002ad4:	00c59593          	slli	a1,a1,0xc
ffffffffc0002ad8:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0002adc:	00c59593          	slli	a1,a1,0xc
ffffffffc0002ae0:	33358593          	addi	a1,a1,819
ffffffffc0002ae4:	00c59593          	slli	a1,a1,0xc
ffffffffc0002ae8:	33358593          	addi	a1,a1,819
ffffffffc0002aec:	00b57633          	and	a2,a0,a1
ffffffffc0002af0:	00255513          	srli	a0,a0,0x2
ffffffffc0002af4:	00b57533          	and	a0,a0,a1
ffffffffc0002af8:	00a60533          	add	a0,a2,a0
ffffffffc0002afc:	00455593          	srli	a1,a0,0x4
ffffffffc0002b00:	00b50533          	add	a0,a0,a1
ffffffffc0002b04:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0002b08:	0f15859b          	addiw	a1,a1,241
ffffffffc0002b0c:	00c59593          	slli	a1,a1,0xc
ffffffffc0002b10:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0002b14:	00c59593          	slli	a1,a1,0xc
ffffffffc0002b18:	0f158593          	addi	a1,a1,241
ffffffffc0002b1c:	00c59593          	slli	a1,a1,0xc
ffffffffc0002b20:	f0f58593          	addi	a1,a1,-241
ffffffffc0002b24:	00b57533          	and	a0,a0,a1
ffffffffc0002b28:	010105b7          	lui	a1,0x1010
ffffffffc0002b2c:	1015859b          	addiw	a1,a1,257
ffffffffc0002b30:	01059593          	slli	a1,a1,0x10
ffffffffc0002b34:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0002b38:	01059593          	slli	a1,a1,0x10
ffffffffc0002b3c:	10158593          	addi	a1,a1,257
ffffffffc0002b40:	00001097          	auipc	ra,0x1
ffffffffc0002b44:	814080e7          	jalr	-2028(ra) # ffffffffc0003354 <__muldi3>
ffffffffc0002b48:	03855513          	srli	a0,a0,0x38
ffffffffc0002b4c:	fe050b93          	addi	s7,a0,-32
ffffffffc0002b50:	0e0a0463          	beqz	s4,ffffffffc0002c38 <__udivmoddi4+0x234>
ffffffffc0002b54:	001a5513          	srli	a0,s4,0x1
ffffffffc0002b58:	00aa6533          	or	a0,s4,a0
ffffffffc0002b5c:	00255593          	srli	a1,a0,0x2
ffffffffc0002b60:	00b56533          	or	a0,a0,a1
ffffffffc0002b64:	00455593          	srli	a1,a0,0x4
ffffffffc0002b68:	00b56533          	or	a0,a0,a1
ffffffffc0002b6c:	00855593          	srli	a1,a0,0x8
ffffffffc0002b70:	00b56533          	or	a0,a0,a1
ffffffffc0002b74:	01055593          	srli	a1,a0,0x10
ffffffffc0002b78:	00b56533          	or	a0,a0,a1
ffffffffc0002b7c:	02055593          	srli	a1,a0,0x20
ffffffffc0002b80:	00b56533          	or	a0,a0,a1
ffffffffc0002b84:	055555b7          	lui	a1,0x5555
ffffffffc0002b88:	5555859b          	addiw	a1,a1,1365
ffffffffc0002b8c:	00c59593          	slli	a1,a1,0xc
ffffffffc0002b90:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0002b94:	00c59593          	slli	a1,a1,0xc
ffffffffc0002b98:	55558593          	addi	a1,a1,1365
ffffffffc0002b9c:	00c59593          	slli	a1,a1,0xc
ffffffffc0002ba0:	fff54513          	not	a0,a0
ffffffffc0002ba4:	55558593          	addi	a1,a1,1365
ffffffffc0002ba8:	00155613          	srli	a2,a0,0x1
ffffffffc0002bac:	00b675b3          	and	a1,a2,a1
ffffffffc0002bb0:	40b50533          	sub	a0,a0,a1
ffffffffc0002bb4:	033335b7          	lui	a1,0x3333
ffffffffc0002bb8:	3335859b          	addiw	a1,a1,819
ffffffffc0002bbc:	00c59593          	slli	a1,a1,0xc
ffffffffc0002bc0:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0002bc4:	00c59593          	slli	a1,a1,0xc
ffffffffc0002bc8:	33358593          	addi	a1,a1,819
ffffffffc0002bcc:	00c59593          	slli	a1,a1,0xc
ffffffffc0002bd0:	33358593          	addi	a1,a1,819
ffffffffc0002bd4:	00b57633          	and	a2,a0,a1
ffffffffc0002bd8:	00255513          	srli	a0,a0,0x2
ffffffffc0002bdc:	00b57533          	and	a0,a0,a1
ffffffffc0002be0:	00a60533          	add	a0,a2,a0
ffffffffc0002be4:	00455593          	srli	a1,a0,0x4
ffffffffc0002be8:	00b50533          	add	a0,a0,a1
ffffffffc0002bec:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0002bf0:	0f15859b          	addiw	a1,a1,241
ffffffffc0002bf4:	00c59593          	slli	a1,a1,0xc
ffffffffc0002bf8:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0002bfc:	00c59593          	slli	a1,a1,0xc
ffffffffc0002c00:	0f158593          	addi	a1,a1,241
ffffffffc0002c04:	00c59593          	slli	a1,a1,0xc
ffffffffc0002c08:	f0f58593          	addi	a1,a1,-241
ffffffffc0002c0c:	00b57533          	and	a0,a0,a1
ffffffffc0002c10:	010105b7          	lui	a1,0x1010
ffffffffc0002c14:	1015859b          	addiw	a1,a1,257
ffffffffc0002c18:	01059593          	slli	a1,a1,0x10
ffffffffc0002c1c:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0002c20:	01059593          	slli	a1,a1,0x10
ffffffffc0002c24:	10158593          	addi	a1,a1,257
ffffffffc0002c28:	00000097          	auipc	ra,0x0
ffffffffc0002c2c:	72c080e7          	jalr	1836(ra) # ffffffffc0003354 <__muldi3>
ffffffffc0002c30:	03855513          	srli	a0,a0,0x38
ffffffffc0002c34:	fe050b13          	addi	s6,a0,-32
ffffffffc0002c38:	416b8533          	sub	a0,s7,s6
ffffffffc0002c3c:	01f00593          	li	a1,31
ffffffffc0002c40:	24a5f463          	bgeu	a1,a0,ffffffffc0002e88 <__udivmoddi4+0x484>
ffffffffc0002c44:	2340006f          	j	ffffffffc0002e78 <__udivmoddi4+0x474>
ffffffffc0002c48:	020c5513          	srli	a0,s8,0x20
ffffffffc0002c4c:	22051663          	bnez	a0,ffffffffc0002e78 <__udivmoddi4+0x474>
ffffffffc0002c50:	020c1513          	slli	a0,s8,0x20
ffffffffc0002c54:	4c090663          	beqz	s2,ffffffffc0003120 <__udivmoddi4+0x71c>
ffffffffc0002c58:	02055593          	srli	a1,a0,0x20
ffffffffc0002c5c:	6e058463          	beqz	a1,ffffffffc0003344 <__udivmoddi4+0x940>
ffffffffc0002c60:	02099513          	slli	a0,s3,0x20
ffffffffc0002c64:	02055513          	srli	a0,a0,0x20
ffffffffc0002c68:	00000097          	auipc	ra,0x0
ffffffffc0002c6c:	d68080e7          	jalr	-664(ra) # ffffffffc00029d0 <__umoddi3>
ffffffffc0002c70:	00a93023          	sd	a0,0(s2)
ffffffffc0002c74:	4b40006f          	j	ffffffffc0003128 <__udivmoddi4+0x724>
ffffffffc0002c78:	6c0a8663          	beqz	s5,ffffffffc0003344 <__udivmoddi4+0x940>
ffffffffc0002c7c:	02099513          	slli	a0,s3,0x20
ffffffffc0002c80:	02055593          	srli	a1,a0,0x20
ffffffffc0002c84:	46058a63          	beqz	a1,ffffffffc00030f8 <__udivmoddi4+0x6f4>
ffffffffc0002c88:	fffa8513          	addi	a0,s5,-1
ffffffffc0002c8c:	01557633          	and	a2,a0,s5
ffffffffc0002c90:	5c060263          	beqz	a2,ffffffffc0003254 <__udivmoddi4+0x850>
ffffffffc0002c94:	02000b13          	li	s6,32
ffffffffc0002c98:	000b0b93          	mv	s7,s6
ffffffffc0002c9c:	0e0a8463          	beqz	s5,ffffffffc0002d84 <__udivmoddi4+0x380>
ffffffffc0002ca0:	001ad513          	srli	a0,s5,0x1
ffffffffc0002ca4:	00aae533          	or	a0,s5,a0
ffffffffc0002ca8:	00255593          	srli	a1,a0,0x2
ffffffffc0002cac:	00b56533          	or	a0,a0,a1
ffffffffc0002cb0:	00455593          	srli	a1,a0,0x4
ffffffffc0002cb4:	00b56533          	or	a0,a0,a1
ffffffffc0002cb8:	00855593          	srli	a1,a0,0x8
ffffffffc0002cbc:	00b56533          	or	a0,a0,a1
ffffffffc0002cc0:	01055593          	srli	a1,a0,0x10
ffffffffc0002cc4:	00b56533          	or	a0,a0,a1
ffffffffc0002cc8:	02055593          	srli	a1,a0,0x20
ffffffffc0002ccc:	00b56533          	or	a0,a0,a1
ffffffffc0002cd0:	055555b7          	lui	a1,0x5555
ffffffffc0002cd4:	5555859b          	addiw	a1,a1,1365
ffffffffc0002cd8:	00c59593          	slli	a1,a1,0xc
ffffffffc0002cdc:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0002ce0:	00c59593          	slli	a1,a1,0xc
ffffffffc0002ce4:	55558593          	addi	a1,a1,1365
ffffffffc0002ce8:	00c59593          	slli	a1,a1,0xc
ffffffffc0002cec:	fff54513          	not	a0,a0
ffffffffc0002cf0:	55558593          	addi	a1,a1,1365
ffffffffc0002cf4:	00155613          	srli	a2,a0,0x1
ffffffffc0002cf8:	00b675b3          	and	a1,a2,a1
ffffffffc0002cfc:	40b50533          	sub	a0,a0,a1
ffffffffc0002d00:	033335b7          	lui	a1,0x3333
ffffffffc0002d04:	3335859b          	addiw	a1,a1,819
ffffffffc0002d08:	00c59593          	slli	a1,a1,0xc
ffffffffc0002d0c:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0002d10:	00c59593          	slli	a1,a1,0xc
ffffffffc0002d14:	33358593          	addi	a1,a1,819
ffffffffc0002d18:	00c59593          	slli	a1,a1,0xc
ffffffffc0002d1c:	33358593          	addi	a1,a1,819
ffffffffc0002d20:	00b57633          	and	a2,a0,a1
ffffffffc0002d24:	00255513          	srli	a0,a0,0x2
ffffffffc0002d28:	00b57533          	and	a0,a0,a1
ffffffffc0002d2c:	00a60533          	add	a0,a2,a0
ffffffffc0002d30:	00455593          	srli	a1,a0,0x4
ffffffffc0002d34:	00b50533          	add	a0,a0,a1
ffffffffc0002d38:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0002d3c:	0f15859b          	addiw	a1,a1,241
ffffffffc0002d40:	00c59593          	slli	a1,a1,0xc
ffffffffc0002d44:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0002d48:	00c59593          	slli	a1,a1,0xc
ffffffffc0002d4c:	0f158593          	addi	a1,a1,241
ffffffffc0002d50:	00c59593          	slli	a1,a1,0xc
ffffffffc0002d54:	f0f58593          	addi	a1,a1,-241
ffffffffc0002d58:	00b57533          	and	a0,a0,a1
ffffffffc0002d5c:	010105b7          	lui	a1,0x1010
ffffffffc0002d60:	1015859b          	addiw	a1,a1,257
ffffffffc0002d64:	01059593          	slli	a1,a1,0x10
ffffffffc0002d68:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0002d6c:	01059593          	slli	a1,a1,0x10
ffffffffc0002d70:	10158593          	addi	a1,a1,257
ffffffffc0002d74:	00000097          	auipc	ra,0x0
ffffffffc0002d78:	5e0080e7          	jalr	1504(ra) # ffffffffc0003354 <__muldi3>
ffffffffc0002d7c:	03855513          	srli	a0,a0,0x38
ffffffffc0002d80:	fe050b93          	addi	s7,a0,-32
ffffffffc0002d84:	0e0a0463          	beqz	s4,ffffffffc0002e6c <__udivmoddi4+0x468>
ffffffffc0002d88:	001a5513          	srli	a0,s4,0x1
ffffffffc0002d8c:	00aa6533          	or	a0,s4,a0
ffffffffc0002d90:	00255593          	srli	a1,a0,0x2
ffffffffc0002d94:	00b56533          	or	a0,a0,a1
ffffffffc0002d98:	00455593          	srli	a1,a0,0x4
ffffffffc0002d9c:	00b56533          	or	a0,a0,a1
ffffffffc0002da0:	00855593          	srli	a1,a0,0x8
ffffffffc0002da4:	00b56533          	or	a0,a0,a1
ffffffffc0002da8:	01055593          	srli	a1,a0,0x10
ffffffffc0002dac:	00b56533          	or	a0,a0,a1
ffffffffc0002db0:	02055593          	srli	a1,a0,0x20
ffffffffc0002db4:	00b56533          	or	a0,a0,a1
ffffffffc0002db8:	055555b7          	lui	a1,0x5555
ffffffffc0002dbc:	5555859b          	addiw	a1,a1,1365
ffffffffc0002dc0:	00c59593          	slli	a1,a1,0xc
ffffffffc0002dc4:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0002dc8:	00c59593          	slli	a1,a1,0xc
ffffffffc0002dcc:	55558593          	addi	a1,a1,1365
ffffffffc0002dd0:	00c59593          	slli	a1,a1,0xc
ffffffffc0002dd4:	fff54513          	not	a0,a0
ffffffffc0002dd8:	55558593          	addi	a1,a1,1365
ffffffffc0002ddc:	00155613          	srli	a2,a0,0x1
ffffffffc0002de0:	00b675b3          	and	a1,a2,a1
ffffffffc0002de4:	40b50533          	sub	a0,a0,a1
ffffffffc0002de8:	033335b7          	lui	a1,0x3333
ffffffffc0002dec:	3335859b          	addiw	a1,a1,819
ffffffffc0002df0:	00c59593          	slli	a1,a1,0xc
ffffffffc0002df4:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0002df8:	00c59593          	slli	a1,a1,0xc
ffffffffc0002dfc:	33358593          	addi	a1,a1,819
ffffffffc0002e00:	00c59593          	slli	a1,a1,0xc
ffffffffc0002e04:	33358593          	addi	a1,a1,819
ffffffffc0002e08:	00b57633          	and	a2,a0,a1
ffffffffc0002e0c:	00255513          	srli	a0,a0,0x2
ffffffffc0002e10:	00b57533          	and	a0,a0,a1
ffffffffc0002e14:	00a60533          	add	a0,a2,a0
ffffffffc0002e18:	00455593          	srli	a1,a0,0x4
ffffffffc0002e1c:	00b50533          	add	a0,a0,a1
ffffffffc0002e20:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0002e24:	0f15859b          	addiw	a1,a1,241
ffffffffc0002e28:	00c59593          	slli	a1,a1,0xc
ffffffffc0002e2c:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0002e30:	00c59593          	slli	a1,a1,0xc
ffffffffc0002e34:	0f158593          	addi	a1,a1,241
ffffffffc0002e38:	00c59593          	slli	a1,a1,0xc
ffffffffc0002e3c:	f0f58593          	addi	a1,a1,-241
ffffffffc0002e40:	00b57533          	and	a0,a0,a1
ffffffffc0002e44:	010105b7          	lui	a1,0x1010
ffffffffc0002e48:	1015859b          	addiw	a1,a1,257
ffffffffc0002e4c:	01059593          	slli	a1,a1,0x10
ffffffffc0002e50:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0002e54:	01059593          	slli	a1,a1,0x10
ffffffffc0002e58:	10158593          	addi	a1,a1,257
ffffffffc0002e5c:	00000097          	auipc	ra,0x0
ffffffffc0002e60:	4f8080e7          	jalr	1272(ra) # ffffffffc0003354 <__muldi3>
ffffffffc0002e64:	03855513          	srli	a0,a0,0x38
ffffffffc0002e68:	fe050b13          	addi	s6,a0,-32
ffffffffc0002e6c:	416b8533          	sub	a0,s7,s6
ffffffffc0002e70:	01e00593          	li	a1,30
ffffffffc0002e74:	00a5fa63          	bgeu	a1,a0,ffffffffc0002e88 <__udivmoddi4+0x484>
ffffffffc0002e78:	26090c63          	beqz	s2,ffffffffc00030f0 <__udivmoddi4+0x6ec>
ffffffffc0002e7c:	01393023          	sd	s3,0(s2)
ffffffffc0002e80:	00000993          	li	s3,0
ffffffffc0002e84:	2c00006f          	j	ffffffffc0003144 <__udivmoddi4+0x740>
ffffffffc0002e88:	03f00593          	li	a1,63
ffffffffc0002e8c:	40a585b3          	sub	a1,a1,a0
ffffffffc0002e90:	00150513          	addi	a0,a0,1
ffffffffc0002e94:	1fc0006f          	j	ffffffffc0003090 <__udivmoddi4+0x68c>
ffffffffc0002e98:	fffc0593          	addi	a1,s8,-1
ffffffffc0002e9c:	0185f633          	and	a2,a1,s8
ffffffffc0002ea0:	02061613          	slli	a2,a2,0x20
ffffffffc0002ea4:	02065613          	srli	a2,a2,0x20
ffffffffc0002ea8:	2c060863          	beqz	a2,ffffffffc0003178 <__udivmoddi4+0x774>
ffffffffc0002eac:	02000a93          	li	s5,32
ffffffffc0002eb0:	000a8593          	mv	a1,s5
ffffffffc0002eb4:	0e050463          	beqz	a0,ffffffffc0002f9c <__udivmoddi4+0x598>
ffffffffc0002eb8:	001c559b          	srliw	a1,s8,0x1
ffffffffc0002ebc:	00b56533          	or	a0,a0,a1
ffffffffc0002ec0:	00255593          	srli	a1,a0,0x2
ffffffffc0002ec4:	00b56533          	or	a0,a0,a1
ffffffffc0002ec8:	00455593          	srli	a1,a0,0x4
ffffffffc0002ecc:	00b56533          	or	a0,a0,a1
ffffffffc0002ed0:	00855593          	srli	a1,a0,0x8
ffffffffc0002ed4:	00b56533          	or	a0,a0,a1
ffffffffc0002ed8:	01055593          	srli	a1,a0,0x10
ffffffffc0002edc:	00b56533          	or	a0,a0,a1
ffffffffc0002ee0:	02055593          	srli	a1,a0,0x20
ffffffffc0002ee4:	00b56533          	or	a0,a0,a1
ffffffffc0002ee8:	055555b7          	lui	a1,0x5555
ffffffffc0002eec:	5555859b          	addiw	a1,a1,1365
ffffffffc0002ef0:	00c59593          	slli	a1,a1,0xc
ffffffffc0002ef4:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0002ef8:	00c59593          	slli	a1,a1,0xc
ffffffffc0002efc:	55558593          	addi	a1,a1,1365
ffffffffc0002f00:	00c59593          	slli	a1,a1,0xc
ffffffffc0002f04:	55558593          	addi	a1,a1,1365
ffffffffc0002f08:	fff54513          	not	a0,a0
ffffffffc0002f0c:	00155613          	srli	a2,a0,0x1
ffffffffc0002f10:	00b675b3          	and	a1,a2,a1
ffffffffc0002f14:	40b50533          	sub	a0,a0,a1
ffffffffc0002f18:	033335b7          	lui	a1,0x3333
ffffffffc0002f1c:	3335859b          	addiw	a1,a1,819
ffffffffc0002f20:	00c59593          	slli	a1,a1,0xc
ffffffffc0002f24:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0002f28:	00c59593          	slli	a1,a1,0xc
ffffffffc0002f2c:	33358593          	addi	a1,a1,819
ffffffffc0002f30:	00c59593          	slli	a1,a1,0xc
ffffffffc0002f34:	33358593          	addi	a1,a1,819
ffffffffc0002f38:	00b57633          	and	a2,a0,a1
ffffffffc0002f3c:	00255513          	srli	a0,a0,0x2
ffffffffc0002f40:	00b57533          	and	a0,a0,a1
ffffffffc0002f44:	00a60533          	add	a0,a2,a0
ffffffffc0002f48:	00455593          	srli	a1,a0,0x4
ffffffffc0002f4c:	00b50533          	add	a0,a0,a1
ffffffffc0002f50:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0002f54:	0f15859b          	addiw	a1,a1,241
ffffffffc0002f58:	00c59593          	slli	a1,a1,0xc
ffffffffc0002f5c:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0002f60:	00c59593          	slli	a1,a1,0xc
ffffffffc0002f64:	0f158593          	addi	a1,a1,241
ffffffffc0002f68:	00c59593          	slli	a1,a1,0xc
ffffffffc0002f6c:	f0f58593          	addi	a1,a1,-241
ffffffffc0002f70:	00b57533          	and	a0,a0,a1
ffffffffc0002f74:	010105b7          	lui	a1,0x1010
ffffffffc0002f78:	1015859b          	addiw	a1,a1,257
ffffffffc0002f7c:	01059593          	slli	a1,a1,0x10
ffffffffc0002f80:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0002f84:	01059593          	slli	a1,a1,0x10
ffffffffc0002f88:	10158593          	addi	a1,a1,257
ffffffffc0002f8c:	00000097          	auipc	ra,0x0
ffffffffc0002f90:	3c8080e7          	jalr	968(ra) # ffffffffc0003354 <__muldi3>
ffffffffc0002f94:	03855513          	srli	a0,a0,0x38
ffffffffc0002f98:	fe050593          	addi	a1,a0,-32
ffffffffc0002f9c:	02158b13          	addi	s6,a1,33
ffffffffc0002fa0:	0e0a0463          	beqz	s4,ffffffffc0003088 <__udivmoddi4+0x684>
ffffffffc0002fa4:	001a5513          	srli	a0,s4,0x1
ffffffffc0002fa8:	00aa6533          	or	a0,s4,a0
ffffffffc0002fac:	00255593          	srli	a1,a0,0x2
ffffffffc0002fb0:	00b56533          	or	a0,a0,a1
ffffffffc0002fb4:	00455593          	srli	a1,a0,0x4
ffffffffc0002fb8:	00b56533          	or	a0,a0,a1
ffffffffc0002fbc:	00855593          	srli	a1,a0,0x8
ffffffffc0002fc0:	00b56533          	or	a0,a0,a1
ffffffffc0002fc4:	01055593          	srli	a1,a0,0x10
ffffffffc0002fc8:	00b56533          	or	a0,a0,a1
ffffffffc0002fcc:	02055593          	srli	a1,a0,0x20
ffffffffc0002fd0:	00b56533          	or	a0,a0,a1
ffffffffc0002fd4:	055555b7          	lui	a1,0x5555
ffffffffc0002fd8:	5555859b          	addiw	a1,a1,1365
ffffffffc0002fdc:	00c59593          	slli	a1,a1,0xc
ffffffffc0002fe0:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0002fe4:	00c59593          	slli	a1,a1,0xc
ffffffffc0002fe8:	55558593          	addi	a1,a1,1365
ffffffffc0002fec:	00c59593          	slli	a1,a1,0xc
ffffffffc0002ff0:	fff54513          	not	a0,a0
ffffffffc0002ff4:	55558593          	addi	a1,a1,1365
ffffffffc0002ff8:	00155613          	srli	a2,a0,0x1
ffffffffc0002ffc:	00b675b3          	and	a1,a2,a1
ffffffffc0003000:	40b50533          	sub	a0,a0,a1
ffffffffc0003004:	033335b7          	lui	a1,0x3333
ffffffffc0003008:	3335859b          	addiw	a1,a1,819
ffffffffc000300c:	00c59593          	slli	a1,a1,0xc
ffffffffc0003010:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0003014:	00c59593          	slli	a1,a1,0xc
ffffffffc0003018:	33358593          	addi	a1,a1,819
ffffffffc000301c:	00c59593          	slli	a1,a1,0xc
ffffffffc0003020:	33358593          	addi	a1,a1,819
ffffffffc0003024:	00b57633          	and	a2,a0,a1
ffffffffc0003028:	00255513          	srli	a0,a0,0x2
ffffffffc000302c:	00b57533          	and	a0,a0,a1
ffffffffc0003030:	00a60533          	add	a0,a2,a0
ffffffffc0003034:	00455593          	srli	a1,a0,0x4
ffffffffc0003038:	00b50533          	add	a0,a0,a1
ffffffffc000303c:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0003040:	0f15859b          	addiw	a1,a1,241
ffffffffc0003044:	00c59593          	slli	a1,a1,0xc
ffffffffc0003048:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc000304c:	00c59593          	slli	a1,a1,0xc
ffffffffc0003050:	0f158593          	addi	a1,a1,241
ffffffffc0003054:	00c59593          	slli	a1,a1,0xc
ffffffffc0003058:	f0f58593          	addi	a1,a1,-241
ffffffffc000305c:	00b57533          	and	a0,a0,a1
ffffffffc0003060:	010105b7          	lui	a1,0x1010
ffffffffc0003064:	1015859b          	addiw	a1,a1,257
ffffffffc0003068:	01059593          	slli	a1,a1,0x10
ffffffffc000306c:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0003070:	01059593          	slli	a1,a1,0x10
ffffffffc0003074:	10158593          	addi	a1,a1,257
ffffffffc0003078:	00000097          	auipc	ra,0x0
ffffffffc000307c:	2dc080e7          	jalr	732(ra) # ffffffffc0003354 <__muldi3>
ffffffffc0003080:	03855513          	srli	a0,a0,0x38
ffffffffc0003084:	fe050a93          	addi	s5,a0,-32
ffffffffc0003088:	415b0533          	sub	a0,s6,s5
ffffffffc000308c:	40a005b3          	neg	a1,a0
ffffffffc0003090:	00b995b3          	sll	a1,s3,a1
ffffffffc0003094:	00a9d6b3          	srl	a3,s3,a0
ffffffffc0003098:	00000713          	li	a4,0
ffffffffc000309c:	00000613          	li	a2,0
ffffffffc00030a0:	00169693          	slli	a3,a3,0x1
ffffffffc00030a4:	03f5d793          	srli	a5,a1,0x3f
ffffffffc00030a8:	00d7e6b3          	or	a3,a5,a3
ffffffffc00030ac:	fff6c793          	not	a5,a3
ffffffffc00030b0:	018787b3          	add	a5,a5,s8
ffffffffc00030b4:	43f7d793          	srai	a5,a5,0x3f
ffffffffc00030b8:	0187f4b3          	and	s1,a5,s8
ffffffffc00030bc:	409686b3          	sub	a3,a3,s1
ffffffffc00030c0:	00159593          	slli	a1,a1,0x1
ffffffffc00030c4:	00c5e5b3          	or	a1,a1,a2
ffffffffc00030c8:	00170493          	addi	s1,a4,1 # 1c0001 <XLENb+0x1bffc1>
ffffffffc00030cc:	0017f613          	andi	a2,a5,1
ffffffffc00030d0:	0017079b          	addiw	a5,a4,1
ffffffffc00030d4:	00048713          	mv	a4,s1
ffffffffc00030d8:	fca7e4e3          	bltu	a5,a0,ffffffffc00030a0 <__udivmoddi4+0x69c>
ffffffffc00030dc:	00090463          	beqz	s2,ffffffffc00030e4 <__udivmoddi4+0x6e0>
ffffffffc00030e0:	00d93023          	sd	a3,0(s2)
ffffffffc00030e4:	00159513          	slli	a0,a1,0x1
ffffffffc00030e8:	00a669b3          	or	s3,a2,a0
ffffffffc00030ec:	0580006f          	j	ffffffffc0003144 <__udivmoddi4+0x740>
ffffffffc00030f0:	00000993          	li	s3,0
ffffffffc00030f4:	0500006f          	j	ffffffffc0003144 <__udivmoddi4+0x740>
ffffffffc00030f8:	00090e63          	beqz	s2,ffffffffc0003114 <__udivmoddi4+0x710>
ffffffffc00030fc:	000a0513          	mv	a0,s4
ffffffffc0003100:	000a8593          	mv	a1,s5
ffffffffc0003104:	00000097          	auipc	ra,0x0
ffffffffc0003108:	8cc080e7          	jalr	-1844(ra) # ffffffffc00029d0 <__umoddi3>
ffffffffc000310c:	02051513          	slli	a0,a0,0x20
ffffffffc0003110:	00a93023          	sd	a0,0(s2)
ffffffffc0003114:	000a0513          	mv	a0,s4
ffffffffc0003118:	000a8593          	mv	a1,s5
ffffffffc000311c:	01c0006f          	j	ffffffffc0003138 <__udivmoddi4+0x734>
ffffffffc0003120:	02055513          	srli	a0,a0,0x20
ffffffffc0003124:	22050063          	beqz	a0,ffffffffc0003344 <__udivmoddi4+0x940>
ffffffffc0003128:	02099513          	slli	a0,s3,0x20
ffffffffc000312c:	02055513          	srli	a0,a0,0x20
ffffffffc0003130:	020c1593          	slli	a1,s8,0x20
ffffffffc0003134:	0205d593          	srli	a1,a1,0x20
ffffffffc0003138:	00000097          	auipc	ra,0x0
ffffffffc000313c:	870080e7          	jalr	-1936(ra) # ffffffffc00029a8 <__udivdi3>
ffffffffc0003140:	00050993          	mv	s3,a0
ffffffffc0003144:	00098513          	mv	a0,s3
ffffffffc0003148:	00013c03          	ld	s8,0(sp)
ffffffffc000314c:	00813b83          	ld	s7,8(sp)
ffffffffc0003150:	01013b03          	ld	s6,16(sp)
ffffffffc0003154:	01813a83          	ld	s5,24(sp)
ffffffffc0003158:	02013a03          	ld	s4,32(sp)
ffffffffc000315c:	02813983          	ld	s3,40(sp)
ffffffffc0003160:	03013903          	ld	s2,48(sp)
ffffffffc0003164:	03813483          	ld	s1,56(sp)
ffffffffc0003168:	04013403          	ld	s0,64(sp)
ffffffffc000316c:	04813083          	ld	ra,72(sp)
ffffffffc0003170:	05010113          	addi	sp,sp,80
ffffffffc0003174:	00008067          	ret
ffffffffc0003178:	00090a63          	beqz	s2,ffffffffc000318c <__udivmoddi4+0x788>
ffffffffc000317c:	0135f633          	and	a2,a1,s3
ffffffffc0003180:	02061613          	slli	a2,a2,0x20
ffffffffc0003184:	02065613          	srli	a2,a2,0x20
ffffffffc0003188:	00c93023          	sd	a2,0(s2)
ffffffffc000318c:	00100613          	li	a2,1
ffffffffc0003190:	fac50ae3          	beq	a0,a2,ffffffffc0003144 <__udivmoddi4+0x740>
ffffffffc0003194:	1a050263          	beqz	a0,ffffffffc0003338 <__udivmoddi4+0x934>
ffffffffc0003198:	fffc4513          	not	a0,s8
ffffffffc000319c:	00b57533          	and	a0,a0,a1
ffffffffc00031a0:	055555b7          	lui	a1,0x5555
ffffffffc00031a4:	5555859b          	addiw	a1,a1,1365
ffffffffc00031a8:	00c59593          	slli	a1,a1,0xc
ffffffffc00031ac:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc00031b0:	00c59593          	slli	a1,a1,0xc
ffffffffc00031b4:	55558593          	addi	a1,a1,1365
ffffffffc00031b8:	00c59593          	slli	a1,a1,0xc
ffffffffc00031bc:	55558593          	addi	a1,a1,1365
ffffffffc00031c0:	00155613          	srli	a2,a0,0x1
ffffffffc00031c4:	00b675b3          	and	a1,a2,a1
ffffffffc00031c8:	40b50533          	sub	a0,a0,a1
ffffffffc00031cc:	033335b7          	lui	a1,0x3333
ffffffffc00031d0:	3335859b          	addiw	a1,a1,819
ffffffffc00031d4:	00c59593          	slli	a1,a1,0xc
ffffffffc00031d8:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc00031dc:	00c59593          	slli	a1,a1,0xc
ffffffffc00031e0:	33358593          	addi	a1,a1,819
ffffffffc00031e4:	00c59593          	slli	a1,a1,0xc
ffffffffc00031e8:	33358593          	addi	a1,a1,819
ffffffffc00031ec:	00b57633          	and	a2,a0,a1
ffffffffc00031f0:	00255513          	srli	a0,a0,0x2
ffffffffc00031f4:	00b57533          	and	a0,a0,a1
ffffffffc00031f8:	00a60533          	add	a0,a2,a0
ffffffffc00031fc:	00455593          	srli	a1,a0,0x4
ffffffffc0003200:	00b50533          	add	a0,a0,a1
ffffffffc0003204:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0003208:	0f15859b          	addiw	a1,a1,241
ffffffffc000320c:	00c59593          	slli	a1,a1,0xc
ffffffffc0003210:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0003214:	00c59593          	slli	a1,a1,0xc
ffffffffc0003218:	0f158593          	addi	a1,a1,241
ffffffffc000321c:	00c59593          	slli	a1,a1,0xc
ffffffffc0003220:	f0f58593          	addi	a1,a1,-241
ffffffffc0003224:	00b57533          	and	a0,a0,a1
ffffffffc0003228:	010105b7          	lui	a1,0x1010
ffffffffc000322c:	1015859b          	addiw	a1,a1,257
ffffffffc0003230:	01059593          	slli	a1,a1,0x10
ffffffffc0003234:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0003238:	01059593          	slli	a1,a1,0x10
ffffffffc000323c:	10158593          	addi	a1,a1,257
ffffffffc0003240:	00000097          	auipc	ra,0x0
ffffffffc0003244:	114080e7          	jalr	276(ra) # ffffffffc0003354 <__muldi3>
ffffffffc0003248:	03855513          	srli	a0,a0,0x38
ffffffffc000324c:	00a9d9b3          	srl	s3,s3,a0
ffffffffc0003250:	ef5ff06f          	j	ffffffffc0003144 <__udivmoddi4+0x740>
ffffffffc0003254:	00090a63          	beqz	s2,ffffffffc0003268 <__udivmoddi4+0x864>
ffffffffc0003258:	01457633          	and	a2,a0,s4
ffffffffc000325c:	02061613          	slli	a2,a2,0x20
ffffffffc0003260:	00b665b3          	or	a1,a2,a1
ffffffffc0003264:	00b93023          	sd	a1,0(s2)
ffffffffc0003268:	0a0a8e63          	beqz	s5,ffffffffc0003324 <__udivmoddi4+0x920>
ffffffffc000326c:	fffac593          	not	a1,s5
ffffffffc0003270:	00a5f533          	and	a0,a1,a0
ffffffffc0003274:	055555b7          	lui	a1,0x5555
ffffffffc0003278:	5555859b          	addiw	a1,a1,1365
ffffffffc000327c:	00c59593          	slli	a1,a1,0xc
ffffffffc0003280:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0003284:	00c59593          	slli	a1,a1,0xc
ffffffffc0003288:	55558593          	addi	a1,a1,1365
ffffffffc000328c:	00c59593          	slli	a1,a1,0xc
ffffffffc0003290:	55558593          	addi	a1,a1,1365
ffffffffc0003294:	00155613          	srli	a2,a0,0x1
ffffffffc0003298:	00b675b3          	and	a1,a2,a1
ffffffffc000329c:	40b50533          	sub	a0,a0,a1
ffffffffc00032a0:	033335b7          	lui	a1,0x3333
ffffffffc00032a4:	3335859b          	addiw	a1,a1,819
ffffffffc00032a8:	00c59593          	slli	a1,a1,0xc
ffffffffc00032ac:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc00032b0:	00c59593          	slli	a1,a1,0xc
ffffffffc00032b4:	33358593          	addi	a1,a1,819
ffffffffc00032b8:	00c59593          	slli	a1,a1,0xc
ffffffffc00032bc:	33358593          	addi	a1,a1,819
ffffffffc00032c0:	00b57633          	and	a2,a0,a1
ffffffffc00032c4:	00255513          	srli	a0,a0,0x2
ffffffffc00032c8:	00b57533          	and	a0,a0,a1
ffffffffc00032cc:	00a60533          	add	a0,a2,a0
ffffffffc00032d0:	00455593          	srli	a1,a0,0x4
ffffffffc00032d4:	00b50533          	add	a0,a0,a1
ffffffffc00032d8:	00f0f5b7          	lui	a1,0xf0f
ffffffffc00032dc:	0f15859b          	addiw	a1,a1,241
ffffffffc00032e0:	00c59593          	slli	a1,a1,0xc
ffffffffc00032e4:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc00032e8:	00c59593          	slli	a1,a1,0xc
ffffffffc00032ec:	0f158593          	addi	a1,a1,241
ffffffffc00032f0:	00c59593          	slli	a1,a1,0xc
ffffffffc00032f4:	f0f58593          	addi	a1,a1,-241
ffffffffc00032f8:	00b57533          	and	a0,a0,a1
ffffffffc00032fc:	010105b7          	lui	a1,0x1010
ffffffffc0003300:	1015859b          	addiw	a1,a1,257
ffffffffc0003304:	01059593          	slli	a1,a1,0x10
ffffffffc0003308:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc000330c:	01059593          	slli	a1,a1,0x10
ffffffffc0003310:	10158593          	addi	a1,a1,257
ffffffffc0003314:	00000097          	auipc	ra,0x0
ffffffffc0003318:	040080e7          	jalr	64(ra) # ffffffffc0003354 <__muldi3>
ffffffffc000331c:	03855513          	srli	a0,a0,0x38
ffffffffc0003320:	0080006f          	j	ffffffffc0003328 <__udivmoddi4+0x924>
ffffffffc0003324:	02000513          	li	a0,32
ffffffffc0003328:	00aa553b          	srlw	a0,s4,a0
ffffffffc000332c:	02051513          	slli	a0,a0,0x20
ffffffffc0003330:	02055993          	srli	s3,a0,0x20
ffffffffc0003334:	e11ff06f          	j	ffffffffc0003144 <__udivmoddi4+0x740>
ffffffffc0003338:	02000513          	li	a0,32
ffffffffc000333c:	00a9d9b3          	srl	s3,s3,a0
ffffffffc0003340:	e05ff06f          	j	ffffffffc0003144 <__udivmoddi4+0x740>
ffffffffc0003344:	ffffd097          	auipc	ra,0xffffd
ffffffffc0003348:	f9c080e7          	jalr	-100(ra) # ffffffffc00002e0 <abort>
ffffffffc000334c:	ffffd097          	auipc	ra,0xffffd
ffffffffc0003350:	f94080e7          	jalr	-108(ra) # ffffffffc00002e0 <abort>

ffffffffc0003354 <__muldi3>:
ffffffffc0003354:	fb010113          	addi	sp,sp,-80
ffffffffc0003358:	04113423          	sd	ra,72(sp)
ffffffffc000335c:	04813023          	sd	s0,64(sp)
ffffffffc0003360:	02913c23          	sd	s1,56(sp)
ffffffffc0003364:	03213823          	sd	s2,48(sp)
ffffffffc0003368:	03313423          	sd	s3,40(sp)
ffffffffc000336c:	03413023          	sd	s4,32(sp)
ffffffffc0003370:	01513c23          	sd	s5,24(sp)
ffffffffc0003374:	01613823          	sd	s6,16(sp)
ffffffffc0003378:	01713423          	sd	s7,8(sp)
ffffffffc000337c:	01813023          	sd	s8,0(sp)
ffffffffc0003380:	05010413          	addi	s0,sp,80
ffffffffc0003384:	00058993          	mv	s3,a1
ffffffffc0003388:	00050913          	mv	s2,a0
ffffffffc000338c:	00010537          	lui	a0,0x10
ffffffffc0003390:	fff5049b          	addiw	s1,a0,-1
ffffffffc0003394:	0095fbb3          	and	s7,a1,s1
ffffffffc0003398:	00997a33          	and	s4,s2,s1
ffffffffc000339c:	000b8513          	mv	a0,s7
ffffffffc00033a0:	000a0593          	mv	a1,s4
ffffffffc00033a4:	00000097          	auipc	ra,0x0
ffffffffc00033a8:	fb0080e7          	jalr	-80(ra) # ffffffffc0003354 <__muldi3>
ffffffffc00033ac:	00050a93          	mv	s5,a0
ffffffffc00033b0:	01095513          	srli	a0,s2,0x10
ffffffffc00033b4:	00957b33          	and	s6,a0,s1
ffffffffc00033b8:	010adc13          	srli	s8,s5,0x10
ffffffffc00033bc:	000b8513          	mv	a0,s7
ffffffffc00033c0:	000b0593          	mv	a1,s6
ffffffffc00033c4:	00000097          	auipc	ra,0x0
ffffffffc00033c8:	f90080e7          	jalr	-112(ra) # ffffffffc0003354 <__muldi3>
ffffffffc00033cc:	00ac0c33          	add	s8,s8,a0
ffffffffc00033d0:	0109d513          	srli	a0,s3,0x10
ffffffffc00033d4:	00957bb3          	and	s7,a0,s1
ffffffffc00033d8:	000b8513          	mv	a0,s7
ffffffffc00033dc:	000b0593          	mv	a1,s6
ffffffffc00033e0:	00000097          	auipc	ra,0x0
ffffffffc00033e4:	f74080e7          	jalr	-140(ra) # ffffffffc0003354 <__muldi3>
ffffffffc00033e8:	00050b13          	mv	s6,a0
ffffffffc00033ec:	02095593          	srli	a1,s2,0x20
ffffffffc00033f0:	00098513          	mv	a0,s3
ffffffffc00033f4:	00000097          	auipc	ra,0x0
ffffffffc00033f8:	f60080e7          	jalr	-160(ra) # ffffffffc0003354 <__muldi3>
ffffffffc00033fc:	00ab0b33          	add	s6,s6,a0
ffffffffc0003400:	0209d513          	srli	a0,s3,0x20
ffffffffc0003404:	00090593          	mv	a1,s2
ffffffffc0003408:	00000097          	auipc	ra,0x0
ffffffffc000340c:	f4c080e7          	jalr	-180(ra) # ffffffffc0003354 <__muldi3>
ffffffffc0003410:	00ab0533          	add	a0,s6,a0
ffffffffc0003414:	010c559b          	srliw	a1,s8,0x10
ffffffffc0003418:	00b50933          	add	s2,a0,a1
ffffffffc000341c:	009c79b3          	and	s3,s8,s1
ffffffffc0003420:	000b8513          	mv	a0,s7
ffffffffc0003424:	000a0593          	mv	a1,s4
ffffffffc0003428:	00000097          	auipc	ra,0x0
ffffffffc000342c:	f2c080e7          	jalr	-212(ra) # ffffffffc0003354 <__muldi3>
ffffffffc0003430:	00a98533          	add	a0,s3,a0
ffffffffc0003434:	0105559b          	srliw	a1,a0,0x10
ffffffffc0003438:	00b905b3          	add	a1,s2,a1
ffffffffc000343c:	009af633          	and	a2,s5,s1
ffffffffc0003440:	01051513          	slli	a0,a0,0x10
ffffffffc0003444:	00c56533          	or	a0,a0,a2
ffffffffc0003448:	02059593          	slli	a1,a1,0x20
ffffffffc000344c:	02051513          	slli	a0,a0,0x20
ffffffffc0003450:	02055513          	srli	a0,a0,0x20
ffffffffc0003454:	00a5e533          	or	a0,a1,a0
ffffffffc0003458:	00013c03          	ld	s8,0(sp)
ffffffffc000345c:	00813b83          	ld	s7,8(sp)
ffffffffc0003460:	01013b03          	ld	s6,16(sp)
ffffffffc0003464:	01813a83          	ld	s5,24(sp)
ffffffffc0003468:	02013a03          	ld	s4,32(sp)
ffffffffc000346c:	02813983          	ld	s3,40(sp)
ffffffffc0003470:	03013903          	ld	s2,48(sp)
ffffffffc0003474:	03813483          	ld	s1,56(sp)
ffffffffc0003478:	04013403          	ld	s0,64(sp)
ffffffffc000347c:	04813083          	ld	ra,72(sp)
ffffffffc0003480:	05010113          	addi	sp,sp,80
ffffffffc0003484:	00008067          	ret
	...
