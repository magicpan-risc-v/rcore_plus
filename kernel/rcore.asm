
target/riscv64/release/rcore:     file format elf64-littleriscv


Disassembly of section .text:

ffffffffc0000000 <_start>:
ffffffffc0000000:	00000013          	nop
ffffffffc0000004:	04100313          	li	t1,65
ffffffffc0000008:	c08003b7          	lui	t2,0xc0800
ffffffffc000000c:	ff83839b          	addiw	t2,t2,-8
ffffffffc0000010:	00638023          	sb	t1,0(t2) # ffffffffc0800000 <ebss+0x5ecf78>
ffffffffc0000014:	04100313          	li	t1,65
ffffffffc0000018:	c08003b7          	lui	t2,0xc0800
ffffffffc000001c:	ff83839b          	addiw	t2,t2,-8
ffffffffc0000020:	00638023          	sb	t1,0(t2) # ffffffffc0800000 <ebss+0x5ecf78>
ffffffffc0000024:	c0012137          	lui	sp,0xc0012
ffffffffc0000028:	00010113          	mv	sp,sp
ffffffffc000002c:	04300313          	li	t1,67
ffffffffc0000030:	c08003b7          	lui	t2,0xc0800
ffffffffc0000034:	ff83839b          	addiw	t2,t2,-8
ffffffffc0000038:	00638023          	sb	t1,0(t2) # ffffffffc0800000 <ebss+0x5ecf78>
ffffffffc000003c:	c000c2b7          	lui	t0,0xc000c
ffffffffc0000040:	ffd00313          	li	t1,-3
ffffffffc0000044:	01e31313          	slli	t1,t1,0x1e
ffffffffc0000048:	406282b3          	sub	t0,t0,t1
ffffffffc000004c:	00c2d293          	srli	t0,t0,0xc
ffffffffc0000050:	fff00313          	li	t1,-1
ffffffffc0000054:	03f31313          	slli	t1,t1,0x3f
ffffffffc0000058:	0062e2b3          	or	t0,t0,t1
ffffffffc000005c:	18029073          	csrw	satp,t0
ffffffffc0000060:	04200313          	li	t1,66
ffffffffc0000064:	002473b7          	lui	t2,0x247
ffffffffc0000068:	8ad3839b          	addiw	t2,t2,-1875
ffffffffc000006c:	00e39393          	slli	t2,t2,0xe
ffffffffc0000070:	c4d38393          	addi	t2,t2,-947 # 246c4d <XLENb+0x246c0d>
ffffffffc0000074:	00c39393          	slli	t2,t2,0xc
ffffffffc0000078:	5e738393          	addi	t2,t2,1511
ffffffffc000007c:	00d39393          	slli	t2,t2,0xd
ffffffffc0000080:	ef038393          	addi	t2,t2,-272
ffffffffc0000084:	00638023          	sb	t1,0(t2)
ffffffffc0000088:	c00012b7          	lui	t0,0xc0001
ffffffffc000008c:	37828293          	addi	t0,t0,888 # ffffffffc0001378 <rust_main>
ffffffffc0000090:	34129073          	csrw	mepc,t0
ffffffffc0000094:	fffff337          	lui	t1,0xfffff
ffffffffc0000098:	00c35313          	srli	t1,t1,0xc
ffffffffc000009c:	30331073          	csrw	mideleg,t1
ffffffffc00000a0:	30231073          	csrw	medeleg,t1
ffffffffc00000a4:	00100313          	li	t1,1
ffffffffc00000a8:	00b31313          	slli	t1,t1,0xb
ffffffffc00000ac:	00230313          	addi	t1,t1,2 # fffffffffffff002 <ebss+0x3fdebf7a>
ffffffffc00000b0:	30031073          	csrw	mstatus,t1
ffffffffc00000b4:	30200073          	mret

ffffffffc00000b8 <_ZN4core3ptr18real_drop_in_place17h00c24f1fb144cbb2E>:
ffffffffc00000b8:	ff010113          	addi	sp,sp,-16 # ffffffffc0011ff0 <bootstack+0x3ff0>
ffffffffc00000bc:	00113423          	sd	ra,8(sp)
ffffffffc00000c0:	00813023          	sd	s0,0(sp)
ffffffffc00000c4:	01010413          	addi	s0,sp,16
ffffffffc00000c8:	00013403          	ld	s0,0(sp)
ffffffffc00000cc:	00813083          	ld	ra,8(sp)
ffffffffc00000d0:	01010113          	addi	sp,sp,16
ffffffffc00000d4:	00008067          	ret

ffffffffc00000d8 <_ZN4core6result13unwrap_failed17h15d22fce372aec20E.llvm.11553907801089238901>:
ffffffffc00000d8:	f8010113          	addi	sp,sp,-128
ffffffffc00000dc:	06113c23          	sd	ra,120(sp)
ffffffffc00000e0:	06813823          	sd	s0,112(sp)
ffffffffc00000e4:	08010413          	addi	s0,sp,128
ffffffffc00000e8:	02b00513          	li	a0,43
ffffffffc00000ec:	f8a43823          	sd	a0,-112(s0)
ffffffffc00000f0:	c0008537          	lui	a0,0xc0008
ffffffffc00000f4:	00050513          	mv	a0,a0
ffffffffc00000f8:	f8a43423          	sd	a0,-120(s0)
ffffffffc00000fc:	c0006537          	lui	a0,0xc0006
ffffffffc0000100:	d1c50513          	addi	a0,a0,-740 # ffffffffc0005d1c <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hbda3aee8c603d282E>
ffffffffc0000104:	fea43023          	sd	a0,-32(s0)
ffffffffc0000108:	fe840513          	addi	a0,s0,-24
ffffffffc000010c:	fca43c23          	sd	a0,-40(s0)
ffffffffc0000110:	c0002537          	lui	a0,0xc0002
ffffffffc0000114:	25450513          	addi	a0,a0,596 # ffffffffc0002254 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5789d9f41831995eE>
ffffffffc0000118:	fca43823          	sd	a0,-48(s0)
ffffffffc000011c:	f8840513          	addi	a0,s0,-120
ffffffffc0000120:	fca43423          	sd	a0,-56(s0)
ffffffffc0000124:	fc840513          	addi	a0,s0,-56
ffffffffc0000128:	faa43c23          	sd	a0,-72(s0)
ffffffffc000012c:	fa043423          	sd	zero,-88(s0)
ffffffffc0000130:	00200513          	li	a0,2
ffffffffc0000134:	fca43023          	sd	a0,-64(s0)
ffffffffc0000138:	faa43023          	sd	a0,-96(s0)
ffffffffc000013c:	c0008537          	lui	a0,0xc0008
ffffffffc0000140:	08850513          	addi	a0,a0,136 # ffffffffc0008088 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.25>
ffffffffc0000144:	f8a43c23          	sd	a0,-104(s0)
ffffffffc0000148:	c0008537          	lui	a0,0xc0008
ffffffffc000014c:	12050593          	addi	a1,a0,288 # ffffffffc0008120 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.27>
ffffffffc0000150:	f9840513          	addi	a0,s0,-104
ffffffffc0000154:	00004097          	auipc	ra,0x4
ffffffffc0000158:	100080e7          	jalr	256(ra) # ffffffffc0004254 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>
ffffffffc000015c:	00001097          	auipc	ra,0x1
ffffffffc0000160:	f34080e7          	jalr	-204(ra) # ffffffffc0001090 <abort>

ffffffffc0000164 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E>:
ffffffffc0000164:	fe010113          	addi	sp,sp,-32
ffffffffc0000168:	00113c23          	sd	ra,24(sp)
ffffffffc000016c:	00813823          	sd	s0,16(sp)
ffffffffc0000170:	02010413          	addi	s0,sp,32
ffffffffc0000174:	fe042623          	sw	zero,-20(s0)
ffffffffc0000178:	0005851b          	sext.w	a0,a1
ffffffffc000017c:	07f00813          	li	a6,127
ffffffffc0000180:	00a86663          	bltu	a6,a0,ffffffffc000018c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x28>
ffffffffc0000184:	00100613          	li	a2,1
ffffffffc0000188:	09c0006f          	j	ffffffffc0000224 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0xc0>
ffffffffc000018c:	7ff00613          	li	a2,2047
ffffffffc0000190:	02a66263          	bltu	a2,a0,ffffffffc00001b4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x50>
ffffffffc0000194:	03f5f513          	andi	a0,a1,63
ffffffffc0000198:	08056513          	ori	a0,a0,128
ffffffffc000019c:	fea406a3          	sb	a0,-19(s0)
ffffffffc00001a0:	00200613          	li	a2,2
ffffffffc00001a4:	0065d513          	srli	a0,a1,0x6
ffffffffc00001a8:	01f57513          	andi	a0,a0,31
ffffffffc00001ac:	fc056593          	ori	a1,a0,-64
ffffffffc00001b0:	0740006f          	j	ffffffffc0000224 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0xc0>
ffffffffc00001b4:	0105d51b          	srliw	a0,a1,0x10
ffffffffc00001b8:	02051a63          	bnez	a0,ffffffffc00001ec <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x88>
ffffffffc00001bc:	03f5f513          	andi	a0,a1,63
ffffffffc00001c0:	08056513          	ori	a0,a0,128
ffffffffc00001c4:	fea40723          	sb	a0,-18(s0)
ffffffffc00001c8:	0065d51b          	srliw	a0,a1,0x6
ffffffffc00001cc:	03f57513          	andi	a0,a0,63
ffffffffc00001d0:	08056513          	ori	a0,a0,128
ffffffffc00001d4:	fea406a3          	sb	a0,-19(s0)
ffffffffc00001d8:	00300613          	li	a2,3
ffffffffc00001dc:	00c5d51b          	srliw	a0,a1,0xc
ffffffffc00001e0:	00f57513          	andi	a0,a0,15
ffffffffc00001e4:	fe056593          	ori	a1,a0,-32
ffffffffc00001e8:	03c0006f          	j	ffffffffc0000224 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0xc0>
ffffffffc00001ec:	03f5f513          	andi	a0,a1,63
ffffffffc00001f0:	08056513          	ori	a0,a0,128
ffffffffc00001f4:	fea407a3          	sb	a0,-17(s0)
ffffffffc00001f8:	0065d51b          	srliw	a0,a1,0x6
ffffffffc00001fc:	03f57513          	andi	a0,a0,63
ffffffffc0000200:	08056513          	ori	a0,a0,128
ffffffffc0000204:	fea40723          	sb	a0,-18(s0)
ffffffffc0000208:	00c5d51b          	srliw	a0,a1,0xc
ffffffffc000020c:	03f57513          	andi	a0,a0,63
ffffffffc0000210:	08056513          	ori	a0,a0,128
ffffffffc0000214:	fea406a3          	sb	a0,-19(s0)
ffffffffc0000218:	00400613          	li	a2,4
ffffffffc000021c:	0125d51b          	srliw	a0,a1,0x12
ffffffffc0000220:	ff056593          	ori	a1,a0,-16
ffffffffc0000224:	feb40623          	sb	a1,-20(s0)
ffffffffc0000228:	fff60613          	addi	a2,a2,-1
ffffffffc000022c:	fec40513          	addi	a0,s0,-20
ffffffffc0000230:	00156693          	ori	a3,a0,1
ffffffffc0000234:	00247537          	lui	a0,0x247
ffffffffc0000238:	8ad5051b          	addiw	a0,a0,-1875
ffffffffc000023c:	00e51513          	slli	a0,a0,0xe
ffffffffc0000240:	c4d50513          	addi	a0,a0,-947 # 246c4d <XLENb+0x246c0d>
ffffffffc0000244:	00c51513          	slli	a0,a0,0xc
ffffffffc0000248:	5e750513          	addi	a0,a0,1511
ffffffffc000024c:	00d51713          	slli	a4,a0,0xd
ffffffffc0000250:	00800793          	li	a5,8
ffffffffc0000254:	02000893          	li	a7,32
ffffffffc0000258:	0ff5f513          	andi	a0,a1,255
ffffffffc000025c:	03051463          	bne	a0,a6,ffffffffc0000284 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x120>
ffffffffc0000260:	0180006f          	j	ffffffffc0000278 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x114>
ffffffffc0000264:	fff60613          	addi	a2,a2,-1
ffffffffc0000268:	0006c583          	lbu	a1,0(a3)
ffffffffc000026c:	00168693          	addi	a3,a3,1
ffffffffc0000270:	0ff5f513          	andi	a0,a1,255
ffffffffc0000274:	01051863          	bne	a0,a6,ffffffffc0000284 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x120>
ffffffffc0000278:	eef70823          	sb	a5,-272(a4)
ffffffffc000027c:	ef170823          	sb	a7,-272(a4)
ffffffffc0000280:	00078593          	mv	a1,a5
ffffffffc0000284:	eeb70823          	sb	a1,-272(a4)
ffffffffc0000288:	fc061ee3          	bnez	a2,ffffffffc0000264 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h08dbba20befc4be4E+0x100>
ffffffffc000028c:	00000513          	li	a0,0
ffffffffc0000290:	01013403          	ld	s0,16(sp)
ffffffffc0000294:	01813083          	ld	ra,24(sp)
ffffffffc0000298:	02010113          	addi	sp,sp,32
ffffffffc000029c:	00008067          	ret

ffffffffc00002a0 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17he03a86b78c9b31f9E>:
ffffffffc00002a0:	fb010113          	addi	sp,sp,-80
ffffffffc00002a4:	04113423          	sd	ra,72(sp)
ffffffffc00002a8:	04813023          	sd	s0,64(sp)
ffffffffc00002ac:	05010413          	addi	s0,sp,80
ffffffffc00002b0:	00053503          	ld	a0,0(a0)
ffffffffc00002b4:	faa43c23          	sd	a0,-72(s0)
ffffffffc00002b8:	0285b503          	ld	a0,40(a1)
ffffffffc00002bc:	fea43423          	sd	a0,-24(s0)
ffffffffc00002c0:	0205b503          	ld	a0,32(a1)
ffffffffc00002c4:	fea43023          	sd	a0,-32(s0)
ffffffffc00002c8:	0185b503          	ld	a0,24(a1)
ffffffffc00002cc:	fca43c23          	sd	a0,-40(s0)
ffffffffc00002d0:	0105b503          	ld	a0,16(a1)
ffffffffc00002d4:	fca43823          	sd	a0,-48(s0)
ffffffffc00002d8:	0085b503          	ld	a0,8(a1)
ffffffffc00002dc:	fca43423          	sd	a0,-56(s0)
ffffffffc00002e0:	0005b503          	ld	a0,0(a1)
ffffffffc00002e4:	fca43023          	sd	a0,-64(s0)
ffffffffc00002e8:	c0008537          	lui	a0,0xc0008
ffffffffc00002ec:	03050593          	addi	a1,a0,48 # ffffffffc0008030 <anon.c6760425b32964bdc9a41a8ad7c4a892.10.llvm.11553907801089238901>
ffffffffc00002f0:	fb840513          	addi	a0,s0,-72
ffffffffc00002f4:	fc040613          	addi	a2,s0,-64
ffffffffc00002f8:	00005097          	auipc	ra,0x5
ffffffffc00002fc:	8f4080e7          	jalr	-1804(ra) # ffffffffc0004bec <_ZN4core3fmt5write17h62151e7ab9dfc071E>
ffffffffc0000300:	04013403          	ld	s0,64(sp)
ffffffffc0000304:	04813083          	ld	ra,72(sp)
ffffffffc0000308:	05010113          	addi	sp,sp,80
ffffffffc000030c:	00008067          	ret

ffffffffc0000310 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha407aa4d27107cf6E>:
ffffffffc0000310:	ff010113          	addi	sp,sp,-16
ffffffffc0000314:	00113423          	sd	ra,8(sp)
ffffffffc0000318:	00813023          	sd	s0,0(sp)
ffffffffc000031c:	01010413          	addi	s0,sp,16
ffffffffc0000320:	04060863          	beqz	a2,ffffffffc0000370 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha407aa4d27107cf6E+0x60>
ffffffffc0000324:	07f00513          	li	a0,127
ffffffffc0000328:	002476b7          	lui	a3,0x247
ffffffffc000032c:	8ad6869b          	addiw	a3,a3,-1875
ffffffffc0000330:	00e69693          	slli	a3,a3,0xe
ffffffffc0000334:	c4d68693          	addi	a3,a3,-947 # 246c4d <XLENb+0x246c0d>
ffffffffc0000338:	00c69693          	slli	a3,a3,0xc
ffffffffc000033c:	5e768693          	addi	a3,a3,1511
ffffffffc0000340:	00d69693          	slli	a3,a3,0xd
ffffffffc0000344:	00800793          	li	a5,8
ffffffffc0000348:	02000813          	li	a6,32
ffffffffc000034c:	0005c703          	lbu	a4,0(a1)
ffffffffc0000350:	00a71863          	bne	a4,a0,ffffffffc0000360 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha407aa4d27107cf6E+0x50>
ffffffffc0000354:	eef68823          	sb	a5,-272(a3)
ffffffffc0000358:	ef068823          	sb	a6,-272(a3)
ffffffffc000035c:	00078713          	mv	a4,a5
ffffffffc0000360:	eee68823          	sb	a4,-272(a3)
ffffffffc0000364:	00158593          	addi	a1,a1,1
ffffffffc0000368:	fff60613          	addi	a2,a2,-1
ffffffffc000036c:	fe0610e3          	bnez	a2,ffffffffc000034c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17ha407aa4d27107cf6E+0x3c>
ffffffffc0000370:	00000513          	li	a0,0
ffffffffc0000374:	00013403          	ld	s0,0(sp)
ffffffffc0000378:	00813083          	ld	ra,8(sp)
ffffffffc000037c:	01010113          	addi	sp,sp,16
ffffffffc0000380:	00008067          	ret

ffffffffc0000384 <_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h328d42896557982eE>:
ffffffffc0000384:	fc010113          	addi	sp,sp,-64
ffffffffc0000388:	02113c23          	sd	ra,56(sp)
ffffffffc000038c:	02813823          	sd	s0,48(sp)
ffffffffc0000390:	02913423          	sd	s1,40(sp)
ffffffffc0000394:	03213023          	sd	s2,32(sp)
ffffffffc0000398:	04010413          	addi	s0,sp,64
ffffffffc000039c:	00050493          	mv	s1,a0
ffffffffc00003a0:	00053503          	ld	a0,0(a0)
ffffffffc00003a4:	00100613          	li	a2,1
ffffffffc00003a8:	04c51463          	bne	a0,a2,ffffffffc00003f0 <_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h328d42896557982eE+0x6c>
ffffffffc00003ac:	c0008537          	lui	a0,0xc0008
ffffffffc00003b0:	14050613          	addi	a2,a0,320 # ffffffffc0008140 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.27+0x20>
ffffffffc00003b4:	fc040913          	addi	s2,s0,-64
ffffffffc00003b8:	00400693          	li	a3,4
ffffffffc00003bc:	00090513          	mv	a0,s2
ffffffffc00003c0:	00005097          	auipc	ra,0x5
ffffffffc00003c4:	42c080e7          	jalr	1068(ra) # ffffffffc00057ec <_ZN4core3fmt9Formatter11debug_tuple17hf6f268c97d9e3639E>
ffffffffc00003c8:	00848513          	addi	a0,s1,8
ffffffffc00003cc:	fca43c23          	sd	a0,-40(s0)
ffffffffc00003d0:	c0008537          	lui	a0,0xc0008
ffffffffc00003d4:	06050613          	addi	a2,a0,96 # ffffffffc0008060 <anon.c6760425b32964bdc9a41a8ad7c4a892.12.llvm.11553907801089238901>
ffffffffc00003d8:	fd840593          	addi	a1,s0,-40
ffffffffc00003dc:	00090513          	mv	a0,s2
ffffffffc00003e0:	00006097          	auipc	ra,0x6
ffffffffc00003e4:	edc080e7          	jalr	-292(ra) # ffffffffc00062bc <_ZN4core3fmt8builders10DebugTuple5field17h65f0aa5c6fd1e0b8E>
ffffffffc00003e8:	00090513          	mv	a0,s2
ffffffffc00003ec:	0240006f          	j	ffffffffc0000410 <_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h328d42896557982eE+0x8c>
ffffffffc00003f0:	c0008537          	lui	a0,0xc0008
ffffffffc00003f4:	14850613          	addi	a2,a0,328 # ffffffffc0008148 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.27+0x28>
ffffffffc00003f8:	fc040493          	addi	s1,s0,-64
ffffffffc00003fc:	00400693          	li	a3,4
ffffffffc0000400:	00048513          	mv	a0,s1
ffffffffc0000404:	00005097          	auipc	ra,0x5
ffffffffc0000408:	3e8080e7          	jalr	1000(ra) # ffffffffc00057ec <_ZN4core3fmt9Formatter11debug_tuple17hf6f268c97d9e3639E>
ffffffffc000040c:	00048513          	mv	a0,s1
ffffffffc0000410:	00006097          	auipc	ra,0x6
ffffffffc0000414:	080080e7          	jalr	128(ra) # ffffffffc0006490 <_ZN4core3fmt8builders10DebugTuple6finish17h5b52b3ffa0df14d6E>
ffffffffc0000418:	02013903          	ld	s2,32(sp)
ffffffffc000041c:	02813483          	ld	s1,40(sp)
ffffffffc0000420:	03013403          	ld	s0,48(sp)
ffffffffc0000424:	03813083          	ld	ra,56(sp)
ffffffffc0000428:	04010113          	addi	sp,sp,64
ffffffffc000042c:	00008067          	ret

ffffffffc0000430 <rust_begin_unwind>:
ffffffffc0000430:	fa010113          	addi	sp,sp,-96
ffffffffc0000434:	04113c23          	sd	ra,88(sp)
ffffffffc0000438:	04813823          	sd	s0,80(sp)
ffffffffc000043c:	06010413          	addi	s0,sp,96
ffffffffc0000440:	faa43423          	sd	a0,-88(s0)
ffffffffc0000444:	c0213537          	lui	a0,0xc0213
ffffffffc0000448:	08050513          	addi	a0,a0,128 # ffffffffc0213080 <_ZN3log20MAX_LOG_LEVEL_FILTER17hc28b96925e30fb0cE>
ffffffffc000044c:	00000593          	li	a1,0
ffffffffc0000450:	00001097          	auipc	ra,0x1
ffffffffc0000454:	d28080e7          	jalr	-728(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc0000458:	04050863          	beqz	a0,ffffffffc00004a8 <rust_begin_unwind+0x78>
ffffffffc000045c:	c0002537          	lui	a0,0xc0002
ffffffffc0000460:	28450513          	addi	a0,a0,644 # ffffffffc0002284 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h83c67def041aad94E>
ffffffffc0000464:	fea43423          	sd	a0,-24(s0)
ffffffffc0000468:	fa840513          	addi	a0,s0,-88
ffffffffc000046c:	fea43023          	sd	a0,-32(s0)
ffffffffc0000470:	fe040513          	addi	a0,s0,-32
ffffffffc0000474:	fca43823          	sd	a0,-48(s0)
ffffffffc0000478:	fc043023          	sd	zero,-64(s0)
ffffffffc000047c:	c0008537          	lui	a0,0xc0008
ffffffffc0000480:	15050513          	addi	a0,a0,336 # ffffffffc0008150 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.55>
ffffffffc0000484:	faa43823          	sd	a0,-80(s0)
ffffffffc0000488:	00100593          	li	a1,1
ffffffffc000048c:	fcb43c23          	sd	a1,-40(s0)
ffffffffc0000490:	fab43c23          	sd	a1,-72(s0)
ffffffffc0000494:	c0008537          	lui	a0,0xc0008
ffffffffc0000498:	17850613          	addi	a2,a0,376 # ffffffffc0008178 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.58>
ffffffffc000049c:	fb040513          	addi	a0,s0,-80
ffffffffc00004a0:	00003097          	auipc	ra,0x3
ffffffffc00004a4:	c64080e7          	jalr	-924(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc00004a8:	00002097          	auipc	ra,0x2
ffffffffc00004ac:	a70080e7          	jalr	-1424(ra) # ffffffffc0001f18 <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E>
ffffffffc00004b0:	10500073          	wfi
ffffffffc00004b4:	ffdff06f          	j	ffffffffc00004b0 <rust_begin_unwind+0x80>

ffffffffc00004b8 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E>:
ffffffffc00004b8:	f0010113          	addi	sp,sp,-256
ffffffffc00004bc:	0e113c23          	sd	ra,248(sp)
ffffffffc00004c0:	0e813823          	sd	s0,240(sp)
ffffffffc00004c4:	0e913423          	sd	s1,232(sp)
ffffffffc00004c8:	0f213023          	sd	s2,224(sp)
ffffffffc00004cc:	0d313c23          	sd	s3,216(sp)
ffffffffc00004d0:	0d413823          	sd	s4,208(sp)
ffffffffc00004d4:	0d513423          	sd	s5,200(sp)
ffffffffc00004d8:	0d613023          	sd	s6,192(sp)
ffffffffc00004dc:	0b713c23          	sd	s7,184(sp)
ffffffffc00004e0:	0b813823          	sd	s8,176(sp)
ffffffffc00004e4:	0b913423          	sd	s9,168(sp)
ffffffffc00004e8:	10010413          	addi	s0,sp,256
ffffffffc00004ec:	00040537          	lui	a0,0x40
ffffffffc00004f0:	10052073          	csrs	sstatus,a0
ffffffffc00004f4:	c0213537          	lui	a0,0xc0213
ffffffffc00004f8:	08050b13          	addi	s6,a0,128 # ffffffffc0213080 <_ZN3log20MAX_LOG_LEVEL_FILTER17hc28b96925e30fb0cE>
ffffffffc00004fc:	000b0513          	mv	a0,s6
ffffffffc0000500:	00000593          	li	a1,0
ffffffffc0000504:	00001097          	auipc	ra,0x1
ffffffffc0000508:	c74080e7          	jalr	-908(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc000050c:	00300913          	li	s2,3
ffffffffc0000510:	05256263          	bltu	a0,s2,ffffffffc0000554 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x9c>
ffffffffc0000514:	f2043823          	sd	zero,-208(s0)
ffffffffc0000518:	f0043c23          	sd	zero,-232(s0)
ffffffffc000051c:	00100513          	li	a0,1
ffffffffc0000520:	f0a43823          	sd	a0,-240(s0)
ffffffffc0000524:	c0008537          	lui	a0,0xc0008
ffffffffc0000528:	08050513          	addi	a0,a0,128 # ffffffffc0008080 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.24>
ffffffffc000052c:	f2a43423          	sd	a0,-216(s0)
ffffffffc0000530:	c0008537          	lui	a0,0xc0008
ffffffffc0000534:	1c050513          	addi	a0,a0,448 # ffffffffc00081c0 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.71>
ffffffffc0000538:	f0a43423          	sd	a0,-248(s0)
ffffffffc000053c:	c0008537          	lui	a0,0xc0008
ffffffffc0000540:	20050613          	addi	a2,a0,512 # ffffffffc0008200 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.74>
ffffffffc0000544:	f0840513          	addi	a0,s0,-248
ffffffffc0000548:	00300593          	li	a1,3
ffffffffc000054c:	00003097          	auipc	ra,0x3
ffffffffc0000550:	bb8080e7          	jalr	-1096(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc0000554:	c0212537          	lui	a0,0xc0212
ffffffffc0000558:	00850493          	addi	s1,a0,8 # ffffffffc0212008 <_ZN74_$LT$rcore..memory..FRAME_ALLOCATOR$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h9a13dc4f760a50f8E.llvm.6093716542043648081>
ffffffffc000055c:	00500593          	li	a1,5
ffffffffc0000560:	00048513          	mv	a0,s1
ffffffffc0000564:	00001097          	auipc	ra,0x1
ffffffffc0000568:	c14080e7          	jalr	-1004(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc000056c:	52050063          	beqz	a0,ffffffffc0000a8c <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x5d4>
ffffffffc0000570:	00100a13          	li	s4,1
ffffffffc0000574:	00500993          	li	s3,5
ffffffffc0000578:	01451c63          	bne	a0,s4,ffffffffc0000590 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0xd8>
ffffffffc000057c:	00048513          	mv	a0,s1
ffffffffc0000580:	00098593          	mv	a1,s3
ffffffffc0000584:	00001097          	auipc	ra,0x1
ffffffffc0000588:	bf4080e7          	jalr	-1036(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc000058c:	ff4508e3          	beq	a0,s4,ffffffffc000057c <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0xc4>
ffffffffc0000590:	00200593          	li	a1,2
ffffffffc0000594:	58b51263          	bne	a0,a1,ffffffffc0000b18 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x660>
ffffffffc0000598:	0084b503          	ld	a0,8(s1)
ffffffffc000059c:	01450663          	beq	a0,s4,ffffffffc00005a8 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0xf0>
ffffffffc00005a0:	00000993          	li	s3,0
ffffffffc00005a4:	0080006f          	j	ffffffffc00005ac <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0xf4>
ffffffffc00005a8:	01048993          	addi	s3,s1,16
ffffffffc00005ac:	00214537          	lui	a0,0x214
ffffffffc00005b0:	08850513          	addi	a0,a0,136 # 214088 <XLENb+0x214048>
ffffffffc00005b4:	00c55a93          	srli	s5,a0,0xc
ffffffffc00005b8:	00098513          	mv	a0,s3
ffffffffc00005bc:	00001097          	auipc	ra,0x1
ffffffffc00005c0:	30c080e7          	jalr	780(ra) # ffffffffc00018c8 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3ed0991f818da4a7E>
ffffffffc00005c4:	00050a13          	mv	s4,a0
ffffffffc00005c8:	00058993          	mv	s3,a1
ffffffffc00005cc:	f5543823          	sd	s5,-176(s0)
ffffffffc00005d0:	60000493          	li	s1,1536
ffffffffc00005d4:	f8943423          	sd	s1,-120(s0)
ffffffffc00005d8:	000b0513          	mv	a0,s6
ffffffffc00005dc:	00000593          	li	a1,0
ffffffffc00005e0:	00001097          	auipc	ra,0x1
ffffffffc00005e4:	b98080e7          	jalr	-1128(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc00005e8:	09256063          	bltu	a0,s2,ffffffffc0000668 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x1b0>
ffffffffc00005ec:	c0008537          	lui	a0,0xc0008
ffffffffc00005f0:	3b850513          	addi	a0,a0,952 # ffffffffc00083b8 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.84+0x48>
ffffffffc00005f4:	f2a43423          	sd	a0,-216(s0)
ffffffffc00005f8:	f8840513          	addi	a0,s0,-120
ffffffffc00005fc:	f0a43c23          	sd	a0,-232(s0)
ffffffffc0000600:	c0003537          	lui	a0,0xc0003
ffffffffc0000604:	3a050513          	addi	a0,a0,928 # ffffffffc00033a0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h4e3d261f6c3eb358E>
ffffffffc0000608:	f2a43823          	sd	a0,-208(s0)
ffffffffc000060c:	f2a43023          	sd	a0,-224(s0)
ffffffffc0000610:	f0a43823          	sd	a0,-240(s0)
ffffffffc0000614:	f5040513          	addi	a0,s0,-176
ffffffffc0000618:	f0a43423          	sd	a0,-248(s0)
ffffffffc000061c:	f0840513          	addi	a0,s0,-248
ffffffffc0000620:	f6a43c23          	sd	a0,-136(s0)
ffffffffc0000624:	c0008537          	lui	a0,0xc0008
ffffffffc0000628:	3c050513          	addi	a0,a0,960 # ffffffffc00083c0 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.86>
ffffffffc000062c:	f6a43423          	sd	a0,-152(s0)
ffffffffc0000630:	c0008537          	lui	a0,0xc0008
ffffffffc0000634:	37050513          	addi	a0,a0,880 # ffffffffc0008370 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.84>
ffffffffc0000638:	f4a43c23          	sd	a0,-168(s0)
ffffffffc000063c:	f9243023          	sd	s2,-128(s0)
ffffffffc0000640:	f7243823          	sd	s2,-144(s0)
ffffffffc0000644:	f7243023          	sd	s2,-160(s0)
ffffffffc0000648:	c0008537          	lui	a0,0xc0008
ffffffffc000064c:	48050613          	addi	a2,a0,1152 # ffffffffc0008480 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.87>
ffffffffc0000650:	f5840513          	addi	a0,s0,-168
ffffffffc0000654:	00090593          	mv	a1,s2
ffffffffc0000658:	00003097          	auipc	ra,0x3
ffffffffc000065c:	aac080e7          	jalr	-1364(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc0000660:	f8843483          	ld	s1,-120(s0)
ffffffffc0000664:	f5043a83          	ld	s5,-176(s0)
ffffffffc0000668:	4e9af263          	bgeu	s5,s1,ffffffffc0000b4c <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x694>
ffffffffc000066c:	014a0513          	addi	a0,s4,20
ffffffffc0000670:	000a8593          	mv	a1,s5
ffffffffc0000674:	00048613          	mv	a2,s1
ffffffffc0000678:	00001097          	auipc	ra,0x1
ffffffffc000067c:	628080e7          	jalr	1576(ra) # ffffffffc0001ca0 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE>
ffffffffc0000680:	000b0513          	mv	a0,s6
ffffffffc0000684:	00000593          	li	a1,0
ffffffffc0000688:	00001097          	auipc	ra,0x1
ffffffffc000068c:	af0080e7          	jalr	-1296(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc0000690:	05256263          	bltu	a0,s2,ffffffffc00006d4 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x21c>
ffffffffc0000694:	f2043823          	sd	zero,-208(s0)
ffffffffc0000698:	f0043c23          	sd	zero,-232(s0)
ffffffffc000069c:	00100513          	li	a0,1
ffffffffc00006a0:	f0a43823          	sd	a0,-240(s0)
ffffffffc00006a4:	c0008537          	lui	a0,0xc0008
ffffffffc00006a8:	08050513          	addi	a0,a0,128 # ffffffffc0008080 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.24>
ffffffffc00006ac:	f2a43423          	sd	a0,-216(s0)
ffffffffc00006b0:	c0008537          	lui	a0,0xc0008
ffffffffc00006b4:	30050513          	addi	a0,a0,768 # ffffffffc0008300 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.79>
ffffffffc00006b8:	f0a43423          	sd	a0,-248(s0)
ffffffffc00006bc:	c0008537          	lui	a0,0xc0008
ffffffffc00006c0:	31050613          	addi	a2,a0,784 # ffffffffc0008310 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.80>
ffffffffc00006c4:	f0840513          	addi	a0,s0,-248
ffffffffc00006c8:	00300593          	li	a1,3
ffffffffc00006cc:	00003097          	auipc	ra,0x3
ffffffffc00006d0:	a38080e7          	jalr	-1480(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc00006d4:	010a0513          	addi	a0,s4,16
ffffffffc00006d8:	00300913          	li	s2,3
ffffffffc00006dc:	00000593          	li	a1,0
ffffffffc00006e0:	00090613          	mv	a2,s2
ffffffffc00006e4:	00001097          	auipc	ra,0x1
ffffffffc00006e8:	a30080e7          	jalr	-1488(ra) # ffffffffc0001114 <__atomic_store_4>
ffffffffc00006ec:	00098663          	beqz	s3,ffffffffc00006f8 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x240>
ffffffffc00006f0:	00200513          	li	a0,2
ffffffffc00006f4:	10052073          	csrs	sstatus,a0
ffffffffc00006f8:	000b0513          	mv	a0,s6
ffffffffc00006fc:	00000593          	li	a1,0
ffffffffc0000700:	00001097          	auipc	ra,0x1
ffffffffc0000704:	a78080e7          	jalr	-1416(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc0000708:	05256263          	bltu	a0,s2,ffffffffc000074c <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x294>
ffffffffc000070c:	f2043823          	sd	zero,-208(s0)
ffffffffc0000710:	f0043c23          	sd	zero,-232(s0)
ffffffffc0000714:	00100513          	li	a0,1
ffffffffc0000718:	f0a43823          	sd	a0,-240(s0)
ffffffffc000071c:	c0008537          	lui	a0,0xc0008
ffffffffc0000720:	08050513          	addi	a0,a0,128 # ffffffffc0008080 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.24>
ffffffffc0000724:	f2a43423          	sd	a0,-216(s0)
ffffffffc0000728:	c0008537          	lui	a0,0xc0008
ffffffffc000072c:	1c050513          	addi	a0,a0,448 # ffffffffc00081c0 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.71>
ffffffffc0000730:	f0a43423          	sd	a0,-248(s0)
ffffffffc0000734:	c0008537          	lui	a0,0xc0008
ffffffffc0000738:	23850613          	addi	a2,a0,568 # ffffffffc0008238 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.75>
ffffffffc000073c:	f0840513          	addi	a0,s0,-248
ffffffffc0000740:	00300593          	li	a1,3
ffffffffc0000744:	00003097          	auipc	ra,0x3
ffffffffc0000748:	9c0080e7          	jalr	-1600(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc000074c:	c000d537          	lui	a0,0xc000d
ffffffffc0000750:	00050513          	mv	a0,a0
ffffffffc0000754:	00003097          	auipc	ra,0x3
ffffffffc0000758:	8d0080e7          	jalr	-1840(ra) # ffffffffc0003024 <_ZN88_$LT$buddy_system_allocator..LockedHeapWithRescue$u20$as$u20$core..ops..deref..Deref$GT$5deref17h257e5cbacf2e8710E>
ffffffffc000075c:	00050493          	mv	s1,a0
ffffffffc0000760:	f0042423          	sw	zero,-248(s0)
ffffffffc0000764:	f0840a93          	addi	s5,s0,-248
ffffffffc0000768:	00100993          	li	s3,1
ffffffffc000076c:	00200a13          	li	s4,2
ffffffffc0000770:	000a8593          	mv	a1,s5
ffffffffc0000774:	00098613          	mv	a2,s3
ffffffffc0000778:	000a0693          	mv	a3,s4
ffffffffc000077c:	000a0713          	mv	a4,s4
ffffffffc0000780:	00001097          	auipc	ra,0x1
ffffffffc0000784:	ab8080e7          	jalr	-1352(ra) # ffffffffc0001238 <__atomic_compare_exchange_4>
ffffffffc0000788:	04051863          	bnez	a0,ffffffffc00007d8 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x320>
ffffffffc000078c:	f0840b93          	addi	s7,s0,-248
ffffffffc0000790:	00100c13          	li	s8,1
ffffffffc0000794:	00200c93          	li	s9,2
ffffffffc0000798:	00048513          	mv	a0,s1
ffffffffc000079c:	00000593          	li	a1,0
ffffffffc00007a0:	00001097          	auipc	ra,0x1
ffffffffc00007a4:	918080e7          	jalr	-1768(ra) # ffffffffc00010b8 <__atomic_load_4>
ffffffffc00007a8:	02051513          	slli	a0,a0,0x20
ffffffffc00007ac:	02055513          	srli	a0,a0,0x20
ffffffffc00007b0:	fe0514e3          	bnez	a0,ffffffffc0000798 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x2e0>
ffffffffc00007b4:	f0042423          	sw	zero,-248(s0)
ffffffffc00007b8:	00048513          	mv	a0,s1
ffffffffc00007bc:	000b8593          	mv	a1,s7
ffffffffc00007c0:	000c0613          	mv	a2,s8
ffffffffc00007c4:	000c8693          	mv	a3,s9
ffffffffc00007c8:	000c8713          	mv	a4,s9
ffffffffc00007cc:	00001097          	auipc	ra,0x1
ffffffffc00007d0:	a6c080e7          	jalr	-1428(ra) # ffffffffc0001238 <__atomic_compare_exchange_4>
ffffffffc00007d4:	fc0502e3          	beqz	a0,ffffffffc0000798 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x2e0>
ffffffffc00007d8:	c0012537          	lui	a0,0xc0012
ffffffffc00007dc:	00850593          	addi	a1,a0,8 # ffffffffc0012008 <_ZN5rcore6memory9init_heap4HEAP17h146fa2a0f3aa17eaE.llvm.6093716542043648081>
ffffffffc00007e0:	00848513          	addi	a0,s1,8
ffffffffc00007e4:	00200637          	lui	a2,0x200
ffffffffc00007e8:	00002097          	auipc	ra,0x2
ffffffffc00007ec:	5cc080e7          	jalr	1484(ra) # ffffffffc0002db4 <_ZN22buddy_system_allocator4Heap4init17h414e0e4935858a51E>
ffffffffc00007f0:	00048513          	mv	a0,s1
ffffffffc00007f4:	00000593          	li	a1,0
ffffffffc00007f8:	00090613          	mv	a2,s2
ffffffffc00007fc:	00001097          	auipc	ra,0x1
ffffffffc0000800:	918080e7          	jalr	-1768(ra) # ffffffffc0001114 <__atomic_store_4>
ffffffffc0000804:	000b0513          	mv	a0,s6
ffffffffc0000808:	00000593          	li	a1,0
ffffffffc000080c:	00001097          	auipc	ra,0x1
ffffffffc0000810:	96c080e7          	jalr	-1684(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc0000814:	05256063          	bltu	a0,s2,ffffffffc0000854 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x39c>
ffffffffc0000818:	f2043823          	sd	zero,-208(s0)
ffffffffc000081c:	f0043c23          	sd	zero,-232(s0)
ffffffffc0000820:	f1343823          	sd	s3,-240(s0)
ffffffffc0000824:	c0008537          	lui	a0,0xc0008
ffffffffc0000828:	6d850513          	addi	a0,a0,1752 # ffffffffc00086d8 <anon.588f341f3358d2da0ea5e87fa47b4285.49.llvm.6093716542043648081>
ffffffffc000082c:	f2a43423          	sd	a0,-216(s0)
ffffffffc0000830:	c0008537          	lui	a0,0xc0008
ffffffffc0000834:	79050513          	addi	a0,a0,1936 # ffffffffc0008790 <anon.588f341f3358d2da0ea5e87fa47b4285.62.llvm.6093716542043648081>
ffffffffc0000838:	f0a43423          	sd	a0,-248(s0)
ffffffffc000083c:	c0008537          	lui	a0,0xc0008
ffffffffc0000840:	7a050613          	addi	a2,a0,1952 # ffffffffc00087a0 <anon.588f341f3358d2da0ea5e87fa47b4285.63.llvm.6093716542043648081>
ffffffffc0000844:	f0840513          	addi	a0,s0,-248
ffffffffc0000848:	00300593          	li	a1,3
ffffffffc000084c:	00003097          	auipc	ra,0x3
ffffffffc0000850:	8b8080e7          	jalr	-1864(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc0000854:	000b0513          	mv	a0,s6
ffffffffc0000858:	00000593          	li	a1,0
ffffffffc000085c:	00001097          	auipc	ra,0x1
ffffffffc0000860:	91c080e7          	jalr	-1764(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc0000864:	05256063          	bltu	a0,s2,ffffffffc00008a4 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x3ec>
ffffffffc0000868:	f2043823          	sd	zero,-208(s0)
ffffffffc000086c:	f0043c23          	sd	zero,-232(s0)
ffffffffc0000870:	f1343823          	sd	s3,-240(s0)
ffffffffc0000874:	c0008537          	lui	a0,0xc0008
ffffffffc0000878:	08050513          	addi	a0,a0,128 # ffffffffc0008080 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.24>
ffffffffc000087c:	f2a43423          	sd	a0,-216(s0)
ffffffffc0000880:	c0008537          	lui	a0,0xc0008
ffffffffc0000884:	1c050513          	addi	a0,a0,448 # ffffffffc00081c0 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.71>
ffffffffc0000888:	f0a43423          	sd	a0,-248(s0)
ffffffffc000088c:	c0008537          	lui	a0,0xc0008
ffffffffc0000890:	27050613          	addi	a2,a0,624 # ffffffffc0008270 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.76>
ffffffffc0000894:	f0840513          	addi	a0,s0,-248
ffffffffc0000898:	00300593          	li	a1,3
ffffffffc000089c:	00003097          	auipc	ra,0x3
ffffffffc00008a0:	868080e7          	jalr	-1944(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc00008a4:	f5840513          	addi	a0,s0,-168
ffffffffc00008a8:	00002097          	auipc	ra,0x2
ffffffffc00008ac:	824080e7          	jalr	-2012(ra) # ffffffffc00020cc <_ZN12rcore_memory6paging12PageTableExt3new17h777efebd4c6db36fE>
ffffffffc00008b0:	00800513          	li	a0,8
ffffffffc00008b4:	f0a43423          	sd	a0,-248(s0)
ffffffffc00008b8:	f5843503          	ld	a0,-168(s0)
ffffffffc00008bc:	f2a43023          	sd	a0,-224(s0)
ffffffffc00008c0:	f6043503          	ld	a0,-160(s0)
ffffffffc00008c4:	f2a43423          	sd	a0,-216(s0)
ffffffffc00008c8:	f6843503          	ld	a0,-152(s0)
ffffffffc00008cc:	f2a43823          	sd	a0,-208(s0)
ffffffffc00008d0:	f7043503          	ld	a0,-144(s0)
ffffffffc00008d4:	f2a43c23          	sd	a0,-200(s0)
ffffffffc00008d8:	f7843503          	ld	a0,-136(s0)
ffffffffc00008dc:	f4a43023          	sd	a0,-192(s0)
ffffffffc00008e0:	f0043c23          	sd	zero,-232(s0)
ffffffffc00008e4:	f0043823          	sd	zero,-240(s0)
ffffffffc00008e8:	028a8a93          	addi	s5,s5,40
ffffffffc00008ec:	18002c73          	csrr	s8,satp
ffffffffc00008f0:	f5843423          	sd	s8,-184(s0)
ffffffffc00008f4:	000a8513          	mv	a0,s5
ffffffffc00008f8:	00002097          	auipc	ra,0x2
ffffffffc00008fc:	d20080e7          	jalr	-736(ra) # ffffffffc0002618 <_ZN5riscv4addr4Page6number17h57fcf24439548a2eE>
ffffffffc0000900:	fff00593          	li	a1,-1
ffffffffc0000904:	03f59b93          	slli	s7,a1,0x3f
ffffffffc0000908:	017564b3          	or	s1,a0,s7
ffffffffc000090c:	f4943823          	sd	s1,-176(s0)
ffffffffc0000910:	000b0513          	mv	a0,s6
ffffffffc0000914:	00000593          	li	a1,0
ffffffffc0000918:	00001097          	auipc	ra,0x1
ffffffffc000091c:	860080e7          	jalr	-1952(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc0000920:	00400593          	li	a1,4
ffffffffc0000924:	06b56863          	bltu	a0,a1,ffffffffc0000994 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x4dc>
ffffffffc0000928:	f5040513          	addi	a0,s0,-176
ffffffffc000092c:	f8a43c23          	sd	a0,-104(s0)
ffffffffc0000930:	c0002537          	lui	a0,0xc0002
ffffffffc0000934:	2d450513          	addi	a0,a0,724 # ffffffffc00022d4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE.llvm.10968381280838950506>
ffffffffc0000938:	faa43023          	sd	a0,-96(s0)
ffffffffc000093c:	f8a43823          	sd	a0,-112(s0)
ffffffffc0000940:	f4840513          	addi	a0,s0,-184
ffffffffc0000944:	f8a43423          	sd	a0,-120(s0)
ffffffffc0000948:	f8840513          	addi	a0,s0,-120
ffffffffc000094c:	f6a43c23          	sd	a0,-136(s0)
ffffffffc0000950:	c0009537          	lui	a0,0xc0009
ffffffffc0000954:	f3050513          	addi	a0,a0,-208 # ffffffffc0008f30 <anon.e5ba4097e33661d81c44c33351c888a2.12.llvm.10968381280838950506>
ffffffffc0000958:	f6a43423          	sd	a0,-152(s0)
ffffffffc000095c:	f9443023          	sd	s4,-128(s0)
ffffffffc0000960:	f7443823          	sd	s4,-144(s0)
ffffffffc0000964:	f7443023          	sd	s4,-160(s0)
ffffffffc0000968:	c0009537          	lui	a0,0xc0009
ffffffffc000096c:	f1050513          	addi	a0,a0,-240 # ffffffffc0008f10 <anon.e5ba4097e33661d81c44c33351c888a2.11.llvm.10968381280838950506>
ffffffffc0000970:	f4a43c23          	sd	a0,-168(s0)
ffffffffc0000974:	c0009537          	lui	a0,0xc0009
ffffffffc0000978:	ff850613          	addi	a2,a0,-8 # ffffffffc0008ff8 <anon.e5ba4097e33661d81c44c33351c888a2.17.llvm.10968381280838950506>
ffffffffc000097c:	f5840513          	addi	a0,s0,-168
ffffffffc0000980:	00400593          	li	a1,4
ffffffffc0000984:	00002097          	auipc	ra,0x2
ffffffffc0000988:	780080e7          	jalr	1920(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc000098c:	f5043483          	ld	s1,-176(s0)
ffffffffc0000990:	f4843c03          	ld	s8,-184(s0)
ffffffffc0000994:	009c0663          	beq	s8,s1,ffffffffc00009a0 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x4e8>
ffffffffc0000998:	18049073          	csrw	satp,s1
ffffffffc000099c:	12000073          	sfence.vma
ffffffffc00009a0:	000a8513          	mv	a0,s5
ffffffffc00009a4:	00002097          	auipc	ra,0x2
ffffffffc00009a8:	c74080e7          	jalr	-908(ra) # ffffffffc0002618 <_ZN5riscv4addr4Page6number17h57fcf24439548a2eE>
ffffffffc00009ac:	01756533          	or	a0,a0,s7
ffffffffc00009b0:	c00125b7          	lui	a1,0xc0012
ffffffffc00009b4:	00a5b023          	sd	a0,0(a1) # ffffffffc0012000 <bootstacktop>
ffffffffc00009b8:	000b0513          	mv	a0,s6
ffffffffc00009bc:	00000593          	li	a1,0
ffffffffc00009c0:	00000097          	auipc	ra,0x0
ffffffffc00009c4:	7b8080e7          	jalr	1976(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc00009c8:	05256063          	bltu	a0,s2,ffffffffc0000a08 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x550>
ffffffffc00009cc:	f8043023          	sd	zero,-128(s0)
ffffffffc00009d0:	f6043423          	sd	zero,-152(s0)
ffffffffc00009d4:	f7343023          	sd	s3,-160(s0)
ffffffffc00009d8:	c0008537          	lui	a0,0xc0008
ffffffffc00009dc:	08050513          	addi	a0,a0,128 # ffffffffc0008080 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.24>
ffffffffc00009e0:	f6a43c23          	sd	a0,-136(s0)
ffffffffc00009e4:	c0008537          	lui	a0,0xc0008
ffffffffc00009e8:	54050513          	addi	a0,a0,1344 # ffffffffc0008540 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.91>
ffffffffc00009ec:	f4a43c23          	sd	a0,-168(s0)
ffffffffc00009f0:	c0008537          	lui	a0,0xc0008
ffffffffc00009f4:	55050613          	addi	a2,a0,1360 # ffffffffc0008550 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.92>
ffffffffc00009f8:	f5840513          	addi	a0,s0,-168
ffffffffc00009fc:	00300593          	li	a1,3
ffffffffc0000a00:	00002097          	auipc	ra,0x2
ffffffffc0000a04:	704080e7          	jalr	1796(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc0000a08:	000b0513          	mv	a0,s6
ffffffffc0000a0c:	00000593          	li	a1,0
ffffffffc0000a10:	00000097          	auipc	ra,0x0
ffffffffc0000a14:	768080e7          	jalr	1896(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc0000a18:	05256063          	bltu	a0,s2,ffffffffc0000a58 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x5a0>
ffffffffc0000a1c:	f2043823          	sd	zero,-208(s0)
ffffffffc0000a20:	f0043c23          	sd	zero,-232(s0)
ffffffffc0000a24:	f1343823          	sd	s3,-240(s0)
ffffffffc0000a28:	c0008537          	lui	a0,0xc0008
ffffffffc0000a2c:	08050513          	addi	a0,a0,128 # ffffffffc0008080 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.24>
ffffffffc0000a30:	f2a43423          	sd	a0,-216(s0)
ffffffffc0000a34:	c0008537          	lui	a0,0xc0008
ffffffffc0000a38:	1c050513          	addi	a0,a0,448 # ffffffffc00081c0 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.71>
ffffffffc0000a3c:	f0a43423          	sd	a0,-248(s0)
ffffffffc0000a40:	c0008537          	lui	a0,0xc0008
ffffffffc0000a44:	2a850613          	addi	a2,a0,680 # ffffffffc00082a8 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.77>
ffffffffc0000a48:	f0840513          	addi	a0,s0,-248
ffffffffc0000a4c:	00300593          	li	a1,3
ffffffffc0000a50:	00002097          	auipc	ra,0x2
ffffffffc0000a54:	6b4080e7          	jalr	1716(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc0000a58:	0a813c83          	ld	s9,168(sp)
ffffffffc0000a5c:	0b013c03          	ld	s8,176(sp)
ffffffffc0000a60:	0b813b83          	ld	s7,184(sp)
ffffffffc0000a64:	0c013b03          	ld	s6,192(sp)
ffffffffc0000a68:	0c813a83          	ld	s5,200(sp)
ffffffffc0000a6c:	0d013a03          	ld	s4,208(sp)
ffffffffc0000a70:	0d813983          	ld	s3,216(sp)
ffffffffc0000a74:	0e013903          	ld	s2,224(sp)
ffffffffc0000a78:	0e813483          	ld	s1,232(sp)
ffffffffc0000a7c:	0f013403          	ld	s0,240(sp)
ffffffffc0000a80:	0f813083          	ld	ra,248(sp)
ffffffffc0000a84:	10010113          	addi	sp,sp,256
ffffffffc0000a88:	00008067          	ret
ffffffffc0000a8c:	f0043423          	sd	zero,-248(s0)
ffffffffc0000a90:	f0840593          	addi	a1,s0,-248
ffffffffc0000a94:	00100a13          	li	s4,1
ffffffffc0000a98:	00500693          	li	a3,5
ffffffffc0000a9c:	00048513          	mv	a0,s1
ffffffffc0000aa0:	000a0613          	mv	a2,s4
ffffffffc0000aa4:	00068713          	mv	a4,a3
ffffffffc0000aa8:	00001097          	auipc	ra,0x1
ffffffffc0000aac:	83c080e7          	jalr	-1988(ra) # ffffffffc00012e4 <__atomic_compare_exchange_8>
ffffffffc0000ab0:	04050a63          	beqz	a0,ffffffffc0000b04 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x64c>
ffffffffc0000ab4:	0144b423          	sd	s4,8(s1)
ffffffffc0000ab8:	f0943423          	sd	s1,-248(s0)
ffffffffc0000abc:	01048993          	addi	s3,s1,16
ffffffffc0000ac0:	23600613          	li	a2,566
ffffffffc0000ac4:	00098513          	mv	a0,s3
ffffffffc0000ac8:	00000593          	li	a1,0
ffffffffc0000acc:	00006097          	auipc	ra,0x6
ffffffffc0000ad0:	d88080e7          	jalr	-632(ra) # ffffffffc0006854 <memset>
ffffffffc0000ad4:	f0040823          	sb	zero,-240(s0)
ffffffffc0000ad8:	00200593          	li	a1,2
ffffffffc0000adc:	00500613          	li	a2,5
ffffffffc0000ae0:	00048513          	mv	a0,s1
ffffffffc0000ae4:	00000097          	auipc	ra,0x0
ffffffffc0000ae8:	6f0080e7          	jalr	1776(ra) # ffffffffc00011d4 <__atomic_store_8>
ffffffffc0000aec:	0084b483          	ld	s1,8(s1)
ffffffffc0000af0:	f0840513          	addi	a0,s0,-248
ffffffffc0000af4:	00002097          	auipc	ra,0x2
ffffffffc0000af8:	550080e7          	jalr	1360(ra) # ffffffffc0003044 <_ZN74_$LT$spin..once..Finish$LT$$u27$a$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h654284c2fdccbe76E>
ffffffffc0000afc:	ab4492e3          	bne	s1,s4,ffffffffc00005a0 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0xe8>
ffffffffc0000b00:	aadff06f          	j	ffffffffc00005ac <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0xf4>
ffffffffc0000b04:	f0843503          	ld	a0,-248(s0)
ffffffffc0000b08:	00100a13          	li	s4,1
ffffffffc0000b0c:	00500993          	li	s3,5
ffffffffc0000b10:	a94510e3          	bne	a0,s4,ffffffffc0000590 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0xd8>
ffffffffc0000b14:	a69ff06f          	j	ffffffffc000057c <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0xc4>
ffffffffc0000b18:	01251e63          	bne	a0,s2,ffffffffc0000b34 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E+0x67c>
ffffffffc0000b1c:	c0009537          	lui	a0,0xc0009
ffffffffc0000b20:	95850513          	addi	a0,a0,-1704 # ffffffffc0008958 <anon.d6b9287b1461144585a146e0ccbddf8a.13.llvm.16099017380126128271>
ffffffffc0000b24:	00003097          	auipc	ra,0x3
ffffffffc0000b28:	644080e7          	jalr	1604(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0000b2c:	00000097          	auipc	ra,0x0
ffffffffc0000b30:	564080e7          	jalr	1380(ra) # ffffffffc0001090 <abort>
ffffffffc0000b34:	c0009537          	lui	a0,0xc0009
ffffffffc0000b38:	9a850513          	addi	a0,a0,-1624 # ffffffffc00089a8 <anon.d6b9287b1461144585a146e0ccbddf8a.15.llvm.16099017380126128271>
ffffffffc0000b3c:	00003097          	auipc	ra,0x3
ffffffffc0000b40:	62c080e7          	jalr	1580(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0000b44:	00000097          	auipc	ra,0x0
ffffffffc0000b48:	54c080e7          	jalr	1356(ra) # ffffffffc0001090 <abort>
ffffffffc0000b4c:	c0008537          	lui	a0,0xc0008
ffffffffc0000b50:	4e050513          	addi	a0,a0,1248 # ffffffffc00084e0 <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.89>
ffffffffc0000b54:	00003097          	auipc	ra,0x3
ffffffffc0000b58:	614080e7          	jalr	1556(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0000b5c:	00000097          	auipc	ra,0x0
ffffffffc0000b60:	534080e7          	jalr	1332(ra) # ffffffffc0001090 <abort>

ffffffffc0000b64 <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE>:
ffffffffc0000b64:	f7010113          	addi	sp,sp,-144
ffffffffc0000b68:	08113423          	sd	ra,136(sp)
ffffffffc0000b6c:	08813023          	sd	s0,128(sp)
ffffffffc0000b70:	06913c23          	sd	s1,120(sp)
ffffffffc0000b74:	07213823          	sd	s2,112(sp)
ffffffffc0000b78:	07313423          	sd	s3,104(sp)
ffffffffc0000b7c:	07413023          	sd	s4,96(sp)
ffffffffc0000b80:	05513c23          	sd	s5,88(sp)
ffffffffc0000b84:	05613823          	sd	s6,80(sp)
ffffffffc0000b88:	09010413          	addi	s0,sp,144
ffffffffc0000b8c:	c0212537          	lui	a0,0xc0212
ffffffffc0000b90:	00850493          	addi	s1,a0,8 # ffffffffc0212008 <_ZN74_$LT$rcore..memory..FRAME_ALLOCATOR$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h9a13dc4f760a50f8E.llvm.6093716542043648081>
ffffffffc0000b94:	00500913          	li	s2,5
ffffffffc0000b98:	00048513          	mv	a0,s1
ffffffffc0000b9c:	00090593          	mv	a1,s2
ffffffffc0000ba0:	00000097          	auipc	ra,0x0
ffffffffc0000ba4:	5d8080e7          	jalr	1496(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc0000ba8:	14050263          	beqz	a0,ffffffffc0000cec <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE+0x188>
ffffffffc0000bac:	00100a13          	li	s4,1
ffffffffc0000bb0:	00500993          	li	s3,5
ffffffffc0000bb4:	01451c63          	bne	a0,s4,ffffffffc0000bcc <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE+0x68>
ffffffffc0000bb8:	00048513          	mv	a0,s1
ffffffffc0000bbc:	00098593          	mv	a1,s3
ffffffffc0000bc0:	00000097          	auipc	ra,0x0
ffffffffc0000bc4:	5b8080e7          	jalr	1464(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc0000bc8:	ff4508e3          	beq	a0,s4,ffffffffc0000bb8 <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE+0x54>
ffffffffc0000bcc:	00200593          	li	a1,2
ffffffffc0000bd0:	1ab51463          	bne	a0,a1,ffffffffc0000d78 <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE+0x214>
ffffffffc0000bd4:	0084b503          	ld	a0,8(s1)
ffffffffc0000bd8:	01450663          	beq	a0,s4,ffffffffc0000be4 <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE+0x80>
ffffffffc0000bdc:	00000993          	li	s3,0
ffffffffc0000be0:	0080006f          	j	ffffffffc0000be8 <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE+0x84>
ffffffffc0000be4:	01048993          	addi	s3,s1,16
ffffffffc0000be8:	00098513          	mv	a0,s3
ffffffffc0000bec:	00001097          	auipc	ra,0x1
ffffffffc0000bf0:	cdc080e7          	jalr	-804(ra) # ffffffffc00018c8 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3ed0991f818da4a7E>
ffffffffc0000bf4:	00050493          	mv	s1,a0
ffffffffc0000bf8:	00058a93          	mv	s5,a1
ffffffffc0000bfc:	01450513          	addi	a0,a0,20
ffffffffc0000c00:	00001097          	auipc	ra,0x1
ffffffffc0000c04:	f20080e7          	jalr	-224(ra) # ffffffffc0001b20 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$5alloc17h3b482a02fbc9452aE>
ffffffffc0000c08:	00100b13          	li	s6,1
ffffffffc0000c0c:	01fb1613          	slli	a2,s6,0x1f
ffffffffc0000c10:	00c59593          	slli	a1,a1,0xc
ffffffffc0000c14:	00c589b3          	add	s3,a1,a2
ffffffffc0000c18:	00a03a33          	snez	s4,a0
ffffffffc0000c1c:	f7443823          	sd	s4,-144(s0)
ffffffffc0000c20:	f7343c23          	sd	s3,-136(s0)
ffffffffc0000c24:	01048513          	addi	a0,s1,16
ffffffffc0000c28:	00300613          	li	a2,3
ffffffffc0000c2c:	00000593          	li	a1,0
ffffffffc0000c30:	00000097          	auipc	ra,0x0
ffffffffc0000c34:	4e4080e7          	jalr	1252(ra) # ffffffffc0001114 <__atomic_store_4>
ffffffffc0000c38:	000a8663          	beqz	s5,ffffffffc0000c44 <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE+0xe0>
ffffffffc0000c3c:	00200513          	li	a0,2
ffffffffc0000c40:	10052073          	csrs	sstatus,a0
ffffffffc0000c44:	c0213537          	lui	a0,0xc0213
ffffffffc0000c48:	08050513          	addi	a0,a0,128 # ffffffffc0213080 <_ZN3log20MAX_LOG_LEVEL_FILTER17hc28b96925e30fb0cE>
ffffffffc0000c4c:	00000593          	li	a1,0
ffffffffc0000c50:	00000097          	auipc	ra,0x0
ffffffffc0000c54:	528080e7          	jalr	1320(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc0000c58:	07256263          	bltu	a0,s2,ffffffffc0000cbc <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE+0x158>
ffffffffc0000c5c:	c0000537          	lui	a0,0xc0000
ffffffffc0000c60:	38450513          	addi	a0,a0,900 # ffffffffc0000384 <_ZN66_$LT$core..option..Option$LT$T$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h328d42896557982eE>
ffffffffc0000c64:	faa43c23          	sd	a0,-72(s0)
ffffffffc0000c68:	f7040513          	addi	a0,s0,-144
ffffffffc0000c6c:	faa43823          	sd	a0,-80(s0)
ffffffffc0000c70:	fb040513          	addi	a0,s0,-80
ffffffffc0000c74:	faa43023          	sd	a0,-96(s0)
ffffffffc0000c78:	c0008537          	lui	a0,0xc0008
ffffffffc0000c7c:	6e850513          	addi	a0,a0,1768 # ffffffffc00086e8 <anon.588f341f3358d2da0ea5e87fa47b4285.50.llvm.6093716542043648081>
ffffffffc0000c80:	f8a43823          	sd	a0,-112(s0)
ffffffffc0000c84:	fb643423          	sd	s6,-88(s0)
ffffffffc0000c88:	f9643c23          	sd	s6,-104(s0)
ffffffffc0000c8c:	f9643423          	sd	s6,-120(s0)
ffffffffc0000c90:	c0008537          	lui	a0,0xc0008
ffffffffc0000c94:	6d850513          	addi	a0,a0,1752 # ffffffffc00086d8 <anon.588f341f3358d2da0ea5e87fa47b4285.49.llvm.6093716542043648081>
ffffffffc0000c98:	f8a43023          	sd	a0,-128(s0)
ffffffffc0000c9c:	c0008537          	lui	a0,0xc0008
ffffffffc0000ca0:	74850613          	addi	a2,a0,1864 # ffffffffc0008748 <anon.588f341f3358d2da0ea5e87fa47b4285.53.llvm.6093716542043648081>
ffffffffc0000ca4:	f8040513          	addi	a0,s0,-128
ffffffffc0000ca8:	00500593          	li	a1,5
ffffffffc0000cac:	00002097          	auipc	ra,0x2
ffffffffc0000cb0:	458080e7          	jalr	1112(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc0000cb4:	f7843983          	ld	s3,-136(s0)
ffffffffc0000cb8:	f7043a03          	ld	s4,-144(s0)
ffffffffc0000cbc:	000a0513          	mv	a0,s4
ffffffffc0000cc0:	00098593          	mv	a1,s3
ffffffffc0000cc4:	05013b03          	ld	s6,80(sp)
ffffffffc0000cc8:	05813a83          	ld	s5,88(sp)
ffffffffc0000ccc:	06013a03          	ld	s4,96(sp)
ffffffffc0000cd0:	06813983          	ld	s3,104(sp)
ffffffffc0000cd4:	07013903          	ld	s2,112(sp)
ffffffffc0000cd8:	07813483          	ld	s1,120(sp)
ffffffffc0000cdc:	08013403          	ld	s0,128(sp)
ffffffffc0000ce0:	08813083          	ld	ra,136(sp)
ffffffffc0000ce4:	09010113          	addi	sp,sp,144
ffffffffc0000ce8:	00008067          	ret
ffffffffc0000cec:	f8043023          	sd	zero,-128(s0)
ffffffffc0000cf0:	f8040593          	addi	a1,s0,-128
ffffffffc0000cf4:	00100a13          	li	s4,1
ffffffffc0000cf8:	00500693          	li	a3,5
ffffffffc0000cfc:	00048513          	mv	a0,s1
ffffffffc0000d00:	000a0613          	mv	a2,s4
ffffffffc0000d04:	00068713          	mv	a4,a3
ffffffffc0000d08:	00000097          	auipc	ra,0x0
ffffffffc0000d0c:	5dc080e7          	jalr	1500(ra) # ffffffffc00012e4 <__atomic_compare_exchange_8>
ffffffffc0000d10:	04050a63          	beqz	a0,ffffffffc0000d64 <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE+0x200>
ffffffffc0000d14:	0144b423          	sd	s4,8(s1)
ffffffffc0000d18:	f8943023          	sd	s1,-128(s0)
ffffffffc0000d1c:	01048993          	addi	s3,s1,16
ffffffffc0000d20:	23600613          	li	a2,566
ffffffffc0000d24:	00098513          	mv	a0,s3
ffffffffc0000d28:	00000593          	li	a1,0
ffffffffc0000d2c:	00006097          	auipc	ra,0x6
ffffffffc0000d30:	b28080e7          	jalr	-1240(ra) # ffffffffc0006854 <memset>
ffffffffc0000d34:	f8040423          	sb	zero,-120(s0)
ffffffffc0000d38:	00200593          	li	a1,2
ffffffffc0000d3c:	00500613          	li	a2,5
ffffffffc0000d40:	00048513          	mv	a0,s1
ffffffffc0000d44:	00000097          	auipc	ra,0x0
ffffffffc0000d48:	490080e7          	jalr	1168(ra) # ffffffffc00011d4 <__atomic_store_8>
ffffffffc0000d4c:	0084b483          	ld	s1,8(s1)
ffffffffc0000d50:	f8040513          	addi	a0,s0,-128
ffffffffc0000d54:	00002097          	auipc	ra,0x2
ffffffffc0000d58:	2f0080e7          	jalr	752(ra) # ffffffffc0003044 <_ZN74_$LT$spin..once..Finish$LT$$u27$a$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h654284c2fdccbe76E>
ffffffffc0000d5c:	e94490e3          	bne	s1,s4,ffffffffc0000bdc <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE+0x78>
ffffffffc0000d60:	e89ff06f          	j	ffffffffc0000be8 <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE+0x84>
ffffffffc0000d64:	f8043503          	ld	a0,-128(s0)
ffffffffc0000d68:	00100a13          	li	s4,1
ffffffffc0000d6c:	00500993          	li	s3,5
ffffffffc0000d70:	e5451ee3          	bne	a0,s4,ffffffffc0000bcc <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE+0x68>
ffffffffc0000d74:	e45ff06f          	j	ffffffffc0000bb8 <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE+0x54>
ffffffffc0000d78:	00300593          	li	a1,3
ffffffffc0000d7c:	00b51e63          	bne	a0,a1,ffffffffc0000d98 <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE+0x234>
ffffffffc0000d80:	c0009537          	lui	a0,0xc0009
ffffffffc0000d84:	95850513          	addi	a0,a0,-1704 # ffffffffc0008958 <anon.d6b9287b1461144585a146e0ccbddf8a.13.llvm.16099017380126128271>
ffffffffc0000d88:	00003097          	auipc	ra,0x3
ffffffffc0000d8c:	3e0080e7          	jalr	992(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0000d90:	00000097          	auipc	ra,0x0
ffffffffc0000d94:	300080e7          	jalr	768(ra) # ffffffffc0001090 <abort>
ffffffffc0000d98:	c0009537          	lui	a0,0xc0009
ffffffffc0000d9c:	9a850513          	addi	a0,a0,-1624 # ffffffffc00089a8 <anon.d6b9287b1461144585a146e0ccbddf8a.15.llvm.16099017380126128271>
ffffffffc0000da0:	00003097          	auipc	ra,0x3
ffffffffc0000da4:	3c8080e7          	jalr	968(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0000da8:	00000097          	auipc	ra,0x0
ffffffffc0000dac:	2e8080e7          	jalr	744(ra) # ffffffffc0001090 <abort>

ffffffffc0000db0 <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE>:
ffffffffc0000db0:	d2010113          	addi	sp,sp,-736
ffffffffc0000db4:	2c113c23          	sd	ra,728(sp)
ffffffffc0000db8:	2c813823          	sd	s0,720(sp)
ffffffffc0000dbc:	2c913423          	sd	s1,712(sp)
ffffffffc0000dc0:	2d213023          	sd	s2,704(sp)
ffffffffc0000dc4:	2b313c23          	sd	s3,696(sp)
ffffffffc0000dc8:	2b413823          	sd	s4,688(sp)
ffffffffc0000dcc:	2b513423          	sd	s5,680(sp)
ffffffffc0000dd0:	2b613023          	sd	s6,672(sp)
ffffffffc0000dd4:	29713c23          	sd	s7,664(sp)
ffffffffc0000dd8:	29813823          	sd	s8,656(sp)
ffffffffc0000ddc:	29913423          	sd	s9,648(sp)
ffffffffc0000de0:	29a13023          	sd	s10,640(sp)
ffffffffc0000de4:	27b13c23          	sd	s11,632(sp)
ffffffffc0000de8:	2e010413          	addi	s0,sp,736
ffffffffc0000dec:	d2a43823          	sd	a0,-720(s0)
ffffffffc0000df0:	c0213537          	lui	a0,0xc0213
ffffffffc0000df4:	08050a13          	addi	s4,a0,128 # ffffffffc0213080 <_ZN3log20MAX_LOG_LEVEL_FILTER17hc28b96925e30fb0cE>
ffffffffc0000df8:	000a0513          	mv	a0,s4
ffffffffc0000dfc:	00000593          	li	a1,0
ffffffffc0000e00:	00000097          	auipc	ra,0x0
ffffffffc0000e04:	378080e7          	jalr	888(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc0000e08:	00300993          	li	s3,3
ffffffffc0000e0c:	05356263          	bltu	a0,s3,ffffffffc0000e50 <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0xa0>
ffffffffc0000e10:	d6043023          	sd	zero,-672(s0)
ffffffffc0000e14:	d4043423          	sd	zero,-696(s0)
ffffffffc0000e18:	00100513          	li	a0,1
ffffffffc0000e1c:	d4a43023          	sd	a0,-704(s0)
ffffffffc0000e20:	c0008537          	lui	a0,0xc0008
ffffffffc0000e24:	6d850513          	addi	a0,a0,1752 # ffffffffc00086d8 <anon.588f341f3358d2da0ea5e87fa47b4285.49.llvm.6093716542043648081>
ffffffffc0000e28:	d4a43c23          	sd	a0,-680(s0)
ffffffffc0000e2c:	c0008537          	lui	a0,0xc0008
ffffffffc0000e30:	7f850513          	addi	a0,a0,2040 # ffffffffc00087f8 <.Lanon.588f341f3358d2da0ea5e87fa47b4285.65>
ffffffffc0000e34:	d2a43c23          	sd	a0,-712(s0)
ffffffffc0000e38:	c0009537          	lui	a0,0xc0009
ffffffffc0000e3c:	80850613          	addi	a2,a0,-2040 # ffffffffc0008808 <.Lanon.588f341f3358d2da0ea5e87fa47b4285.66>
ffffffffc0000e40:	d3840513          	addi	a0,s0,-712
ffffffffc0000e44:	00300593          	li	a1,3
ffffffffc0000e48:	00002097          	auipc	ra,0x2
ffffffffc0000e4c:	2bc080e7          	jalr	700(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc0000e50:	d3840913          	addi	s2,s0,-712
ffffffffc0000e54:	20000613          	li	a2,512
ffffffffc0000e58:	00090513          	mv	a0,s2
ffffffffc0000e5c:	00000593          	li	a1,0
ffffffffc0000e60:	00006097          	auipc	ra,0x6
ffffffffc0000e64:	9f4080e7          	jalr	-1548(ra) # ffffffffc0006854 <memset>
ffffffffc0000e68:	00001bb7          	lui	s7,0x1
ffffffffc0000e6c:	ffd00513          	li	a0,-3
ffffffffc0000e70:	01e51513          	slli	a0,a0,0x1e
ffffffffc0000e74:	d2a43423          	sd	a0,-728(s0)
ffffffffc0000e78:	00004cb7          	lui	s9,0x4
ffffffffc0000e7c:	fff40537          	lui	a0,0xfff40
ffffffffc0000e80:	0015051b          	addiw	a0,a0,1
ffffffffc0000e84:	00c51d93          	slli	s11,a0,0xc
ffffffffc0000e88:	fffffd37          	lui	s10,0xfffff
ffffffffc0000e8c:	00000a93          	li	s5,0
ffffffffc0000e90:	00000c13          	li	s8,0
ffffffffc0000e94:	040a8a63          	beqz	s5,ffffffffc0000ee8 <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0x138>
ffffffffc0000e98:	fffa8b13          	addi	s6,s5,-1
ffffffffc0000e9c:	01f00513          	li	a0,31
ffffffffc0000ea0:	19656663          	bltu	a0,s6,ffffffffc000102c <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0x27c>
ffffffffc0000ea4:	004b1513          	slli	a0,s6,0x4
ffffffffc0000ea8:	00a904b3          	add	s1,s2,a0
ffffffffc0000eac:	00848b13          	addi	s6,s1,8
ffffffffc0000eb0:	00000097          	auipc	ra,0x0
ffffffffc0000eb4:	cb4080e7          	jalr	-844(ra) # ffffffffc0000b64 <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE>
ffffffffc0000eb8:	18050063          	beqz	a0,ffffffffc0001038 <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0x288>
ffffffffc0000ebc:	001c0c1b          	addiw	s8,s8,1
ffffffffc0000ec0:	01b58633          	add	a2,a1,s11
ffffffffc0000ec4:	0004b503          	ld	a0,0(s1)
ffffffffc0000ec8:	02c51a63          	bne	a0,a2,ffffffffc0000efc <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0x14c>
ffffffffc0000ecc:	000b3583          	ld	a1,0(s6)
ffffffffc0000ed0:	017585b3          	add	a1,a1,s7
ffffffffc0000ed4:	00bb3023          	sd	a1,0(s6)
ffffffffc0000ed8:	01a50533          	add	a0,a0,s10
ffffffffc0000edc:	00a4b023          	sd	a0,0(s1)
ffffffffc0000ee0:	fd9c48e3          	blt	s8,s9,ffffffffc0000eb0 <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0x100>
ffffffffc0000ee4:	0480006f          	j	ffffffffc0000f2c <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0x17c>
ffffffffc0000ee8:	00000097          	auipc	ra,0x0
ffffffffc0000eec:	c7c080e7          	jalr	-900(ra) # ffffffffc0000b64 <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE>
ffffffffc0000ef0:	14050463          	beqz	a0,ffffffffc0001038 <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0x288>
ffffffffc0000ef4:	001c0c13          	addi	s8,s8,1
ffffffffc0000ef8:	00c0006f          	j	ffffffffc0000f04 <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0x154>
ffffffffc0000efc:	02000513          	li	a0,32
ffffffffc0000f00:	14aaf863          	bgeu	s5,a0,ffffffffc0001050 <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0x2a0>
ffffffffc0000f04:	004a9513          	slli	a0,s5,0x4
ffffffffc0000f08:	00a90533          	add	a0,s2,a0
ffffffffc0000f0c:	01753423          	sd	s7,8(a0) # fffffffffff40008 <ebss+0x3fd2cf80>
ffffffffc0000f10:	d2843603          	ld	a2,-728(s0)
ffffffffc0000f14:	00c585b3          	add	a1,a1,a2
ffffffffc0000f18:	00b53023          	sd	a1,0(a0)
ffffffffc0000f1c:	001a8a93          	addi	s5,s5,1
ffffffffc0000f20:	000c051b          	sext.w	a0,s8
ffffffffc0000f24:	f79548e3          	blt	a0,s9,ffffffffc0000e94 <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0xe4>
ffffffffc0000f28:	0080006f          	j	ffffffffc0000f30 <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0x180>
ffffffffc0000f2c:	0c0a8263          	beqz	s5,ffffffffc0000ff0 <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0x240>
ffffffffc0000f30:	004a9493          	slli	s1,s5,0x4
ffffffffc0000f34:	c0002537          	lui	a0,0xc0002
ffffffffc0000f38:	2ac50c13          	addi	s8,a0,684 # ffffffffc00022ac <_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..UpperHex$GT$3fmt17haf6ef3b83a4d7ec3E>
ffffffffc0000f3c:	00200d93          	li	s11,2
ffffffffc0000f40:	c0008537          	lui	a0,0xc0008
ffffffffc0000f44:	65850b93          	addi	s7,a0,1624 # ffffffffc0008658 <.Lanon.588f341f3358d2da0ea5e87fa47b4285.42>
ffffffffc0000f48:	c0009537          	lui	a0,0xc0009
ffffffffc0000f4c:	88850c93          	addi	s9,a0,-1912 # ffffffffc0008888 <.Lanon.588f341f3358d2da0ea5e87fa47b4285.71>
ffffffffc0000f50:	c0009537          	lui	a0,0xc0009
ffffffffc0000f54:	8b850a93          	addi	s5,a0,-1864 # ffffffffc00088b8 <.Lanon.588f341f3358d2da0ea5e87fa47b4285.72>
ffffffffc0000f58:	f4840b13          	addi	s6,s0,-184
ffffffffc0000f5c:	f3243c23          	sd	s2,-200(s0)
ffffffffc0000f60:	00890d13          	addi	s10,s2,8
ffffffffc0000f64:	f5a43023          	sd	s10,-192(s0)
ffffffffc0000f68:	000a0513          	mv	a0,s4
ffffffffc0000f6c:	00000593          	li	a1,0
ffffffffc0000f70:	00000097          	auipc	ra,0x0
ffffffffc0000f74:	208080e7          	jalr	520(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc0000f78:	00090593          	mv	a1,s2
ffffffffc0000f7c:	05356a63          	bltu	a0,s3,ffffffffc0000fd0 <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0x220>
ffffffffc0000f80:	f4040513          	addi	a0,s0,-192
ffffffffc0000f84:	f8a43423          	sd	a0,-120(s0)
ffffffffc0000f88:	f9843823          	sd	s8,-112(s0)
ffffffffc0000f8c:	f9843023          	sd	s8,-128(s0)
ffffffffc0000f90:	f3840513          	addi	a0,s0,-200
ffffffffc0000f94:	f6a43c23          	sd	a0,-136(s0)
ffffffffc0000f98:	f7840513          	addi	a0,s0,-136
ffffffffc0000f9c:	f6a43423          	sd	a0,-152(s0)
ffffffffc0000fa0:	f7b43823          	sd	s11,-144(s0)
ffffffffc0000fa4:	f7b43023          	sd	s11,-160(s0)
ffffffffc0000fa8:	f5743c23          	sd	s7,-168(s0)
ffffffffc0000fac:	f5943423          	sd	s9,-184(s0)
ffffffffc0000fb0:	f5343823          	sd	s3,-176(s0)
ffffffffc0000fb4:	000b0513          	mv	a0,s6
ffffffffc0000fb8:	00098593          	mv	a1,s3
ffffffffc0000fbc:	000a8613          	mv	a2,s5
ffffffffc0000fc0:	00002097          	auipc	ra,0x2
ffffffffc0000fc4:	144080e7          	jalr	324(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc0000fc8:	f4043d03          	ld	s10,-192(s0)
ffffffffc0000fcc:	f3843583          	ld	a1,-200(s0)
ffffffffc0000fd0:	01090913          	addi	s2,s2,16
ffffffffc0000fd4:	000d3603          	ld	a2,0(s10) # fffffffffffff000 <ebss+0x3fdebf78>
ffffffffc0000fd8:	0005b583          	ld	a1,0(a1)
ffffffffc0000fdc:	d3043503          	ld	a0,-720(s0)
ffffffffc0000fe0:	00002097          	auipc	ra,0x2
ffffffffc0000fe4:	dd4080e7          	jalr	-556(ra) # ffffffffc0002db4 <_ZN22buddy_system_allocator4Heap4init17h414e0e4935858a51E>
ffffffffc0000fe8:	ff048493          	addi	s1,s1,-16
ffffffffc0000fec:	f60498e3          	bnez	s1,ffffffffc0000f5c <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0x1ac>
ffffffffc0000ff0:	27813d83          	ld	s11,632(sp)
ffffffffc0000ff4:	28013d03          	ld	s10,640(sp)
ffffffffc0000ff8:	28813c83          	ld	s9,648(sp)
ffffffffc0000ffc:	29013c03          	ld	s8,656(sp)
ffffffffc0001000:	29813b83          	ld	s7,664(sp)
ffffffffc0001004:	2a013b03          	ld	s6,672(sp)
ffffffffc0001008:	2a813a83          	ld	s5,680(sp)
ffffffffc000100c:	2b013a03          	ld	s4,688(sp)
ffffffffc0001010:	2b813983          	ld	s3,696(sp)
ffffffffc0001014:	2c013903          	ld	s2,704(sp)
ffffffffc0001018:	2c813483          	ld	s1,712(sp)
ffffffffc000101c:	2d013403          	ld	s0,720(sp)
ffffffffc0001020:	2d813083          	ld	ra,728(sp)
ffffffffc0001024:	2e010113          	addi	sp,sp,736
ffffffffc0001028:	00008067          	ret
ffffffffc000102c:	00000097          	auipc	ra,0x0
ffffffffc0001030:	b38080e7          	jalr	-1224(ra) # ffffffffc0000b64 <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE>
ffffffffc0001034:	02051e63          	bnez	a0,ffffffffc0001070 <_ZN5rcore6memory12enlarge_heap17hd5f650da281c107bE+0x2c0>
ffffffffc0001038:	c0008537          	lui	a0,0xc0008
ffffffffc000103c:	62850513          	addi	a0,a0,1576 # ffffffffc0008628 <anon.588f341f3358d2da0ea5e87fa47b4285.2.llvm.6093716542043648081>
ffffffffc0001040:	00003097          	auipc	ra,0x3
ffffffffc0001044:	128080e7          	jalr	296(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0001048:	00000097          	auipc	ra,0x0
ffffffffc000104c:	048080e7          	jalr	72(ra) # ffffffffc0001090 <abort>
ffffffffc0001050:	c0009537          	lui	a0,0xc0009
ffffffffc0001054:	86850513          	addi	a0,a0,-1944 # ffffffffc0008868 <.Lanon.588f341f3358d2da0ea5e87fa47b4285.68>
ffffffffc0001058:	02000613          	li	a2,32
ffffffffc000105c:	000a8593          	mv	a1,s5
ffffffffc0001060:	00003097          	auipc	ra,0x3
ffffffffc0001064:	17c080e7          	jalr	380(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0001068:	00000097          	auipc	ra,0x0
ffffffffc000106c:	028080e7          	jalr	40(ra) # ffffffffc0001090 <abort>
ffffffffc0001070:	c0009537          	lui	a0,0xc0009
ffffffffc0001074:	85050513          	addi	a0,a0,-1968 # ffffffffc0008850 <.Lanon.588f341f3358d2da0ea5e87fa47b4285.67>
ffffffffc0001078:	02000613          	li	a2,32
ffffffffc000107c:	000b0593          	mv	a1,s6
ffffffffc0001080:	00003097          	auipc	ra,0x3
ffffffffc0001084:	15c080e7          	jalr	348(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0001088:	00000097          	auipc	ra,0x0
ffffffffc000108c:	008080e7          	jalr	8(ra) # ffffffffc0001090 <abort>

ffffffffc0001090 <abort>:
ffffffffc0001090:	ff010113          	addi	sp,sp,-16
ffffffffc0001094:	00113423          	sd	ra,8(sp)
ffffffffc0001098:	00813023          	sd	s0,0(sp)
ffffffffc000109c:	01010413          	addi	s0,sp,16
ffffffffc00010a0:	c0009537          	lui	a0,0xc0009
ffffffffc00010a4:	9f850513          	addi	a0,a0,-1544 # ffffffffc00089f8 <.Lanon.d6b9287b1461144585a146e0ccbddf8a.55>
ffffffffc00010a8:	00003097          	auipc	ra,0x3
ffffffffc00010ac:	0c0080e7          	jalr	192(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc00010b0:	00000097          	auipc	ra,0x0
ffffffffc00010b4:	fe0080e7          	jalr	-32(ra) # ffffffffc0001090 <abort>

ffffffffc00010b8 <__atomic_load_4>:
ffffffffc00010b8:	fe010113          	addi	sp,sp,-32
ffffffffc00010bc:	00113c23          	sd	ra,24(sp)
ffffffffc00010c0:	00813823          	sd	s0,16(sp)
ffffffffc00010c4:	00913423          	sd	s1,8(sp)
ffffffffc00010c8:	02010413          	addi	s0,sp,32
ffffffffc00010cc:	00050493          	mv	s1,a0
ffffffffc00010d0:	10002573          	csrr	a0,sstatus
ffffffffc00010d4:	fea43023          	sd	a0,-32(s0)
ffffffffc00010d8:	fe040513          	addi	a0,s0,-32
ffffffffc00010dc:	00100593          	li	a1,1
ffffffffc00010e0:	00002097          	auipc	ra,0x2
ffffffffc00010e4:	c28080e7          	jalr	-984(ra) # ffffffffc0002d08 <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>
ffffffffc00010e8:	00050593          	mv	a1,a0
ffffffffc00010ec:	00200613          	li	a2,2
ffffffffc00010f0:	10063073          	csrc	sstatus,a2
ffffffffc00010f4:	0004e503          	lwu	a0,0(s1)
ffffffffc00010f8:	00058463          	beqz	a1,ffffffffc0001100 <__atomic_load_4+0x48>
ffffffffc00010fc:	10062073          	csrs	sstatus,a2
ffffffffc0001100:	00813483          	ld	s1,8(sp)
ffffffffc0001104:	01013403          	ld	s0,16(sp)
ffffffffc0001108:	01813083          	ld	ra,24(sp)
ffffffffc000110c:	02010113          	addi	sp,sp,32
ffffffffc0001110:	00008067          	ret

ffffffffc0001114 <__atomic_store_4>:
ffffffffc0001114:	fd010113          	addi	sp,sp,-48
ffffffffc0001118:	02113423          	sd	ra,40(sp)
ffffffffc000111c:	02813023          	sd	s0,32(sp)
ffffffffc0001120:	00913c23          	sd	s1,24(sp)
ffffffffc0001124:	01213823          	sd	s2,16(sp)
ffffffffc0001128:	03010413          	addi	s0,sp,48
ffffffffc000112c:	00058913          	mv	s2,a1
ffffffffc0001130:	00050493          	mv	s1,a0
ffffffffc0001134:	10002573          	csrr	a0,sstatus
ffffffffc0001138:	fca43c23          	sd	a0,-40(s0)
ffffffffc000113c:	fd840513          	addi	a0,s0,-40
ffffffffc0001140:	00100593          	li	a1,1
ffffffffc0001144:	00002097          	auipc	ra,0x2
ffffffffc0001148:	bc4080e7          	jalr	-1084(ra) # ffffffffc0002d08 <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>
ffffffffc000114c:	00200593          	li	a1,2
ffffffffc0001150:	1005b073          	csrc	sstatus,a1
ffffffffc0001154:	0124a023          	sw	s2,0(s1)
ffffffffc0001158:	00050463          	beqz	a0,ffffffffc0001160 <__atomic_store_4+0x4c>
ffffffffc000115c:	1005a073          	csrs	sstatus,a1
ffffffffc0001160:	01013903          	ld	s2,16(sp)
ffffffffc0001164:	01813483          	ld	s1,24(sp)
ffffffffc0001168:	02013403          	ld	s0,32(sp)
ffffffffc000116c:	02813083          	ld	ra,40(sp)
ffffffffc0001170:	03010113          	addi	sp,sp,48
ffffffffc0001174:	00008067          	ret

ffffffffc0001178 <__atomic_load_8>:
ffffffffc0001178:	fe010113          	addi	sp,sp,-32
ffffffffc000117c:	00113c23          	sd	ra,24(sp)
ffffffffc0001180:	00813823          	sd	s0,16(sp)
ffffffffc0001184:	00913423          	sd	s1,8(sp)
ffffffffc0001188:	02010413          	addi	s0,sp,32
ffffffffc000118c:	00050493          	mv	s1,a0
ffffffffc0001190:	10002573          	csrr	a0,sstatus
ffffffffc0001194:	fea43023          	sd	a0,-32(s0)
ffffffffc0001198:	fe040513          	addi	a0,s0,-32
ffffffffc000119c:	00100593          	li	a1,1
ffffffffc00011a0:	00002097          	auipc	ra,0x2
ffffffffc00011a4:	b68080e7          	jalr	-1176(ra) # ffffffffc0002d08 <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>
ffffffffc00011a8:	00050593          	mv	a1,a0
ffffffffc00011ac:	00200613          	li	a2,2
ffffffffc00011b0:	10063073          	csrc	sstatus,a2
ffffffffc00011b4:	0004b503          	ld	a0,0(s1)
ffffffffc00011b8:	00058463          	beqz	a1,ffffffffc00011c0 <__atomic_load_8+0x48>
ffffffffc00011bc:	10062073          	csrs	sstatus,a2
ffffffffc00011c0:	00813483          	ld	s1,8(sp)
ffffffffc00011c4:	01013403          	ld	s0,16(sp)
ffffffffc00011c8:	01813083          	ld	ra,24(sp)
ffffffffc00011cc:	02010113          	addi	sp,sp,32
ffffffffc00011d0:	00008067          	ret

ffffffffc00011d4 <__atomic_store_8>:
ffffffffc00011d4:	fd010113          	addi	sp,sp,-48
ffffffffc00011d8:	02113423          	sd	ra,40(sp)
ffffffffc00011dc:	02813023          	sd	s0,32(sp)
ffffffffc00011e0:	00913c23          	sd	s1,24(sp)
ffffffffc00011e4:	01213823          	sd	s2,16(sp)
ffffffffc00011e8:	03010413          	addi	s0,sp,48
ffffffffc00011ec:	00058913          	mv	s2,a1
ffffffffc00011f0:	00050493          	mv	s1,a0
ffffffffc00011f4:	10002573          	csrr	a0,sstatus
ffffffffc00011f8:	fca43c23          	sd	a0,-40(s0)
ffffffffc00011fc:	fd840513          	addi	a0,s0,-40
ffffffffc0001200:	00100593          	li	a1,1
ffffffffc0001204:	00002097          	auipc	ra,0x2
ffffffffc0001208:	b04080e7          	jalr	-1276(ra) # ffffffffc0002d08 <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>
ffffffffc000120c:	00200593          	li	a1,2
ffffffffc0001210:	1005b073          	csrc	sstatus,a1
ffffffffc0001214:	0124b023          	sd	s2,0(s1)
ffffffffc0001218:	00050463          	beqz	a0,ffffffffc0001220 <__atomic_store_8+0x4c>
ffffffffc000121c:	1005a073          	csrs	sstatus,a1
ffffffffc0001220:	01013903          	ld	s2,16(sp)
ffffffffc0001224:	01813483          	ld	s1,24(sp)
ffffffffc0001228:	02013403          	ld	s0,32(sp)
ffffffffc000122c:	02813083          	ld	ra,40(sp)
ffffffffc0001230:	03010113          	addi	sp,sp,48
ffffffffc0001234:	00008067          	ret

ffffffffc0001238 <__atomic_compare_exchange_4>:
ffffffffc0001238:	fd010113          	addi	sp,sp,-48
ffffffffc000123c:	02113423          	sd	ra,40(sp)
ffffffffc0001240:	02813023          	sd	s0,32(sp)
ffffffffc0001244:	00913c23          	sd	s1,24(sp)
ffffffffc0001248:	01213823          	sd	s2,16(sp)
ffffffffc000124c:	01313423          	sd	s3,8(sp)
ffffffffc0001250:	03010413          	addi	s0,sp,48
ffffffffc0001254:	00060913          	mv	s2,a2
ffffffffc0001258:	00058993          	mv	s3,a1
ffffffffc000125c:	00050493          	mv	s1,a0
ffffffffc0001260:	10002573          	csrr	a0,sstatus
ffffffffc0001264:	fca43823          	sd	a0,-48(s0)
ffffffffc0001268:	fd040513          	addi	a0,s0,-48
ffffffffc000126c:	00100593          	li	a1,1
ffffffffc0001270:	00002097          	auipc	ra,0x2
ffffffffc0001274:	a98080e7          	jalr	-1384(ra) # ffffffffc0002d08 <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>
ffffffffc0001278:	00200593          	li	a1,2
ffffffffc000127c:	1005b073          	csrc	sstatus,a1
ffffffffc0001280:	0009a703          	lw	a4,0(s3)
ffffffffc0001284:	02071613          	slli	a2,a4,0x20
ffffffffc0001288:	02065613          	srli	a2,a2,0x20
ffffffffc000128c:	0004a783          	lw	a5,0(s1)
ffffffffc0001290:	02079693          	slli	a3,a5,0x20
ffffffffc0001294:	0206d693          	srli	a3,a3,0x20
ffffffffc0001298:	00e79a63          	bne	a5,a4,ffffffffc00012ac <__atomic_compare_exchange_4+0x74>
ffffffffc000129c:	0124a023          	sw	s2,0(s1)
ffffffffc00012a0:	00050c63          	beqz	a0,ffffffffc00012b8 <__atomic_compare_exchange_4+0x80>
ffffffffc00012a4:	1005a073          	csrs	sstatus,a1
ffffffffc00012a8:	0100006f          	j	ffffffffc00012b8 <__atomic_compare_exchange_4+0x80>
ffffffffc00012ac:	00d9a023          	sw	a3,0(s3)
ffffffffc00012b0:	00050463          	beqz	a0,ffffffffc00012b8 <__atomic_compare_exchange_4+0x80>
ffffffffc00012b4:	1005a073          	csrs	sstatus,a1
ffffffffc00012b8:	0006051b          	sext.w	a0,a2
ffffffffc00012bc:	0006859b          	sext.w	a1,a3
ffffffffc00012c0:	00a5c533          	xor	a0,a1,a0
ffffffffc00012c4:	00153513          	seqz	a0,a0
ffffffffc00012c8:	00813983          	ld	s3,8(sp)
ffffffffc00012cc:	01013903          	ld	s2,16(sp)
ffffffffc00012d0:	01813483          	ld	s1,24(sp)
ffffffffc00012d4:	02013403          	ld	s0,32(sp)
ffffffffc00012d8:	02813083          	ld	ra,40(sp)
ffffffffc00012dc:	03010113          	addi	sp,sp,48
ffffffffc00012e0:	00008067          	ret

ffffffffc00012e4 <__atomic_compare_exchange_8>:
ffffffffc00012e4:	fd010113          	addi	sp,sp,-48
ffffffffc00012e8:	02113423          	sd	ra,40(sp)
ffffffffc00012ec:	02813023          	sd	s0,32(sp)
ffffffffc00012f0:	00913c23          	sd	s1,24(sp)
ffffffffc00012f4:	01213823          	sd	s2,16(sp)
ffffffffc00012f8:	01313423          	sd	s3,8(sp)
ffffffffc00012fc:	03010413          	addi	s0,sp,48
ffffffffc0001300:	00060913          	mv	s2,a2
ffffffffc0001304:	00058993          	mv	s3,a1
ffffffffc0001308:	00050493          	mv	s1,a0
ffffffffc000130c:	10002573          	csrr	a0,sstatus
ffffffffc0001310:	fca43823          	sd	a0,-48(s0)
ffffffffc0001314:	fd040513          	addi	a0,s0,-48
ffffffffc0001318:	00100593          	li	a1,1
ffffffffc000131c:	00002097          	auipc	ra,0x2
ffffffffc0001320:	9ec080e7          	jalr	-1556(ra) # ffffffffc0002d08 <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>
ffffffffc0001324:	00200613          	li	a2,2
ffffffffc0001328:	10063073          	csrc	sstatus,a2
ffffffffc000132c:	0009b583          	ld	a1,0(s3)
ffffffffc0001330:	0004b683          	ld	a3,0(s1)
ffffffffc0001334:	00b69a63          	bne	a3,a1,ffffffffc0001348 <__atomic_compare_exchange_8+0x64>
ffffffffc0001338:	0124b023          	sd	s2,0(s1)
ffffffffc000133c:	00050c63          	beqz	a0,ffffffffc0001354 <__atomic_compare_exchange_8+0x70>
ffffffffc0001340:	10062073          	csrs	sstatus,a2
ffffffffc0001344:	0100006f          	j	ffffffffc0001354 <__atomic_compare_exchange_8+0x70>
ffffffffc0001348:	00d9b023          	sd	a3,0(s3)
ffffffffc000134c:	00050463          	beqz	a0,ffffffffc0001354 <__atomic_compare_exchange_8+0x70>
ffffffffc0001350:	10062073          	csrs	sstatus,a2
ffffffffc0001354:	00b6c533          	xor	a0,a3,a1
ffffffffc0001358:	00153513          	seqz	a0,a0
ffffffffc000135c:	00813983          	ld	s3,8(sp)
ffffffffc0001360:	01013903          	ld	s2,16(sp)
ffffffffc0001364:	01813483          	ld	s1,24(sp)
ffffffffc0001368:	02013403          	ld	s0,32(sp)
ffffffffc000136c:	02813083          	ld	ra,40(sp)
ffffffffc0001370:	03010113          	addi	sp,sp,48
ffffffffc0001374:	00008067          	ret

ffffffffc0001378 <rust_main>:
ffffffffc0001378:	fe010113          	addi	sp,sp,-32
ffffffffc000137c:	00113c23          	sd	ra,24(sp)
ffffffffc0001380:	00813823          	sd	s0,16(sp)
ffffffffc0001384:	00913423          	sd	s1,8(sp)
ffffffffc0001388:	02010413          	addi	s0,sp,32
ffffffffc000138c:	002475b7          	lui	a1,0x247
ffffffffc0001390:	8ad5859b          	addiw	a1,a1,-1875
ffffffffc0001394:	00e59593          	slli	a1,a1,0xe
ffffffffc0001398:	c4d58593          	addi	a1,a1,-947 # 246c4d <XLENb+0x246c0d>
ffffffffc000139c:	00c59593          	slli	a1,a1,0xc
ffffffffc00013a0:	5e758593          	addi	a1,a1,1511
ffffffffc00013a4:	00d59493          	slli	s1,a1,0xd
ffffffffc00013a8:	04100593          	li	a1,65
ffffffffc00013ac:	eeb48823          	sb	a1,-272(s1)
ffffffffc00013b0:	00050193          	mv	gp,a0
ffffffffc00013b4:	00000513          	li	a0,0
ffffffffc00013b8:	fffff097          	auipc	ra,0xfffff
ffffffffc00013bc:	100080e7          	jalr	256(ra) # ffffffffc00004b8 <_ZN5rcore4arch6memory4init17hb5417464a73005c4E>
ffffffffc00013c0:	ef048513          	addi	a0,s1,-272
ffffffffc00013c4:	04300593          	li	a1,67
ffffffffc00013c8:	00b50023          	sb	a1,0(a0)
ffffffffc00013cc:	0000006f          	j	ffffffffc00013cc <rust_main+0x54>

ffffffffc00013d0 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE>:
ffffffffc00013d0:	f9010113          	addi	sp,sp,-112
ffffffffc00013d4:	06113423          	sd	ra,104(sp)
ffffffffc00013d8:	06813023          	sd	s0,96(sp)
ffffffffc00013dc:	04913c23          	sd	s1,88(sp)
ffffffffc00013e0:	05213823          	sd	s2,80(sp)
ffffffffc00013e4:	05313423          	sd	s3,72(sp)
ffffffffc00013e8:	05413023          	sd	s4,64(sp)
ffffffffc00013ec:	07010413          	addi	s0,sp,112
ffffffffc00013f0:	00050913          	mv	s2,a0
ffffffffc00013f4:	c0212537          	lui	a0,0xc0212
ffffffffc00013f8:	25050493          	addi	s1,a0,592 # ffffffffc0212250 <_ZN68_$LT$rcore..logging..LOG_LOCK$u20$as$u20$core..ops..deref..Deref$GT$5deref11__stability4LAZY17h81fb7a302365061dE.llvm.10418056936564566109>
ffffffffc00013fc:	00500593          	li	a1,5
ffffffffc0001400:	00048513          	mv	a0,s1
ffffffffc0001404:	00000097          	auipc	ra,0x0
ffffffffc0001408:	d74080e7          	jalr	-652(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc000140c:	02050e63          	beqz	a0,ffffffffc0001448 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x78>
ffffffffc0001410:	00100a13          	li	s4,1
ffffffffc0001414:	00500993          	li	s3,5
ffffffffc0001418:	01451c63          	bne	a0,s4,ffffffffc0001430 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x60>
ffffffffc000141c:	00048513          	mv	a0,s1
ffffffffc0001420:	00098593          	mv	a1,s3
ffffffffc0001424:	00000097          	auipc	ra,0x0
ffffffffc0001428:	d54080e7          	jalr	-684(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc000142c:	ff4508e3          	beq	a0,s4,ffffffffc000141c <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x4c>
ffffffffc0001430:	00200593          	li	a1,2
ffffffffc0001434:	12b51c63          	bne	a0,a1,ffffffffc000156c <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x19c>
ffffffffc0001438:	0084b503          	ld	a0,8(s1)
ffffffffc000143c:	07450a63          	beq	a0,s4,ffffffffc00014b0 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0xe0>
ffffffffc0001440:	00000513          	li	a0,0
ffffffffc0001444:	0700006f          	j	ffffffffc00014b4 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0xe4>
ffffffffc0001448:	f8043c23          	sd	zero,-104(s0)
ffffffffc000144c:	f9840593          	addi	a1,s0,-104
ffffffffc0001450:	00100993          	li	s3,1
ffffffffc0001454:	00500693          	li	a3,5
ffffffffc0001458:	00048513          	mv	a0,s1
ffffffffc000145c:	00098613          	mv	a2,s3
ffffffffc0001460:	00068713          	mv	a4,a3
ffffffffc0001464:	00000097          	auipc	ra,0x0
ffffffffc0001468:	e80080e7          	jalr	-384(ra) # ffffffffc00012e4 <__atomic_compare_exchange_8>
ffffffffc000146c:	0e050663          	beqz	a0,ffffffffc0001558 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x188>
ffffffffc0001470:	0134b423          	sd	s3,8(s1)
ffffffffc0001474:	0204a023          	sw	zero,32(s1)
ffffffffc0001478:	0004bc23          	sd	zero,24(s1)
ffffffffc000147c:	0004b823          	sd	zero,16(s1)
ffffffffc0001480:	fa040023          	sb	zero,-96(s0)
ffffffffc0001484:	f8943c23          	sd	s1,-104(s0)
ffffffffc0001488:	00200593          	li	a1,2
ffffffffc000148c:	00500613          	li	a2,5
ffffffffc0001490:	00048513          	mv	a0,s1
ffffffffc0001494:	00000097          	auipc	ra,0x0
ffffffffc0001498:	d40080e7          	jalr	-704(ra) # ffffffffc00011d4 <__atomic_store_8>
ffffffffc000149c:	0084ba03          	ld	s4,8(s1)
ffffffffc00014a0:	f9840513          	addi	a0,s0,-104
ffffffffc00014a4:	00002097          	auipc	ra,0x2
ffffffffc00014a8:	ba0080e7          	jalr	-1120(ra) # ffffffffc0003044 <_ZN74_$LT$spin..once..Finish$LT$$u27$a$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h654284c2fdccbe76E>
ffffffffc00014ac:	f93a1ae3          	bne	s4,s3,ffffffffc0001440 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x70>
ffffffffc00014b0:	01048513          	addi	a0,s1,16
ffffffffc00014b4:	00000097          	auipc	ra,0x0
ffffffffc00014b8:	1bc080e7          	jalr	444(ra) # ffffffffc0001670 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E>
ffffffffc00014bc:	00050493          	mv	s1,a0
ffffffffc00014c0:	00058993          	mv	s3,a1
ffffffffc00014c4:	fc840513          	addi	a0,s0,-56
ffffffffc00014c8:	f8a43823          	sd	a0,-112(s0)
ffffffffc00014cc:	02893503          	ld	a0,40(s2)
ffffffffc00014d0:	fca43023          	sd	a0,-64(s0)
ffffffffc00014d4:	02093503          	ld	a0,32(s2)
ffffffffc00014d8:	faa43c23          	sd	a0,-72(s0)
ffffffffc00014dc:	01893503          	ld	a0,24(s2)
ffffffffc00014e0:	faa43823          	sd	a0,-80(s0)
ffffffffc00014e4:	01093503          	ld	a0,16(s2)
ffffffffc00014e8:	faa43423          	sd	a0,-88(s0)
ffffffffc00014ec:	00893503          	ld	a0,8(s2)
ffffffffc00014f0:	faa43023          	sd	a0,-96(s0)
ffffffffc00014f4:	00093503          	ld	a0,0(s2)
ffffffffc00014f8:	f8a43c23          	sd	a0,-104(s0)
ffffffffc00014fc:	c0008537          	lui	a0,0xc0008
ffffffffc0001500:	03050593          	addi	a1,a0,48 # ffffffffc0008030 <anon.c6760425b32964bdc9a41a8ad7c4a892.10.llvm.11553907801089238901>
ffffffffc0001504:	f9040513          	addi	a0,s0,-112
ffffffffc0001508:	f9840613          	addi	a2,s0,-104
ffffffffc000150c:	00003097          	auipc	ra,0x3
ffffffffc0001510:	6e0080e7          	jalr	1760(ra) # ffffffffc0004bec <_ZN4core3fmt5write17h62151e7ab9dfc071E>
ffffffffc0001514:	08051863          	bnez	a0,ffffffffc00015a4 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x1d4>
ffffffffc0001518:	01048513          	addi	a0,s1,16
ffffffffc000151c:	00300613          	li	a2,3
ffffffffc0001520:	00000593          	li	a1,0
ffffffffc0001524:	00000097          	auipc	ra,0x0
ffffffffc0001528:	bf0080e7          	jalr	-1040(ra) # ffffffffc0001114 <__atomic_store_4>
ffffffffc000152c:	00098663          	beqz	s3,ffffffffc0001538 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x168>
ffffffffc0001530:	00200513          	li	a0,2
ffffffffc0001534:	10052073          	csrs	sstatus,a0
ffffffffc0001538:	04013a03          	ld	s4,64(sp)
ffffffffc000153c:	04813983          	ld	s3,72(sp)
ffffffffc0001540:	05013903          	ld	s2,80(sp)
ffffffffc0001544:	05813483          	ld	s1,88(sp)
ffffffffc0001548:	06013403          	ld	s0,96(sp)
ffffffffc000154c:	06813083          	ld	ra,104(sp)
ffffffffc0001550:	07010113          	addi	sp,sp,112
ffffffffc0001554:	00008067          	ret
ffffffffc0001558:	f9843503          	ld	a0,-104(s0)
ffffffffc000155c:	00100a13          	li	s4,1
ffffffffc0001560:	00500993          	li	s3,5
ffffffffc0001564:	ed4516e3          	bne	a0,s4,ffffffffc0001430 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x60>
ffffffffc0001568:	eb5ff06f          	j	ffffffffc000141c <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x4c>
ffffffffc000156c:	00300593          	li	a1,3
ffffffffc0001570:	00b51e63          	bne	a0,a1,ffffffffc000158c <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE+0x1bc>
ffffffffc0001574:	c0009537          	lui	a0,0xc0009
ffffffffc0001578:	95850513          	addi	a0,a0,-1704 # ffffffffc0008958 <anon.d6b9287b1461144585a146e0ccbddf8a.13.llvm.16099017380126128271>
ffffffffc000157c:	00003097          	auipc	ra,0x3
ffffffffc0001580:	bec080e7          	jalr	-1044(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0001584:	00000097          	auipc	ra,0x0
ffffffffc0001588:	b0c080e7          	jalr	-1268(ra) # ffffffffc0001090 <abort>
ffffffffc000158c:	c0009537          	lui	a0,0xc0009
ffffffffc0001590:	9a850513          	addi	a0,a0,-1624 # ffffffffc00089a8 <anon.d6b9287b1461144585a146e0ccbddf8a.15.llvm.16099017380126128271>
ffffffffc0001594:	00003097          	auipc	ra,0x3
ffffffffc0001598:	bd4080e7          	jalr	-1068(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc000159c:	00000097          	auipc	ra,0x0
ffffffffc00015a0:	af4080e7          	jalr	-1292(ra) # ffffffffc0001090 <abort>
ffffffffc00015a4:	fffff097          	auipc	ra,0xfffff
ffffffffc00015a8:	b34080e7          	jalr	-1228(ra) # ffffffffc00000d8 <_ZN4core6result13unwrap_failed17h15d22fce372aec20E.llvm.11553907801089238901>
ffffffffc00015ac:	00000097          	auipc	ra,0x0
ffffffffc00015b0:	ae4080e7          	jalr	-1308(ra) # ffffffffc0001090 <abort>

ffffffffc00015b4 <_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c5391660d5391c3E.llvm.9556222509071397828>:
ffffffffc00015b4:	fc010113          	addi	sp,sp,-64
ffffffffc00015b8:	02113c23          	sd	ra,56(sp)
ffffffffc00015bc:	02813823          	sd	s0,48(sp)
ffffffffc00015c0:	02913423          	sd	s1,40(sp)
ffffffffc00015c4:	03213023          	sd	s2,32(sp)
ffffffffc00015c8:	01313c23          	sd	s3,24(sp)
ffffffffc00015cc:	01413823          	sd	s4,16(sp)
ffffffffc00015d0:	01513423          	sd	s5,8(sp)
ffffffffc00015d4:	04010413          	addi	s0,sp,64
ffffffffc00015d8:	00058493          	mv	s1,a1
ffffffffc00015dc:	00050913          	mv	s2,a0
ffffffffc00015e0:	0505ea83          	lwu	s5,80(a1)
ffffffffc00015e4:	0085ba03          	ld	s4,8(a1)
ffffffffc00015e8:	0005b983          	ld	s3,0(a1)
ffffffffc00015ec:	00058513          	mv	a0,a1
ffffffffc00015f0:	00004097          	auipc	ra,0x4
ffffffffc00015f4:	178080e7          	jalr	376(ra) # ffffffffc0005768 <_ZN4core3fmt9Formatter9alternate17hdc33dae1f8ce40c8E>
ffffffffc00015f8:	0504e583          	lwu	a1,80(s1)
ffffffffc00015fc:	02050263          	beqz	a0,ffffffffc0001620 <_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c5391660d5391c3E.llvm.9556222509071397828+0x6c>
ffffffffc0001600:	0085e593          	ori	a1,a1,8
ffffffffc0001604:	04b4a823          	sw	a1,80(s1)
ffffffffc0001608:	0004b503          	ld	a0,0(s1)
ffffffffc000160c:	00051a63          	bnez	a0,ffffffffc0001620 <_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c5391660d5391c3E.llvm.9556222509071397828+0x6c>
ffffffffc0001610:	00100513          	li	a0,1
ffffffffc0001614:	00a4b023          	sd	a0,0(s1)
ffffffffc0001618:	01200513          	li	a0,18
ffffffffc000161c:	00a4b423          	sd	a0,8(s1)
ffffffffc0001620:	0045e513          	ori	a0,a1,4
ffffffffc0001624:	04a4a823          	sw	a0,80(s1)
ffffffffc0001628:	00093503          	ld	a0,0(s2)
ffffffffc000162c:	fca43023          	sd	a0,-64(s0)
ffffffffc0001630:	fc040513          	addi	a0,s0,-64
ffffffffc0001634:	00048593          	mv	a1,s1
ffffffffc0001638:	00002097          	auipc	ra,0x2
ffffffffc000163c:	d68080e7          	jalr	-664(ra) # ffffffffc00033a0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h4e3d261f6c3eb358E>
ffffffffc0001640:	0554a823          	sw	s5,80(s1)
ffffffffc0001644:	0144b423          	sd	s4,8(s1)
ffffffffc0001648:	0134b023          	sd	s3,0(s1)
ffffffffc000164c:	00813a83          	ld	s5,8(sp)
ffffffffc0001650:	01013a03          	ld	s4,16(sp)
ffffffffc0001654:	01813983          	ld	s3,24(sp)
ffffffffc0001658:	02013903          	ld	s2,32(sp)
ffffffffc000165c:	02813483          	ld	s1,40(sp)
ffffffffc0001660:	03013403          	ld	s0,48(sp)
ffffffffc0001664:	03813083          	ld	ra,56(sp)
ffffffffc0001668:	04010113          	addi	sp,sp,64
ffffffffc000166c:	00008067          	ret

ffffffffc0001670 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E>:
ffffffffc0001670:	f1010113          	addi	sp,sp,-240
ffffffffc0001674:	0e113423          	sd	ra,232(sp)
ffffffffc0001678:	0e813023          	sd	s0,224(sp)
ffffffffc000167c:	0c913c23          	sd	s1,216(sp)
ffffffffc0001680:	0d213823          	sd	s2,208(sp)
ffffffffc0001684:	0d313423          	sd	s3,200(sp)
ffffffffc0001688:	0d413023          	sd	s4,192(sp)
ffffffffc000168c:	0b513c23          	sd	s5,184(sp)
ffffffffc0001690:	0b613823          	sd	s6,176(sp)
ffffffffc0001694:	0b713423          	sd	s7,168(sp)
ffffffffc0001698:	0b813023          	sd	s8,160(sp)
ffffffffc000169c:	09913c23          	sd	s9,152(sp)
ffffffffc00016a0:	09a13823          	sd	s10,144(sp)
ffffffffc00016a4:	09b13423          	sd	s11,136(sp)
ffffffffc00016a8:	0f010413          	addi	s0,sp,240
ffffffffc00016ac:	00050993          	mv	s3,a0
ffffffffc00016b0:	10002573          	csrr	a0,sstatus
ffffffffc00016b4:	f6a43023          	sd	a0,-160(s0)
ffffffffc00016b8:	f6040513          	addi	a0,s0,-160
ffffffffc00016bc:	00100a93          	li	s5,1
ffffffffc00016c0:	000a8593          	mv	a1,s5
ffffffffc00016c4:	00001097          	auipc	ra,0x1
ffffffffc00016c8:	644080e7          	jalr	1604(ra) # ffffffffc0002d08 <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>
ffffffffc00016cc:	f0a43c23          	sd	a0,-232(s0)
ffffffffc00016d0:	00200693          	li	a3,2
ffffffffc00016d4:	1006b073          	csrc	sstatus,a3
ffffffffc00016d8:	f6042023          	sw	zero,-160(s0)
ffffffffc00016dc:	01098493          	addi	s1,s3,16
ffffffffc00016e0:	f6040593          	addi	a1,s0,-160
ffffffffc00016e4:	00048513          	mv	a0,s1
ffffffffc00016e8:	000a8613          	mv	a2,s5
ffffffffc00016ec:	00068713          	mv	a4,a3
ffffffffc00016f0:	00000097          	auipc	ra,0x0
ffffffffc00016f4:	b48080e7          	jalr	-1208(ra) # ffffffffc0001238 <__atomic_compare_exchange_4>
ffffffffc00016f8:	12051263          	bnez	a0,ffffffffc000181c <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0x1ac>
ffffffffc00016fc:	00100a93          	li	s5,1
ffffffffc0001700:	00100d37          	lui	s10,0x100
ffffffffc0001704:	c0213537          	lui	a0,0xc0213
ffffffffc0001708:	08050b93          	addi	s7,a0,128 # ffffffffc0213080 <_ZN3log20MAX_LOG_LEVEL_FILTER17hc28b96925e30fb0cE>
ffffffffc000170c:	c0001537          	lui	a0,0xc0001
ffffffffc0001710:	5b450d93          	addi	s11,a0,1460 # ffffffffc00015b4 <_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c5391660d5391c3E.llvm.9556222509071397828>
ffffffffc0001714:	c0004537          	lui	a0,0xc0004
ffffffffc0001718:	d5c50913          	addi	s2,a0,-676 # ffffffffc0003d5c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>
ffffffffc000171c:	00300b13          	li	s6,3
ffffffffc0001720:	c0009537          	lui	a0,0xc0009
ffffffffc0001724:	a5050a13          	addi	s4,a0,-1456 # ffffffffc0008a50 <anon.c8ae6708d3f9347f8b66c09830c9fdd6.3.llvm.9556222509071397828>
ffffffffc0001728:	c0009537          	lui	a0,0xc0009
ffffffffc000172c:	aa850c13          	addi	s8,a0,-1368 # ffffffffc0008aa8 <anon.c8ae6708d3f9347f8b66c09830c9fdd6.6.llvm.9556222509071397828>
ffffffffc0001730:	00048513          	mv	a0,s1
ffffffffc0001734:	00000593          	li	a1,0
ffffffffc0001738:	00000097          	auipc	ra,0x0
ffffffffc000173c:	980080e7          	jalr	-1664(ra) # ffffffffc00010b8 <__atomic_load_4>
ffffffffc0001740:	02051513          	slli	a0,a0,0x20
ffffffffc0001744:	02055513          	srli	a0,a0,0x20
ffffffffc0001748:	0a050863          	beqz	a0,ffffffffc00017f8 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0x188>
ffffffffc000174c:	00000c93          	li	s9,0
ffffffffc0001750:	00000013          	nop
ffffffffc0001754:	001c8c93          	addi	s9,s9,1 # 4001 <XLENb+0x3fc1>
ffffffffc0001758:	020c9513          	slli	a0,s9,0x20
ffffffffc000175c:	02055513          	srli	a0,a0,0x20
ffffffffc0001760:	07a51e63          	bne	a0,s10,ffffffffc00017dc <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0x16c>
ffffffffc0001764:	0089b503          	ld	a0,8(s3)
ffffffffc0001768:	0009b583          	ld	a1,0(s3)
ffffffffc000176c:	f2b43023          	sd	a1,-224(s0)
ffffffffc0001770:	f2a43423          	sd	a0,-216(s0)
ffffffffc0001774:	000b8513          	mv	a0,s7
ffffffffc0001778:	00000593          	li	a1,0
ffffffffc000177c:	00000097          	auipc	ra,0x0
ffffffffc0001780:	9fc080e7          	jalr	-1540(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc0001784:	04050c63          	beqz	a0,ffffffffc00017dc <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0x16c>
ffffffffc0001788:	f9b43423          	sd	s11,-120(s0)
ffffffffc000178c:	f9040513          	addi	a0,s0,-112
ffffffffc0001790:	f8a43023          	sd	a0,-128(s0)
ffffffffc0001794:	f2840513          	addi	a0,s0,-216
ffffffffc0001798:	f6a43823          	sd	a0,-144(s0)
ffffffffc000179c:	f7243c23          	sd	s2,-136(s0)
ffffffffc00017a0:	f7243423          	sd	s2,-152(s0)
ffffffffc00017a4:	f2040513          	addi	a0,s0,-224
ffffffffc00017a8:	f6a43023          	sd	a0,-160(s0)
ffffffffc00017ac:	f9343823          	sd	s3,-112(s0)
ffffffffc00017b0:	f6040513          	addi	a0,s0,-160
ffffffffc00017b4:	f4a43823          	sd	a0,-176(s0)
ffffffffc00017b8:	f4043023          	sd	zero,-192(s0)
ffffffffc00017bc:	f5643c23          	sd	s6,-168(s0)
ffffffffc00017c0:	f3643c23          	sd	s6,-200(s0)
ffffffffc00017c4:	f3443823          	sd	s4,-208(s0)
ffffffffc00017c8:	f3040513          	addi	a0,s0,-208
ffffffffc00017cc:	000a8593          	mv	a1,s5
ffffffffc00017d0:	000c0613          	mv	a2,s8
ffffffffc00017d4:	00002097          	auipc	ra,0x2
ffffffffc00017d8:	930080e7          	jalr	-1744(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc00017dc:	00048513          	mv	a0,s1
ffffffffc00017e0:	00000593          	li	a1,0
ffffffffc00017e4:	00000097          	auipc	ra,0x0
ffffffffc00017e8:	8d4080e7          	jalr	-1836(ra) # ffffffffc00010b8 <__atomic_load_4>
ffffffffc00017ec:	02051513          	slli	a0,a0,0x20
ffffffffc00017f0:	02055513          	srli	a0,a0,0x20
ffffffffc00017f4:	f4051ee3          	bnez	a0,ffffffffc0001750 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0xe0>
ffffffffc00017f8:	f6042023          	sw	zero,-160(s0)
ffffffffc00017fc:	00048513          	mv	a0,s1
ffffffffc0001800:	f6040593          	addi	a1,s0,-160
ffffffffc0001804:	000a8613          	mv	a2,s5
ffffffffc0001808:	00200693          	li	a3,2
ffffffffc000180c:	00068713          	mv	a4,a3
ffffffffc0001810:	00000097          	auipc	ra,0x0
ffffffffc0001814:	a28080e7          	jalr	-1496(ra) # ffffffffc0001238 <__atomic_compare_exchange_4>
ffffffffc0001818:	f0050ce3          	beqz	a0,ffffffffc0001730 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0xc0>
ffffffffc000181c:	00018693          	mv	a3,gp
ffffffffc0001820:	04000513          	li	a0,64
ffffffffc0001824:	08a6f263          	bgeu	a3,a0,ffffffffc00018a8 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0x238>
ffffffffc0001828:	00018493          	mv	s1,gp
ffffffffc000182c:	03800593          	li	a1,56
ffffffffc0001830:	00068513          	mv	a0,a3
ffffffffc0001834:	00006097          	auipc	ra,0x6
ffffffffc0001838:	a74080e7          	jalr	-1420(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc000183c:	c02125b7          	lui	a1,0xc0212
ffffffffc0001840:	27858593          	addi	a1,a1,632 # ffffffffc0212278 <_ZN5rcore7process10PROCESSORS17hf462062560b59999E.llvm.11088775118193283480>
ffffffffc0001844:	00b50533          	add	a0,a0,a1
ffffffffc0001848:	00001097          	auipc	ra,0x1
ffffffffc000184c:	514080e7          	jalr	1300(ra) # ffffffffc0002d5c <_ZN12rcore_thread9processor9Processor10tid_option17hadef156e4b87ab78E>
ffffffffc0001850:	0099b023          	sd	s1,0(s3)
ffffffffc0001854:	00000613          	li	a2,0
ffffffffc0001858:	00050463          	beqz	a0,ffffffffc0001860 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3e96c7e9562858a9E+0x1f0>
ffffffffc000185c:	00058613          	mv	a2,a1
ffffffffc0001860:	00c9b423          	sd	a2,8(s3)
ffffffffc0001864:	00098513          	mv	a0,s3
ffffffffc0001868:	f1843583          	ld	a1,-232(s0)
ffffffffc000186c:	08813d83          	ld	s11,136(sp)
ffffffffc0001870:	09013d03          	ld	s10,144(sp)
ffffffffc0001874:	09813c83          	ld	s9,152(sp)
ffffffffc0001878:	0a013c03          	ld	s8,160(sp)
ffffffffc000187c:	0a813b83          	ld	s7,168(sp)
ffffffffc0001880:	0b013b03          	ld	s6,176(sp)
ffffffffc0001884:	0b813a83          	ld	s5,184(sp)
ffffffffc0001888:	0c013a03          	ld	s4,192(sp)
ffffffffc000188c:	0c813983          	ld	s3,200(sp)
ffffffffc0001890:	0d013903          	ld	s2,208(sp)
ffffffffc0001894:	0d813483          	ld	s1,216(sp)
ffffffffc0001898:	0e013403          	ld	s0,224(sp)
ffffffffc000189c:	0e813083          	ld	ra,232(sp)
ffffffffc00018a0:	0f010113          	addi	sp,sp,240
ffffffffc00018a4:	00008067          	ret
ffffffffc00018a8:	c0009537          	lui	a0,0xc0009
ffffffffc00018ac:	ee850513          	addi	a0,a0,-280 # ffffffffc0008ee8 <anon.3165ce431a118fc2f5305435895062e5.50.llvm.11088775118193283480>
ffffffffc00018b0:	04000613          	li	a2,64
ffffffffc00018b4:	00068593          	mv	a1,a3
ffffffffc00018b8:	00003097          	auipc	ra,0x3
ffffffffc00018bc:	924080e7          	jalr	-1756(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc00018c0:	fffff097          	auipc	ra,0xfffff
ffffffffc00018c4:	7d0080e7          	jalr	2000(ra) # ffffffffc0001090 <abort>

ffffffffc00018c8 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3ed0991f818da4a7E>:
ffffffffc00018c8:	f1010113          	addi	sp,sp,-240
ffffffffc00018cc:	0e113423          	sd	ra,232(sp)
ffffffffc00018d0:	0e813023          	sd	s0,224(sp)
ffffffffc00018d4:	0c913c23          	sd	s1,216(sp)
ffffffffc00018d8:	0d213823          	sd	s2,208(sp)
ffffffffc00018dc:	0d313423          	sd	s3,200(sp)
ffffffffc00018e0:	0d413023          	sd	s4,192(sp)
ffffffffc00018e4:	0b513c23          	sd	s5,184(sp)
ffffffffc00018e8:	0b613823          	sd	s6,176(sp)
ffffffffc00018ec:	0b713423          	sd	s7,168(sp)
ffffffffc00018f0:	0b813023          	sd	s8,160(sp)
ffffffffc00018f4:	09913c23          	sd	s9,152(sp)
ffffffffc00018f8:	09a13823          	sd	s10,144(sp)
ffffffffc00018fc:	09b13423          	sd	s11,136(sp)
ffffffffc0001900:	0f010413          	addi	s0,sp,240
ffffffffc0001904:	00050993          	mv	s3,a0
ffffffffc0001908:	10002573          	csrr	a0,sstatus
ffffffffc000190c:	f6a43023          	sd	a0,-160(s0)
ffffffffc0001910:	f6040513          	addi	a0,s0,-160
ffffffffc0001914:	00100a93          	li	s5,1
ffffffffc0001918:	000a8593          	mv	a1,s5
ffffffffc000191c:	00001097          	auipc	ra,0x1
ffffffffc0001920:	3ec080e7          	jalr	1004(ra) # ffffffffc0002d08 <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>
ffffffffc0001924:	f0a43c23          	sd	a0,-232(s0)
ffffffffc0001928:	00200693          	li	a3,2
ffffffffc000192c:	1006b073          	csrc	sstatus,a3
ffffffffc0001930:	f6042023          	sw	zero,-160(s0)
ffffffffc0001934:	01098493          	addi	s1,s3,16
ffffffffc0001938:	f6040593          	addi	a1,s0,-160
ffffffffc000193c:	00048513          	mv	a0,s1
ffffffffc0001940:	000a8613          	mv	a2,s5
ffffffffc0001944:	00068713          	mv	a4,a3
ffffffffc0001948:	00000097          	auipc	ra,0x0
ffffffffc000194c:	8f0080e7          	jalr	-1808(ra) # ffffffffc0001238 <__atomic_compare_exchange_4>
ffffffffc0001950:	12051263          	bnez	a0,ffffffffc0001a74 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3ed0991f818da4a7E+0x1ac>
ffffffffc0001954:	00100a93          	li	s5,1
ffffffffc0001958:	00100d37          	lui	s10,0x100
ffffffffc000195c:	c0213537          	lui	a0,0xc0213
ffffffffc0001960:	08050b93          	addi	s7,a0,128 # ffffffffc0213080 <_ZN3log20MAX_LOG_LEVEL_FILTER17hc28b96925e30fb0cE>
ffffffffc0001964:	c0001537          	lui	a0,0xc0001
ffffffffc0001968:	5b450d93          	addi	s11,a0,1460 # ffffffffc00015b4 <_ZN52_$LT$$BP$const$u20$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h3c5391660d5391c3E.llvm.9556222509071397828>
ffffffffc000196c:	c0004537          	lui	a0,0xc0004
ffffffffc0001970:	d5c50913          	addi	s2,a0,-676 # ffffffffc0003d5c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>
ffffffffc0001974:	00300b13          	li	s6,3
ffffffffc0001978:	c0009537          	lui	a0,0xc0009
ffffffffc000197c:	a5050a13          	addi	s4,a0,-1456 # ffffffffc0008a50 <anon.c8ae6708d3f9347f8b66c09830c9fdd6.3.llvm.9556222509071397828>
ffffffffc0001980:	c0009537          	lui	a0,0xc0009
ffffffffc0001984:	aa850c13          	addi	s8,a0,-1368 # ffffffffc0008aa8 <anon.c8ae6708d3f9347f8b66c09830c9fdd6.6.llvm.9556222509071397828>
ffffffffc0001988:	00048513          	mv	a0,s1
ffffffffc000198c:	00000593          	li	a1,0
ffffffffc0001990:	fffff097          	auipc	ra,0xfffff
ffffffffc0001994:	728080e7          	jalr	1832(ra) # ffffffffc00010b8 <__atomic_load_4>
ffffffffc0001998:	02051513          	slli	a0,a0,0x20
ffffffffc000199c:	02055513          	srli	a0,a0,0x20
ffffffffc00019a0:	0a050863          	beqz	a0,ffffffffc0001a50 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3ed0991f818da4a7E+0x188>
ffffffffc00019a4:	00000c93          	li	s9,0
ffffffffc00019a8:	00000013          	nop
ffffffffc00019ac:	001c8c93          	addi	s9,s9,1
ffffffffc00019b0:	020c9513          	slli	a0,s9,0x20
ffffffffc00019b4:	02055513          	srli	a0,a0,0x20
ffffffffc00019b8:	07a51e63          	bne	a0,s10,ffffffffc0001a34 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3ed0991f818da4a7E+0x16c>
ffffffffc00019bc:	0089b503          	ld	a0,8(s3)
ffffffffc00019c0:	0009b583          	ld	a1,0(s3)
ffffffffc00019c4:	f2b43023          	sd	a1,-224(s0)
ffffffffc00019c8:	f2a43423          	sd	a0,-216(s0)
ffffffffc00019cc:	000b8513          	mv	a0,s7
ffffffffc00019d0:	00000593          	li	a1,0
ffffffffc00019d4:	fffff097          	auipc	ra,0xfffff
ffffffffc00019d8:	7a4080e7          	jalr	1956(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc00019dc:	04050c63          	beqz	a0,ffffffffc0001a34 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3ed0991f818da4a7E+0x16c>
ffffffffc00019e0:	f9b43423          	sd	s11,-120(s0)
ffffffffc00019e4:	f9040513          	addi	a0,s0,-112
ffffffffc00019e8:	f8a43023          	sd	a0,-128(s0)
ffffffffc00019ec:	f2840513          	addi	a0,s0,-216
ffffffffc00019f0:	f6a43823          	sd	a0,-144(s0)
ffffffffc00019f4:	f7243c23          	sd	s2,-136(s0)
ffffffffc00019f8:	f7243423          	sd	s2,-152(s0)
ffffffffc00019fc:	f2040513          	addi	a0,s0,-224
ffffffffc0001a00:	f6a43023          	sd	a0,-160(s0)
ffffffffc0001a04:	f9343823          	sd	s3,-112(s0)
ffffffffc0001a08:	f6040513          	addi	a0,s0,-160
ffffffffc0001a0c:	f4a43823          	sd	a0,-176(s0)
ffffffffc0001a10:	f4043023          	sd	zero,-192(s0)
ffffffffc0001a14:	f5643c23          	sd	s6,-168(s0)
ffffffffc0001a18:	f3643c23          	sd	s6,-200(s0)
ffffffffc0001a1c:	f3443823          	sd	s4,-208(s0)
ffffffffc0001a20:	f3040513          	addi	a0,s0,-208
ffffffffc0001a24:	000a8593          	mv	a1,s5
ffffffffc0001a28:	000c0613          	mv	a2,s8
ffffffffc0001a2c:	00001097          	auipc	ra,0x1
ffffffffc0001a30:	6d8080e7          	jalr	1752(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc0001a34:	00048513          	mv	a0,s1
ffffffffc0001a38:	00000593          	li	a1,0
ffffffffc0001a3c:	fffff097          	auipc	ra,0xfffff
ffffffffc0001a40:	67c080e7          	jalr	1660(ra) # ffffffffc00010b8 <__atomic_load_4>
ffffffffc0001a44:	02051513          	slli	a0,a0,0x20
ffffffffc0001a48:	02055513          	srli	a0,a0,0x20
ffffffffc0001a4c:	f4051ee3          	bnez	a0,ffffffffc00019a8 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3ed0991f818da4a7E+0xe0>
ffffffffc0001a50:	f6042023          	sw	zero,-160(s0)
ffffffffc0001a54:	00048513          	mv	a0,s1
ffffffffc0001a58:	f6040593          	addi	a1,s0,-160
ffffffffc0001a5c:	000a8613          	mv	a2,s5
ffffffffc0001a60:	00200693          	li	a3,2
ffffffffc0001a64:	00068713          	mv	a4,a3
ffffffffc0001a68:	fffff097          	auipc	ra,0xfffff
ffffffffc0001a6c:	7d0080e7          	jalr	2000(ra) # ffffffffc0001238 <__atomic_compare_exchange_4>
ffffffffc0001a70:	f0050ce3          	beqz	a0,ffffffffc0001988 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3ed0991f818da4a7E+0xc0>
ffffffffc0001a74:	00018693          	mv	a3,gp
ffffffffc0001a78:	04000513          	li	a0,64
ffffffffc0001a7c:	08a6f263          	bgeu	a3,a0,ffffffffc0001b00 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3ed0991f818da4a7E+0x238>
ffffffffc0001a80:	00018493          	mv	s1,gp
ffffffffc0001a84:	03800593          	li	a1,56
ffffffffc0001a88:	00068513          	mv	a0,a3
ffffffffc0001a8c:	00006097          	auipc	ra,0x6
ffffffffc0001a90:	81c080e7          	jalr	-2020(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0001a94:	c02125b7          	lui	a1,0xc0212
ffffffffc0001a98:	27858593          	addi	a1,a1,632 # ffffffffc0212278 <_ZN5rcore7process10PROCESSORS17hf462062560b59999E.llvm.11088775118193283480>
ffffffffc0001a9c:	00b50533          	add	a0,a0,a1
ffffffffc0001aa0:	00001097          	auipc	ra,0x1
ffffffffc0001aa4:	2bc080e7          	jalr	700(ra) # ffffffffc0002d5c <_ZN12rcore_thread9processor9Processor10tid_option17hadef156e4b87ab78E>
ffffffffc0001aa8:	0099b023          	sd	s1,0(s3)
ffffffffc0001aac:	00000613          	li	a2,0
ffffffffc0001ab0:	00050463          	beqz	a0,ffffffffc0001ab8 <_ZN52_$LT$rcore..sync..mutex..Mutex$LT$T$C$$u20$S$GT$$GT$4lock17h3ed0991f818da4a7E+0x1f0>
ffffffffc0001ab4:	00058613          	mv	a2,a1
ffffffffc0001ab8:	00c9b423          	sd	a2,8(s3)
ffffffffc0001abc:	00098513          	mv	a0,s3
ffffffffc0001ac0:	f1843583          	ld	a1,-232(s0)
ffffffffc0001ac4:	08813d83          	ld	s11,136(sp)
ffffffffc0001ac8:	09013d03          	ld	s10,144(sp)
ffffffffc0001acc:	09813c83          	ld	s9,152(sp)
ffffffffc0001ad0:	0a013c03          	ld	s8,160(sp)
ffffffffc0001ad4:	0a813b83          	ld	s7,168(sp)
ffffffffc0001ad8:	0b013b03          	ld	s6,176(sp)
ffffffffc0001adc:	0b813a83          	ld	s5,184(sp)
ffffffffc0001ae0:	0c013a03          	ld	s4,192(sp)
ffffffffc0001ae4:	0c813983          	ld	s3,200(sp)
ffffffffc0001ae8:	0d013903          	ld	s2,208(sp)
ffffffffc0001aec:	0d813483          	ld	s1,216(sp)
ffffffffc0001af0:	0e013403          	ld	s0,224(sp)
ffffffffc0001af4:	0e813083          	ld	ra,232(sp)
ffffffffc0001af8:	0f010113          	addi	sp,sp,240
ffffffffc0001afc:	00008067          	ret
ffffffffc0001b00:	c0009537          	lui	a0,0xc0009
ffffffffc0001b04:	ee850513          	addi	a0,a0,-280 # ffffffffc0008ee8 <anon.3165ce431a118fc2f5305435895062e5.50.llvm.11088775118193283480>
ffffffffc0001b08:	04000613          	li	a2,64
ffffffffc0001b0c:	00068593          	mv	a1,a3
ffffffffc0001b10:	00002097          	auipc	ra,0x2
ffffffffc0001b14:	6cc080e7          	jalr	1740(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0001b18:	fffff097          	auipc	ra,0xfffff
ffffffffc0001b1c:	578080e7          	jalr	1400(ra) # ffffffffc0001090 <abort>

ffffffffc0001b20 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$5alloc17h3b482a02fbc9452aE>:
ffffffffc0001b20:	fc010113          	addi	sp,sp,-64
ffffffffc0001b24:	02113c23          	sd	ra,56(sp)
ffffffffc0001b28:	02813823          	sd	s0,48(sp)
ffffffffc0001b2c:	02913423          	sd	s1,40(sp)
ffffffffc0001b30:	03213023          	sd	s2,32(sp)
ffffffffc0001b34:	01313c23          	sd	s3,24(sp)
ffffffffc0001b38:	01413823          	sd	s4,16(sp)
ffffffffc0001b3c:	01513423          	sd	s5,8(sp)
ffffffffc0001b40:	01613023          	sd	s6,0(sp)
ffffffffc0001b44:	04010413          	addi	s0,sp,64
ffffffffc0001b48:	00050993          	mv	s3,a0
ffffffffc0001b4c:	00055503          	lhu	a0,0(a0)
ffffffffc0001b50:	0c050663          	beqz	a0,ffffffffc0001c1c <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$5alloc17h3b482a02fbc9452aE+0xfc>
ffffffffc0001b54:	00001097          	auipc	ra,0x1
ffffffffc0001b58:	cf8080e7          	jalr	-776(ra) # ffffffffc000284c <_ZN16bitmap_allocator10log2_naive17hd276a9d46a069d19E>
ffffffffc0001b5c:	00050913          	mv	s2,a0
ffffffffc0001b60:	00f00a13          	li	s4,15
ffffffffc0001b64:	0eaa6e63          	bltu	s4,a0,ffffffffc0001c60 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$5alloc17h3b482a02fbc9452aE+0x140>
ffffffffc0001b68:	02200593          	li	a1,34
ffffffffc0001b6c:	00090513          	mv	a0,s2
ffffffffc0001b70:	00005097          	auipc	ra,0x5
ffffffffc0001b74:	738080e7          	jalr	1848(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0001b78:	00a984b3          	add	s1,s3,a0
ffffffffc0001b7c:	0024d503          	lhu	a0,2(s1)
ffffffffc0001b80:	0c050463          	beqz	a0,ffffffffc0001c48 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$5alloc17h3b482a02fbc9452aE+0x128>
ffffffffc0001b84:	00001097          	auipc	ra,0x1
ffffffffc0001b88:	cc8080e7          	jalr	-824(ra) # ffffffffc000284c <_ZN16bitmap_allocator10log2_naive17hd276a9d46a069d19E>
ffffffffc0001b8c:	00050a93          	mv	s5,a0
ffffffffc0001b90:	0eaa6863          	bltu	s4,a0,ffffffffc0001c80 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$5alloc17h3b482a02fbc9452aE+0x160>
ffffffffc0001b94:	02200593          	li	a1,34
ffffffffc0001b98:	00090513          	mv	a0,s2
ffffffffc0001b9c:	00005097          	auipc	ra,0x5
ffffffffc0001ba0:	70c080e7          	jalr	1804(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0001ba4:	00a98533          	add	a0,s3,a0
ffffffffc0001ba8:	001a9593          	slli	a1,s5,0x1
ffffffffc0001bac:	00b50533          	add	a0,a0,a1
ffffffffc0001bb0:	00450b13          	addi	s6,a0,4
ffffffffc0001bb4:	000b0513          	mv	a0,s6
ffffffffc0001bb8:	00001097          	auipc	ra,0x1
ffffffffc0001bbc:	aac080e7          	jalr	-1364(ra) # ffffffffc0002664 <_ZN75_$LT$bitmap_allocator..BitAlloc16$u20$as$u20$bitmap_allocator..BitAlloc$GT$5alloc17h8b46d8728195b781E>
ffffffffc0001bc0:	08050463          	beqz	a0,ffffffffc0001c48 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$5alloc17h3b482a02fbc9452aE+0x128>
ffffffffc0001bc4:	00058a13          	mv	s4,a1
ffffffffc0001bc8:	00248493          	addi	s1,s1,2
ffffffffc0001bcc:	000b0513          	mv	a0,s6
ffffffffc0001bd0:	00001097          	auipc	ra,0x1
ffffffffc0001bd4:	c54080e7          	jalr	-940(ra) # ffffffffc0002824 <_ZN75_$LT$bitmap_allocator..BitAlloc16$u20$as$u20$bitmap_allocator..BitAlloc$GT$3any17hbaaf7e36671fc094E>
ffffffffc0001bd8:	00050613          	mv	a2,a0
ffffffffc0001bdc:	00048513          	mv	a0,s1
ffffffffc0001be0:	000a8593          	mv	a1,s5
ffffffffc0001be4:	00001097          	auipc	ra,0x1
ffffffffc0001be8:	0b8080e7          	jalr	184(ra) # ffffffffc0002c9c <_ZN43_$LT$i16$u20$as$u20$bit_field..BitField$GT$7set_bit17hc5a6a9b6c75218c7E>
ffffffffc0001bec:	0004d503          	lhu	a0,0(s1)
ffffffffc0001bf0:	00a03633          	snez	a2,a0
ffffffffc0001bf4:	00098513          	mv	a0,s3
ffffffffc0001bf8:	00090593          	mv	a1,s2
ffffffffc0001bfc:	00001097          	auipc	ra,0x1
ffffffffc0001c00:	0a0080e7          	jalr	160(ra) # ffffffffc0002c9c <_ZN43_$LT$i16$u20$as$u20$bit_field..BitField$GT$7set_bit17hc5a6a9b6c75218c7E>
ffffffffc0001c04:	00891513          	slli	a0,s2,0x8
ffffffffc0001c08:	004a9593          	slli	a1,s5,0x4
ffffffffc0001c0c:	00a58533          	add	a0,a1,a0
ffffffffc0001c10:	014505b3          	add	a1,a0,s4
ffffffffc0001c14:	00100513          	li	a0,1
ffffffffc0001c18:	0080006f          	j	ffffffffc0001c20 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$5alloc17h3b482a02fbc9452aE+0x100>
ffffffffc0001c1c:	00000513          	li	a0,0
ffffffffc0001c20:	00013b03          	ld	s6,0(sp)
ffffffffc0001c24:	00813a83          	ld	s5,8(sp)
ffffffffc0001c28:	01013a03          	ld	s4,16(sp)
ffffffffc0001c2c:	01813983          	ld	s3,24(sp)
ffffffffc0001c30:	02013903          	ld	s2,32(sp)
ffffffffc0001c34:	02813483          	ld	s1,40(sp)
ffffffffc0001c38:	03013403          	ld	s0,48(sp)
ffffffffc0001c3c:	03813083          	ld	ra,56(sp)
ffffffffc0001c40:	04010113          	addi	sp,sp,64
ffffffffc0001c44:	00008067          	ret
ffffffffc0001c48:	c0009537          	lui	a0,0xc0009
ffffffffc0001c4c:	b8050513          	addi	a0,a0,-1152 # ffffffffc0008b80 <anon.3165ce431a118fc2f5305435895062e5.2.llvm.11088775118193283480>
ffffffffc0001c50:	00002097          	auipc	ra,0x2
ffffffffc0001c54:	518080e7          	jalr	1304(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0001c58:	fffff097          	auipc	ra,0xfffff
ffffffffc0001c5c:	438080e7          	jalr	1080(ra) # ffffffffc0001090 <abort>
ffffffffc0001c60:	c0009537          	lui	a0,0xc0009
ffffffffc0001c64:	d1050513          	addi	a0,a0,-752 # ffffffffc0008d10 <anon.3165ce431a118fc2f5305435895062e5.35.llvm.11088775118193283480>
ffffffffc0001c68:	01000613          	li	a2,16
ffffffffc0001c6c:	00090593          	mv	a1,s2
ffffffffc0001c70:	00002097          	auipc	ra,0x2
ffffffffc0001c74:	56c080e7          	jalr	1388(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0001c78:	fffff097          	auipc	ra,0xfffff
ffffffffc0001c7c:	418080e7          	jalr	1048(ra) # ffffffffc0001090 <abort>
ffffffffc0001c80:	c0009537          	lui	a0,0xc0009
ffffffffc0001c84:	d1050513          	addi	a0,a0,-752 # ffffffffc0008d10 <anon.3165ce431a118fc2f5305435895062e5.35.llvm.11088775118193283480>
ffffffffc0001c88:	01000613          	li	a2,16
ffffffffc0001c8c:	000a8593          	mv	a1,s5
ffffffffc0001c90:	00002097          	auipc	ra,0x2
ffffffffc0001c94:	54c080e7          	jalr	1356(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0001c98:	fffff097          	auipc	ra,0xfffff
ffffffffc0001c9c:	3f8080e7          	jalr	1016(ra) # ffffffffc0001090 <abort>

ffffffffc0001ca0 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE>:
ffffffffc0001ca0:	f6010113          	addi	sp,sp,-160
ffffffffc0001ca4:	08113c23          	sd	ra,152(sp)
ffffffffc0001ca8:	08813823          	sd	s0,144(sp)
ffffffffc0001cac:	08913423          	sd	s1,136(sp)
ffffffffc0001cb0:	09213023          	sd	s2,128(sp)
ffffffffc0001cb4:	07313c23          	sd	s3,120(sp)
ffffffffc0001cb8:	07413823          	sd	s4,112(sp)
ffffffffc0001cbc:	07513423          	sd	s5,104(sp)
ffffffffc0001cc0:	07613023          	sd	s6,96(sp)
ffffffffc0001cc4:	05713c23          	sd	s7,88(sp)
ffffffffc0001cc8:	05813823          	sd	s8,80(sp)
ffffffffc0001ccc:	05913423          	sd	s9,72(sp)
ffffffffc0001cd0:	05a13023          	sd	s10,64(sp)
ffffffffc0001cd4:	03b13c23          	sd	s11,56(sp)
ffffffffc0001cd8:	0a010413          	addi	s0,sp,160
ffffffffc0001cdc:	20b66663          	bltu	a2,a1,ffffffffc0001ee8 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0x248>
ffffffffc0001ce0:	00060493          	mv	s1,a2
ffffffffc0001ce4:	00050913          	mv	s2,a0
ffffffffc0001ce8:	00001537          	lui	a0,0x1
ffffffffc0001cec:	0015051b          	addiw	a0,a0,1
ffffffffc0001cf0:	20a67863          	bgeu	a2,a0,ffffffffc0001f00 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0x260>
ffffffffc0001cf4:	00058a93          	mv	s5,a1
ffffffffc0001cf8:	0085d593          	srli	a1,a1,0x8
ffffffffc0001cfc:	fff48513          	addi	a0,s1,-1
ffffffffc0001d00:	00855513          	srli	a0,a0,0x8
ffffffffc0001d04:	f8b43423          	sd	a1,-120(s0)
ffffffffc0001d08:	f8a43023          	sd	a0,-128(s0)
ffffffffc0001d0c:	18b56063          	bltu	a0,a1,ffffffffc0001e8c <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0x1ec>
ffffffffc0001d10:	02200593          	li	a1,34
ffffffffc0001d14:	f8843983          	ld	s3,-120(s0)
ffffffffc0001d18:	00098513          	mv	a0,s3
ffffffffc0001d1c:	00005097          	auipc	ra,0x5
ffffffffc0001d20:	58c080e7          	jalr	1420(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0001d24:	00a90533          	add	a0,s2,a0
ffffffffc0001d28:	0ff4f593          	andi	a1,s1,255
ffffffffc0001d2c:	f6b43823          	sd	a1,-144(s0)
ffffffffc0001d30:	0084d593          	srli	a1,s1,0x8
ffffffffc0001d34:	f6b43423          	sd	a1,-152(s0)
ffffffffc0001d38:	0ffaf593          	andi	a1,s5,255
ffffffffc0001d3c:	f6b43023          	sd	a1,-160(s0)
ffffffffc0001d40:	00450513          	addi	a0,a0,4 # 1004 <XLENb+0xfc4>
ffffffffc0001d44:	f8a43823          	sd	a0,-112(s0)
ffffffffc0001d48:	00f00d13          	li	s10,15
ffffffffc0001d4c:	00098493          	mv	s1,s3
ffffffffc0001d50:	f7243c23          	sd	s2,-136(s0)
ffffffffc0001d54:	00048a93          	mv	s5,s1
ffffffffc0001d58:	f7043983          	ld	s3,-144(s0)
ffffffffc0001d5c:	f6843503          	ld	a0,-152(s0)
ffffffffc0001d60:	0e951a63          	bne	a0,s1,ffffffffc0001e54 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0x1b4>
ffffffffc0001d64:	f6043483          	ld	s1,-160(s0)
ffffffffc0001d68:	f8843503          	ld	a0,-120(s0)
ffffffffc0001d6c:	0f551c63          	bne	a0,s5,ffffffffc0001e64 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0x1c4>
ffffffffc0001d70:	0f5d6e63          	bltu	s10,s5,ffffffffc0001e6c <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0x1cc>
ffffffffc0001d74:	000a8513          	mv	a0,s5
ffffffffc0001d78:	02200593          	li	a1,34
ffffffffc0001d7c:	00005097          	auipc	ra,0x5
ffffffffc0001d80:	52c080e7          	jalr	1324(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0001d84:	1699e263          	bltu	s3,s1,ffffffffc0001ee8 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0x248>
ffffffffc0001d88:	00a90533          	add	a0,s2,a0
ffffffffc0001d8c:	00250b13          	addi	s6,a0,2
ffffffffc0001d90:	0044d513          	srli	a0,s1,0x4
ffffffffc0001d94:	fff98593          	addi	a1,s3,-1
ffffffffc0001d98:	0045dd93          	srli	s11,a1,0x4
ffffffffc0001d9c:	06adee63          	bltu	s11,a0,ffffffffc0001e18 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0x178>
ffffffffc0001da0:	00151593          	slli	a1,a0,0x1
ffffffffc0001da4:	f9043603          	ld	a2,-112(s0)
ffffffffc0001da8:	00b60933          	add	s2,a2,a1
ffffffffc0001dac:	00f4fa13          	andi	s4,s1,15
ffffffffc0001db0:	00f9fc13          	andi	s8,s3,15
ffffffffc0001db4:	0049dc93          	srli	s9,s3,0x4
ffffffffc0001db8:	00000993          	li	s3,0
ffffffffc0001dbc:	00050493          	mv	s1,a0
ffffffffc0001dc0:	10ad6463          	bltu	s10,a0,ffffffffc0001ec8 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0x228>
ffffffffc0001dc4:	000c0613          	mv	a2,s8
ffffffffc0001dc8:	009c8463          	beq	s9,s1,ffffffffc0001dd0 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0x130>
ffffffffc0001dcc:	01000613          	li	a2,16
ffffffffc0001dd0:	000a0593          	mv	a1,s4
ffffffffc0001dd4:	00098463          	beqz	s3,ffffffffc0001ddc <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0x13c>
ffffffffc0001dd8:	00000593          	li	a1,0
ffffffffc0001ddc:	01390bb3          	add	s7,s2,s3
ffffffffc0001de0:	000b8513          	mv	a0,s7
ffffffffc0001de4:	00001097          	auipc	ra,0x1
ffffffffc0001de8:	9d8080e7          	jalr	-1576(ra) # ffffffffc00027bc <_ZN75_$LT$bitmap_allocator..BitAlloc16$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h68333d2740020f18E>
ffffffffc0001dec:	000b8513          	mv	a0,s7
ffffffffc0001df0:	00001097          	auipc	ra,0x1
ffffffffc0001df4:	a34080e7          	jalr	-1484(ra) # ffffffffc0002824 <_ZN75_$LT$bitmap_allocator..BitAlloc16$u20$as$u20$bitmap_allocator..BitAlloc$GT$3any17hbaaf7e36671fc094E>
ffffffffc0001df8:	00050613          	mv	a2,a0
ffffffffc0001dfc:	000b0513          	mv	a0,s6
ffffffffc0001e00:	00048593          	mv	a1,s1
ffffffffc0001e04:	00001097          	auipc	ra,0x1
ffffffffc0001e08:	e98080e7          	jalr	-360(ra) # ffffffffc0002c9c <_ZN43_$LT$i16$u20$as$u20$bit_field..BitField$GT$7set_bit17hc5a6a9b6c75218c7E>
ffffffffc0001e0c:	00298993          	addi	s3,s3,2
ffffffffc0001e10:	00148513          	addi	a0,s1,1
ffffffffc0001e14:	fbb4e4e3          	bltu	s1,s11,ffffffffc0001dbc <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0x11c>
ffffffffc0001e18:	f8043983          	ld	s3,-128(s0)
ffffffffc0001e1c:	013ab533          	sltu	a0,s5,s3
ffffffffc0001e20:	00aa84b3          	add	s1,s5,a0
ffffffffc0001e24:	000b5503          	lhu	a0,0(s6)
ffffffffc0001e28:	00a03633          	snez	a2,a0
ffffffffc0001e2c:	f7843903          	ld	s2,-136(s0)
ffffffffc0001e30:	00090513          	mv	a0,s2
ffffffffc0001e34:	000a8593          	mv	a1,s5
ffffffffc0001e38:	00001097          	auipc	ra,0x1
ffffffffc0001e3c:	e64080e7          	jalr	-412(ra) # ffffffffc0002c9c <_ZN43_$LT$i16$u20$as$u20$bit_field..BitField$GT$7set_bit17hc5a6a9b6c75218c7E>
ffffffffc0001e40:	f9043503          	ld	a0,-112(s0)
ffffffffc0001e44:	02250513          	addi	a0,a0,34
ffffffffc0001e48:	f8a43823          	sd	a0,-112(s0)
ffffffffc0001e4c:	f13ae4e3          	bltu	s5,s3,ffffffffc0001d54 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0xb4>
ffffffffc0001e50:	03c0006f          	j	ffffffffc0001e8c <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0x1ec>
ffffffffc0001e54:	10000993          	li	s3,256
ffffffffc0001e58:	f6043483          	ld	s1,-160(s0)
ffffffffc0001e5c:	f8843503          	ld	a0,-120(s0)
ffffffffc0001e60:	f15508e3          	beq	a0,s5,ffffffffc0001d70 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0xd0>
ffffffffc0001e64:	00000493          	li	s1,0
ffffffffc0001e68:	f15d76e3          	bgeu	s10,s5,ffffffffc0001d74 <_ZN91_$LT$bitmap_allocator..BitAllocCascade16$LT$T$GT$$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h79925029c67e1cebE+0xd4>
ffffffffc0001e6c:	c0009537          	lui	a0,0xc0009
ffffffffc0001e70:	cf850513          	addi	a0,a0,-776 # ffffffffc0008cf8 <anon.3165ce431a118fc2f5305435895062e5.8.llvm.11088775118193283480>
ffffffffc0001e74:	01000613          	li	a2,16
ffffffffc0001e78:	000a8593          	mv	a1,s5
ffffffffc0001e7c:	00002097          	auipc	ra,0x2
ffffffffc0001e80:	360080e7          	jalr	864(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0001e84:	fffff097          	auipc	ra,0xfffff
ffffffffc0001e88:	20c080e7          	jalr	524(ra) # ffffffffc0001090 <abort>
ffffffffc0001e8c:	03813d83          	ld	s11,56(sp)
ffffffffc0001e90:	04013d03          	ld	s10,64(sp)
ffffffffc0001e94:	04813c83          	ld	s9,72(sp)
ffffffffc0001e98:	05013c03          	ld	s8,80(sp)
ffffffffc0001e9c:	05813b83          	ld	s7,88(sp)
ffffffffc0001ea0:	06013b03          	ld	s6,96(sp)
ffffffffc0001ea4:	06813a83          	ld	s5,104(sp)
ffffffffc0001ea8:	07013a03          	ld	s4,112(sp)
ffffffffc0001eac:	07813983          	ld	s3,120(sp)
ffffffffc0001eb0:	08013903          	ld	s2,128(sp)
ffffffffc0001eb4:	08813483          	ld	s1,136(sp)
ffffffffc0001eb8:	09013403          	ld	s0,144(sp)
ffffffffc0001ebc:	09813083          	ld	ra,152(sp)
ffffffffc0001ec0:	0a010113          	addi	sp,sp,160
ffffffffc0001ec4:	00008067          	ret
ffffffffc0001ec8:	c0009537          	lui	a0,0xc0009
ffffffffc0001ecc:	cf850513          	addi	a0,a0,-776 # ffffffffc0008cf8 <anon.3165ce431a118fc2f5305435895062e5.8.llvm.11088775118193283480>
ffffffffc0001ed0:	01000613          	li	a2,16
ffffffffc0001ed4:	00048593          	mv	a1,s1
ffffffffc0001ed8:	00002097          	auipc	ra,0x2
ffffffffc0001edc:	304080e7          	jalr	772(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0001ee0:	fffff097          	auipc	ra,0xfffff
ffffffffc0001ee4:	1b0080e7          	jalr	432(ra) # ffffffffc0001090 <abort>
ffffffffc0001ee8:	c0009537          	lui	a0,0xc0009
ffffffffc0001eec:	c2050513          	addi	a0,a0,-992 # ffffffffc0008c20 <anon.3165ce431a118fc2f5305435895062e5.5.llvm.11088775118193283480>
ffffffffc0001ef0:	00002097          	auipc	ra,0x2
ffffffffc0001ef4:	278080e7          	jalr	632(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0001ef8:	fffff097          	auipc	ra,0xfffff
ffffffffc0001efc:	198080e7          	jalr	408(ra) # ffffffffc0001090 <abort>
ffffffffc0001f00:	c0009537          	lui	a0,0xc0009
ffffffffc0001f04:	c7050513          	addi	a0,a0,-912 # ffffffffc0008c70 <anon.3165ce431a118fc2f5305435895062e5.7.llvm.11088775118193283480>
ffffffffc0001f08:	00002097          	auipc	ra,0x2
ffffffffc0001f0c:	260080e7          	jalr	608(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0001f10:	fffff097          	auipc	ra,0xfffff
ffffffffc0001f14:	180080e7          	jalr	384(ra) # ffffffffc0001090 <abort>

ffffffffc0001f18 <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E>:
ffffffffc0001f18:	f1010113          	addi	sp,sp,-240
ffffffffc0001f1c:	0e113423          	sd	ra,232(sp)
ffffffffc0001f20:	0e813023          	sd	s0,224(sp)
ffffffffc0001f24:	0c913c23          	sd	s1,216(sp)
ffffffffc0001f28:	0d213823          	sd	s2,208(sp)
ffffffffc0001f2c:	0d313423          	sd	s3,200(sp)
ffffffffc0001f30:	0d413023          	sd	s4,192(sp)
ffffffffc0001f34:	0b513c23          	sd	s5,184(sp)
ffffffffc0001f38:	0b613823          	sd	s6,176(sp)
ffffffffc0001f3c:	0b713423          	sd	s7,168(sp)
ffffffffc0001f40:	0b813023          	sd	s8,160(sp)
ffffffffc0001f44:	09913c23          	sd	s9,152(sp)
ffffffffc0001f48:	09a13823          	sd	s10,144(sp)
ffffffffc0001f4c:	09b13423          	sd	s11,136(sp)
ffffffffc0001f50:	0f010413          	addi	s0,sp,240
ffffffffc0001f54:	00040493          	mv	s1,s0
ffffffffc0001f58:	f2943023          	sd	s1,-224(s0)
ffffffffc0001f5c:	f2042623          	sw	zero,-212(s0)
ffffffffc0001f60:	c0009537          	lui	a0,0xc0009
ffffffffc0001f64:	f0050513          	addi	a0,a0,-256 # ffffffffc0008f00 <_ZN5rcore4arch5board2fb12FRAME_BUFFER17h2f57c1faf3a4a7e1E>
ffffffffc0001f68:	f0a43c23          	sd	a0,-232(s0)
ffffffffc0001f6c:	f8a43423          	sd	a0,-120(s0)
ffffffffc0001f70:	f8043823          	sd	zero,-112(s0)
ffffffffc0001f74:	f6043c23          	sd	zero,-136(s0)
ffffffffc0001f78:	00100513          	li	a0,1
ffffffffc0001f7c:	f6a43823          	sd	a0,-144(s0)
ffffffffc0001f80:	c0009537          	lui	a0,0xc0009
ffffffffc0001f84:	d8050513          	addi	a0,a0,-640 # ffffffffc0008d80 <.Lanon.3165ce431a118fc2f5305435895062e5.38>
ffffffffc0001f88:	f6a43423          	sd	a0,-152(s0)
ffffffffc0001f8c:	f6840513          	addi	a0,s0,-152
ffffffffc0001f90:	fffff097          	auipc	ra,0xfffff
ffffffffc0001f94:	440080e7          	jalr	1088(ra) # ffffffffc00013d0 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE>
ffffffffc0001f98:	c0008537          	lui	a0,0xc0008
ffffffffc0001f9c:	00050b13          	mv	s6,a0
ffffffffc0001fa0:	00008513          	mv	a0,ra
ffffffffc0001fa4:	0aab6e63          	bltu	s6,a0,ffffffffc0002060 <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E+0x148>
ffffffffc0001fa8:	c00005b7          	lui	a1,0xc0000
ffffffffc0001fac:	00058c13          	mv	s8,a1
ffffffffc0001fb0:	0b856863          	bltu	a0,s8,ffffffffc0002060 <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E+0x148>
ffffffffc0001fb4:	0a048663          	beqz	s1,ffffffffc0002060 <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E+0x148>
ffffffffc0001fb8:	c00035b7          	lui	a1,0xc0003
ffffffffc0001fbc:	44458493          	addi	s1,a1,1092 # ffffffffc0003444 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17hd9a2e0e88955b4ccE>
ffffffffc0001fc0:	f6040c93          	addi	s9,s0,-160
ffffffffc0001fc4:	c00045b7          	lui	a1,0xc0004
ffffffffc0001fc8:	8fc58d13          	addi	s10,a1,-1796 # ffffffffc00038fc <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE>
ffffffffc0001fcc:	f2c40d93          	addi	s11,s0,-212
ffffffffc0001fd0:	00300a13          	li	s4,3
ffffffffc0001fd4:	c00095b7          	lui	a1,0xc0009
ffffffffc0001fd8:	de058993          	addi	s3,a1,-544 # ffffffffc0008de0 <.Lanon.3165ce431a118fc2f5305435895062e5.45>
ffffffffc0001fdc:	00400913          	li	s2,4
ffffffffc0001fe0:	c00095b7          	lui	a1,0xc0009
ffffffffc0001fe4:	da058b93          	addi	s7,a1,-608 # ffffffffc0008da0 <.Lanon.3165ce431a118fc2f5305435895062e5.44>
ffffffffc0001fe8:	f3040a93          	addi	s5,s0,-208
ffffffffc0001fec:	f2040593          	addi	a1,s0,-224
ffffffffc0001ff0:	f8b43423          	sd	a1,-120(s0)
ffffffffc0001ff4:	f8943823          	sd	s1,-112(s0)
ffffffffc0001ff8:	f8943023          	sd	s1,-128(s0)
ffffffffc0001ffc:	f7943c23          	sd	s9,-136(s0)
ffffffffc0002000:	f7a43823          	sd	s10,-144(s0)
ffffffffc0002004:	f7b43423          	sd	s11,-152(s0)
ffffffffc0002008:	ff850513          	addi	a0,a0,-8 # ffffffffc0007ff8 <__muldi3+0xd50>
ffffffffc000200c:	f6a43023          	sd	a0,-160(s0)
ffffffffc0002010:	f6840513          	addi	a0,s0,-152
ffffffffc0002014:	f4a43823          	sd	a0,-176(s0)
ffffffffc0002018:	f5443c23          	sd	s4,-168(s0)
ffffffffc000201c:	f5443423          	sd	s4,-184(s0)
ffffffffc0002020:	f5343023          	sd	s3,-192(s0)
ffffffffc0002024:	f3243c23          	sd	s2,-200(s0)
ffffffffc0002028:	f3743823          	sd	s7,-208(s0)
ffffffffc000202c:	000a8513          	mv	a0,s5
ffffffffc0002030:	fffff097          	auipc	ra,0xfffff
ffffffffc0002034:	3a0080e7          	jalr	928(ra) # ffffffffc00013d0 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE>
ffffffffc0002038:	f2c42503          	lw	a0,-212(s0)
ffffffffc000203c:	00150513          	addi	a0,a0,1
ffffffffc0002040:	f2a42623          	sw	a0,-212(s0)
ffffffffc0002044:	f2043503          	ld	a0,-224(s0)
ffffffffc0002048:	ff053503          	ld	a0,-16(a0)
ffffffffc000204c:	f2a43023          	sd	a0,-224(s0)
ffffffffc0002050:	00050863          	beqz	a0,ffffffffc0002060 <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E+0x148>
ffffffffc0002054:	ff853503          	ld	a0,-8(a0)
ffffffffc0002058:	00ab6463          	bltu	s6,a0,ffffffffc0002060 <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E+0x148>
ffffffffc000205c:	f98578e3          	bgeu	a0,s8,ffffffffc0001fec <_ZN5rcore9backtrace9backtrace17h4fc432d792674014E+0xd4>
ffffffffc0002060:	f8043823          	sd	zero,-112(s0)
ffffffffc0002064:	f6043c23          	sd	zero,-136(s0)
ffffffffc0002068:	00100513          	li	a0,1
ffffffffc000206c:	f6a43823          	sd	a0,-144(s0)
ffffffffc0002070:	f1843503          	ld	a0,-232(s0)
ffffffffc0002074:	f8a43423          	sd	a0,-120(s0)
ffffffffc0002078:	c0009537          	lui	a0,0xc0009
ffffffffc000207c:	ec050513          	addi	a0,a0,-320 # ffffffffc0008ec0 <.Lanon.3165ce431a118fc2f5305435895062e5.47>
ffffffffc0002080:	f6a43423          	sd	a0,-152(s0)
ffffffffc0002084:	f6840513          	addi	a0,s0,-152
ffffffffc0002088:	fffff097          	auipc	ra,0xfffff
ffffffffc000208c:	348080e7          	jalr	840(ra) # ffffffffc00013d0 <_ZN5rcore7logging5print17h0ea6b2c68ce4ef7cE>
ffffffffc0002090:	08813d83          	ld	s11,136(sp)
ffffffffc0002094:	09013d03          	ld	s10,144(sp)
ffffffffc0002098:	09813c83          	ld	s9,152(sp)
ffffffffc000209c:	0a013c03          	ld	s8,160(sp)
ffffffffc00020a0:	0a813b83          	ld	s7,168(sp)
ffffffffc00020a4:	0b013b03          	ld	s6,176(sp)
ffffffffc00020a8:	0b813a83          	ld	s5,184(sp)
ffffffffc00020ac:	0c013a03          	ld	s4,192(sp)
ffffffffc00020b0:	0c813983          	ld	s3,200(sp)
ffffffffc00020b4:	0d013903          	ld	s2,208(sp)
ffffffffc00020b8:	0d813483          	ld	s1,216(sp)
ffffffffc00020bc:	0e013403          	ld	s0,224(sp)
ffffffffc00020c0:	0e813083          	ld	ra,232(sp)
ffffffffc00020c4:	0f010113          	addi	sp,sp,240
ffffffffc00020c8:	00008067          	ret

ffffffffc00020cc <_ZN12rcore_memory6paging12PageTableExt3new17h777efebd4c6db36fE>:
ffffffffc00020cc:	fa010113          	addi	sp,sp,-96
ffffffffc00020d0:	04113c23          	sd	ra,88(sp)
ffffffffc00020d4:	04813823          	sd	s0,80(sp)
ffffffffc00020d8:	04913423          	sd	s1,72(sp)
ffffffffc00020dc:	05213023          	sd	s2,64(sp)
ffffffffc00020e0:	03313c23          	sd	s3,56(sp)
ffffffffc00020e4:	03413823          	sd	s4,48(sp)
ffffffffc00020e8:	03513423          	sd	s5,40(sp)
ffffffffc00020ec:	06010413          	addi	s0,sp,96
ffffffffc00020f0:	00050a13          	mv	s4,a0
ffffffffc00020f4:	fffff097          	auipc	ra,0xfffff
ffffffffc00020f8:	a70080e7          	jalr	-1424(ra) # ffffffffc0000b64 <_ZN101_$LT$rcore..memory..GlobalFrameAlloc$u20$as$u20$rcore_memory..memory_set..handler..FrameAllocator$GT$5alloc17hcc817bf7a75f760eE>
ffffffffc00020fc:	0a050663          	beqz	a0,ffffffffc00021a8 <_ZN12rcore_memory6paging12PageTableExt3new17h777efebd4c6db36fE+0xdc>
ffffffffc0002100:	00058913          	mv	s2,a1
ffffffffc0002104:	00058513          	mv	a0,a1
ffffffffc0002108:	00000097          	auipc	ra,0x0
ffffffffc000210c:	46c080e7          	jalr	1132(ra) # ffffffffc0002574 <_ZN5riscv4addr8PhysAddr3new17hb204446cd905e29fE>
ffffffffc0002110:	00000097          	auipc	ra,0x0
ffffffffc0002114:	4bc080e7          	jalr	1212(ra) # ffffffffc00025cc <_ZN5riscv4addr4Page7of_addr17hed9137fb05ae0231E>
ffffffffc0002118:	00050993          	mv	s3,a0
ffffffffc000211c:	ffd00513          	li	a0,-3
ffffffffc0002120:	01e51a93          	slli	s5,a0,0x1e
ffffffffc0002124:	015904b3          	add	s1,s2,s5
ffffffffc0002128:	00048513          	mv	a0,s1
ffffffffc000212c:	00000097          	auipc	ra,0x0
ffffffffc0002130:	370080e7          	jalr	880(ra) # ffffffffc000249c <_ZN5riscv6paging10page_table9PageTable4zero17h2a238b6ada9b7e2dE>
ffffffffc0002134:	00048513          	mv	a0,s1
ffffffffc0002138:	000a8593          	mv	a1,s5
ffffffffc000213c:	00000097          	auipc	ra,0x0
ffffffffc0002140:	508080e7          	jalr	1288(ra) # ffffffffc0002644 <_ZN5riscv6paging11multi_level13Rv39PageTable3new17h588c30009aedb264E>
ffffffffc0002144:	fb343823          	sd	s3,-80(s0)
ffffffffc0002148:	fab43423          	sd	a1,-88(s0)
ffffffffc000214c:	faa43023          	sd	a0,-96(s0)
ffffffffc0002150:	fa040513          	addi	a0,s0,-96
ffffffffc0002154:	00000097          	auipc	ra,0x0
ffffffffc0002158:	210080e7          	jalr	528(ra) # ffffffffc0002364 <_ZN89_$LT$rcore..arch..paging..PageTableImpl$u20$as$u20$rcore_memory..paging..PageTableExt$GT$10map_kernel17hfbfcc4ecf6668c4eE>
ffffffffc000215c:	fc043503          	ld	a0,-64(s0)
ffffffffc0002160:	02aa3023          	sd	a0,32(s4)
ffffffffc0002164:	fb843503          	ld	a0,-72(s0)
ffffffffc0002168:	00aa3c23          	sd	a0,24(s4)
ffffffffc000216c:	fb043503          	ld	a0,-80(s0)
ffffffffc0002170:	00aa3823          	sd	a0,16(s4)
ffffffffc0002174:	fa843503          	ld	a0,-88(s0)
ffffffffc0002178:	00aa3423          	sd	a0,8(s4)
ffffffffc000217c:	fa043503          	ld	a0,-96(s0)
ffffffffc0002180:	00aa3023          	sd	a0,0(s4)
ffffffffc0002184:	02813a83          	ld	s5,40(sp)
ffffffffc0002188:	03013a03          	ld	s4,48(sp)
ffffffffc000218c:	03813983          	ld	s3,56(sp)
ffffffffc0002190:	04013903          	ld	s2,64(sp)
ffffffffc0002194:	04813483          	ld	s1,72(sp)
ffffffffc0002198:	05013403          	ld	s0,80(sp)
ffffffffc000219c:	05813083          	ld	ra,88(sp)
ffffffffc00021a0:	06010113          	addi	sp,sp,96
ffffffffc00021a4:	00008067          	ret
ffffffffc00021a8:	c0009537          	lui	a0,0xc0009
ffffffffc00021ac:	03050513          	addi	a0,a0,48 # ffffffffc0009030 <anon.e5ba4097e33661d81c44c33351c888a2.66.llvm.10968381280838950506>
ffffffffc00021b0:	01800593          	li	a1,24
ffffffffc00021b4:	00001097          	auipc	ra,0x1
ffffffffc00021b8:	3ac080e7          	jalr	940(ra) # ffffffffc0003560 <_ZN4core6option13expect_failed17h8cc3fc4be83cb4d1E>
ffffffffc00021bc:	fffff097          	auipc	ra,0xfffff
ffffffffc00021c0:	ed4080e7          	jalr	-300(ra) # ffffffffc0001090 <abort>

ffffffffc00021c4 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2dc1b828e904cdb7E>:
ffffffffc00021c4:	fe010113          	addi	sp,sp,-32
ffffffffc00021c8:	00113c23          	sd	ra,24(sp)
ffffffffc00021cc:	00813823          	sd	s0,16(sp)
ffffffffc00021d0:	00913423          	sd	s1,8(sp)
ffffffffc00021d4:	01213023          	sd	s2,0(sp)
ffffffffc00021d8:	02010413          	addi	s0,sp,32
ffffffffc00021dc:	00058493          	mv	s1,a1
ffffffffc00021e0:	00053903          	ld	s2,0(a0)
ffffffffc00021e4:	00058513          	mv	a0,a1
ffffffffc00021e8:	00003097          	auipc	ra,0x3
ffffffffc00021ec:	5ac080e7          	jalr	1452(ra) # ffffffffc0005794 <_ZN4core3fmt9Formatter15debug_lower_hex17h27c74650559ef4d8E>
ffffffffc00021f0:	00050c63          	beqz	a0,ffffffffc0002208 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2dc1b828e904cdb7E+0x44>
ffffffffc00021f4:	00090513          	mv	a0,s2
ffffffffc00021f8:	00048593          	mv	a1,s1
ffffffffc00021fc:	00001097          	auipc	ra,0x1
ffffffffc0002200:	1a4080e7          	jalr	420(ra) # ffffffffc00033a0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h4e3d261f6c3eb358E>
ffffffffc0002204:	0380006f          	j	ffffffffc000223c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2dc1b828e904cdb7E+0x78>
ffffffffc0002208:	00048513          	mv	a0,s1
ffffffffc000220c:	00003097          	auipc	ra,0x3
ffffffffc0002210:	5b4080e7          	jalr	1460(ra) # ffffffffc00057c0 <_ZN4core3fmt9Formatter15debug_upper_hex17hf9c9ee08bbded667E>
ffffffffc0002214:	00050c63          	beqz	a0,ffffffffc000222c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2dc1b828e904cdb7E+0x68>
ffffffffc0002218:	00090513          	mv	a0,s2
ffffffffc000221c:	00048593          	mv	a1,s1
ffffffffc0002220:	00001097          	auipc	ra,0x1
ffffffffc0002224:	224080e7          	jalr	548(ra) # ffffffffc0003444 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17hd9a2e0e88955b4ccE>
ffffffffc0002228:	0140006f          	j	ffffffffc000223c <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h2dc1b828e904cdb7E+0x78>
ffffffffc000222c:	00090513          	mv	a0,s2
ffffffffc0002230:	00048593          	mv	a1,s1
ffffffffc0002234:	00002097          	auipc	ra,0x2
ffffffffc0002238:	b28080e7          	jalr	-1240(ra) # ffffffffc0003d5c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>
ffffffffc000223c:	00013903          	ld	s2,0(sp)
ffffffffc0002240:	00813483          	ld	s1,8(sp)
ffffffffc0002244:	01013403          	ld	s0,16(sp)
ffffffffc0002248:	01813083          	ld	ra,24(sp)
ffffffffc000224c:	02010113          	addi	sp,sp,32
ffffffffc0002250:	00008067          	ret

ffffffffc0002254 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h5789d9f41831995eE>:
ffffffffc0002254:	ff010113          	addi	sp,sp,-16
ffffffffc0002258:	00113423          	sd	ra,8(sp)
ffffffffc000225c:	00813023          	sd	s0,0(sp)
ffffffffc0002260:	01010413          	addi	s0,sp,16
ffffffffc0002264:	00058613          	mv	a2,a1
ffffffffc0002268:	00853583          	ld	a1,8(a0)
ffffffffc000226c:	00053503          	ld	a0,0(a0)
ffffffffc0002270:	00013403          	ld	s0,0(sp)
ffffffffc0002274:	00813083          	ld	ra,8(sp)
ffffffffc0002278:	01010113          	addi	sp,sp,16
ffffffffc000227c:	00003317          	auipc	t1,0x3
ffffffffc0002280:	5e030067          	jr	1504(t1) # ffffffffc000585c <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17ha4db6e3e5fd36be8E>

ffffffffc0002284 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h83c67def041aad94E>:
ffffffffc0002284:	ff010113          	addi	sp,sp,-16
ffffffffc0002288:	00113423          	sd	ra,8(sp)
ffffffffc000228c:	00813023          	sd	s0,0(sp)
ffffffffc0002290:	01010413          	addi	s0,sp,16
ffffffffc0002294:	00053503          	ld	a0,0(a0)
ffffffffc0002298:	00013403          	ld	s0,0(sp)
ffffffffc000229c:	00813083          	ld	ra,8(sp)
ffffffffc00022a0:	01010113          	addi	sp,sp,16
ffffffffc00022a4:	00002317          	auipc	t1,0x2
ffffffffc00022a8:	d3c30067          	jr	-708(t1) # ffffffffc0003fe0 <_ZN75_$LT$core..panic..PanicInfo$LT$$u27$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hcacd4d94b13e8d6fE>

ffffffffc00022ac <_ZN45_$LT$$RF$T$u20$as$u20$core..fmt..UpperHex$GT$3fmt17haf6ef3b83a4d7ec3E>:
ffffffffc00022ac:	ff010113          	addi	sp,sp,-16
ffffffffc00022b0:	00113423          	sd	ra,8(sp)
ffffffffc00022b4:	00813023          	sd	s0,0(sp)
ffffffffc00022b8:	01010413          	addi	s0,sp,16
ffffffffc00022bc:	00053503          	ld	a0,0(a0)
ffffffffc00022c0:	00013403          	ld	s0,0(sp)
ffffffffc00022c4:	00813083          	ld	ra,8(sp)
ffffffffc00022c8:	01010113          	addi	sp,sp,16
ffffffffc00022cc:	00001317          	auipc	t1,0x1
ffffffffc00022d0:	17830067          	jr	376(t1) # ffffffffc0003444 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17hd9a2e0e88955b4ccE>

ffffffffc00022d4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE.llvm.10968381280838950506>:
ffffffffc00022d4:	fe010113          	addi	sp,sp,-32
ffffffffc00022d8:	00113c23          	sd	ra,24(sp)
ffffffffc00022dc:	00813823          	sd	s0,16(sp)
ffffffffc00022e0:	00913423          	sd	s1,8(sp)
ffffffffc00022e4:	01213023          	sd	s2,0(sp)
ffffffffc00022e8:	02010413          	addi	s0,sp,32
ffffffffc00022ec:	00058493          	mv	s1,a1
ffffffffc00022f0:	00050913          	mv	s2,a0
ffffffffc00022f4:	00058513          	mv	a0,a1
ffffffffc00022f8:	00003097          	auipc	ra,0x3
ffffffffc00022fc:	49c080e7          	jalr	1180(ra) # ffffffffc0005794 <_ZN4core3fmt9Formatter15debug_lower_hex17h27c74650559ef4d8E>
ffffffffc0002300:	00050c63          	beqz	a0,ffffffffc0002318 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE.llvm.10968381280838950506+0x44>
ffffffffc0002304:	00090513          	mv	a0,s2
ffffffffc0002308:	00048593          	mv	a1,s1
ffffffffc000230c:	00001097          	auipc	ra,0x1
ffffffffc0002310:	094080e7          	jalr	148(ra) # ffffffffc00033a0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h4e3d261f6c3eb358E>
ffffffffc0002314:	0380006f          	j	ffffffffc000234c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE.llvm.10968381280838950506+0x78>
ffffffffc0002318:	00048513          	mv	a0,s1
ffffffffc000231c:	00003097          	auipc	ra,0x3
ffffffffc0002320:	4a4080e7          	jalr	1188(ra) # ffffffffc00057c0 <_ZN4core3fmt9Formatter15debug_upper_hex17hf9c9ee08bbded667E>
ffffffffc0002324:	00050c63          	beqz	a0,ffffffffc000233c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE.llvm.10968381280838950506+0x68>
ffffffffc0002328:	00090513          	mv	a0,s2
ffffffffc000232c:	00048593          	mv	a1,s1
ffffffffc0002330:	00001097          	auipc	ra,0x1
ffffffffc0002334:	114080e7          	jalr	276(ra) # ffffffffc0003444 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17hd9a2e0e88955b4ccE>
ffffffffc0002338:	0140006f          	j	ffffffffc000234c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE.llvm.10968381280838950506+0x78>
ffffffffc000233c:	00090513          	mv	a0,s2
ffffffffc0002340:	00048593          	mv	a1,s1
ffffffffc0002344:	00002097          	auipc	ra,0x2
ffffffffc0002348:	a18080e7          	jalr	-1512(ra) # ffffffffc0003d5c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>
ffffffffc000234c:	00013903          	ld	s2,0(sp)
ffffffffc0002350:	00813483          	ld	s1,8(sp)
ffffffffc0002354:	01013403          	ld	s0,16(sp)
ffffffffc0002358:	01813083          	ld	ra,24(sp)
ffffffffc000235c:	02010113          	addi	sp,sp,32
ffffffffc0002360:	00008067          	ret

ffffffffc0002364 <_ZN89_$LT$rcore..arch..paging..PageTableImpl$u20$as$u20$rcore_memory..paging..PageTableExt$GT$10map_kernel17hfbfcc4ecf6668c4eE>:
ffffffffc0002364:	fa010113          	addi	sp,sp,-96
ffffffffc0002368:	04113c23          	sd	ra,88(sp)
ffffffffc000236c:	04813823          	sd	s0,80(sp)
ffffffffc0002370:	04913423          	sd	s1,72(sp)
ffffffffc0002374:	05213023          	sd	s2,64(sp)
ffffffffc0002378:	03313c23          	sd	s3,56(sp)
ffffffffc000237c:	06010413          	addi	s0,sp,96
ffffffffc0002380:	00050493          	mv	s1,a0
ffffffffc0002384:	c0213537          	lui	a0,0xc0213
ffffffffc0002388:	08050513          	addi	a0,a0,128 # ffffffffc0213080 <_ZN3log20MAX_LOG_LEVEL_FILTER17hc28b96925e30fb0cE>
ffffffffc000238c:	00000593          	li	a1,0
ffffffffc0002390:	fffff097          	auipc	ra,0xfffff
ffffffffc0002394:	de8080e7          	jalr	-536(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc0002398:	00300593          	li	a1,3
ffffffffc000239c:	04b56263          	bltu	a0,a1,ffffffffc00023e0 <_ZN89_$LT$rcore..arch..paging..PageTableImpl$u20$as$u20$rcore_memory..paging..PageTableExt$GT$10map_kernel17hfbfcc4ecf6668c4eE+0x7c>
ffffffffc00023a0:	fc043823          	sd	zero,-48(s0)
ffffffffc00023a4:	fa043c23          	sd	zero,-72(s0)
ffffffffc00023a8:	00100513          	li	a0,1
ffffffffc00023ac:	faa43823          	sd	a0,-80(s0)
ffffffffc00023b0:	c0009537          	lui	a0,0xc0009
ffffffffc00023b4:	f0050513          	addi	a0,a0,-256 # ffffffffc0008f00 <_ZN5rcore4arch5board2fb12FRAME_BUFFER17h2f57c1faf3a4a7e1E>
ffffffffc00023b8:	fca43423          	sd	a0,-56(s0)
ffffffffc00023bc:	c0009537          	lui	a0,0xc0009
ffffffffc00023c0:	06850513          	addi	a0,a0,104 # ffffffffc0009068 <anon.e5ba4097e33661d81c44c33351c888a2.68.llvm.10968381280838950506>
ffffffffc00023c4:	faa43423          	sd	a0,-88(s0)
ffffffffc00023c8:	c0009537          	lui	a0,0xc0009
ffffffffc00023cc:	0a850613          	addi	a2,a0,168 # ffffffffc00090a8 <anon.e5ba4097e33661d81c44c33351c888a2.71.llvm.10968381280838950506>
ffffffffc00023d0:	fa840513          	addi	a0,s0,-88
ffffffffc00023d4:	00300593          	li	a1,3
ffffffffc00023d8:	00001097          	auipc	ra,0x1
ffffffffc00023dc:	d2c080e7          	jalr	-724(ra) # ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>
ffffffffc00023e0:	01048513          	addi	a0,s1,16
ffffffffc00023e4:	00000097          	auipc	ra,0x0
ffffffffc00023e8:	210080e7          	jalr	528(ra) # ffffffffc00025f4 <_ZN5riscv4addr4Page13start_address17he1cba2e4e1b844deE>
ffffffffc00023ec:	faa43423          	sd	a0,-88(s0)
ffffffffc00023f0:	fa840513          	addi	a0,s0,-88
ffffffffc00023f4:	00000097          	auipc	ra,0x0
ffffffffc00023f8:	200080e7          	jalr	512(ra) # ffffffffc00025f4 <_ZN5riscv4addr4Page13start_address17he1cba2e4e1b844deE>
ffffffffc00023fc:	ffd00593          	li	a1,-3
ffffffffc0002400:	01e59593          	slli	a1,a1,0x1e
ffffffffc0002404:	00b50933          	add	s2,a0,a1
ffffffffc0002408:	00000513          	li	a0,0
ffffffffc000240c:	00000097          	auipc	ra,0x0
ffffffffc0002410:	168080e7          	jalr	360(ra) # ffffffffc0002574 <_ZN5riscv4addr8PhysAddr3new17hb204446cd905e29fE>
ffffffffc0002414:	00000097          	auipc	ra,0x0
ffffffffc0002418:	1b8080e7          	jalr	440(ra) # ffffffffc00025cc <_ZN5riscv4addr4Page7of_addr17hed9137fb05ae0231E>
ffffffffc000241c:	00050493          	mv	s1,a0
ffffffffc0002420:	1fd00593          	li	a1,509
ffffffffc0002424:	00090513          	mv	a0,s2
ffffffffc0002428:	00000097          	auipc	ra,0x0
ffffffffc000242c:	0a0080e7          	jalr	160(ra) # ffffffffc00024c8 <_ZN96_$LT$riscv..paging..page_table..PageTable$u20$as$u20$core..ops..index..IndexMut$LT$usize$GT$$GT$9index_mut17h7984b57877f98c47E>
ffffffffc0002430:	0cf00993          	li	s3,207
ffffffffc0002434:	00048593          	mv	a1,s1
ffffffffc0002438:	00098613          	mv	a2,s3
ffffffffc000243c:	00000097          	auipc	ra,0x0
ffffffffc0002440:	0d8080e7          	jalr	216(ra) # ffffffffc0002514 <_ZN5riscv6paging10page_table14PageTableEntry3set17h4bbbe457ad9043f2E>
ffffffffc0002444:	00100513          	li	a0,1
ffffffffc0002448:	01f51513          	slli	a0,a0,0x1f
ffffffffc000244c:	00000097          	auipc	ra,0x0
ffffffffc0002450:	128080e7          	jalr	296(ra) # ffffffffc0002574 <_ZN5riscv4addr8PhysAddr3new17hb204446cd905e29fE>
ffffffffc0002454:	00000097          	auipc	ra,0x0
ffffffffc0002458:	178080e7          	jalr	376(ra) # ffffffffc00025cc <_ZN5riscv4addr4Page7of_addr17hed9137fb05ae0231E>
ffffffffc000245c:	00050493          	mv	s1,a0
ffffffffc0002460:	1ff00593          	li	a1,511
ffffffffc0002464:	00090513          	mv	a0,s2
ffffffffc0002468:	00000097          	auipc	ra,0x0
ffffffffc000246c:	060080e7          	jalr	96(ra) # ffffffffc00024c8 <_ZN96_$LT$riscv..paging..page_table..PageTable$u20$as$u20$core..ops..index..IndexMut$LT$usize$GT$$GT$9index_mut17h7984b57877f98c47E>
ffffffffc0002470:	00048593          	mv	a1,s1
ffffffffc0002474:	00098613          	mv	a2,s3
ffffffffc0002478:	00000097          	auipc	ra,0x0
ffffffffc000247c:	09c080e7          	jalr	156(ra) # ffffffffc0002514 <_ZN5riscv6paging10page_table14PageTableEntry3set17h4bbbe457ad9043f2E>
ffffffffc0002480:	03813983          	ld	s3,56(sp)
ffffffffc0002484:	04013903          	ld	s2,64(sp)
ffffffffc0002488:	04813483          	ld	s1,72(sp)
ffffffffc000248c:	05013403          	ld	s0,80(sp)
ffffffffc0002490:	05813083          	ld	ra,88(sp)
ffffffffc0002494:	06010113          	addi	sp,sp,96
ffffffffc0002498:	00008067          	ret

ffffffffc000249c <_ZN5riscv6paging10page_table9PageTable4zero17h2a238b6ada9b7e2dE>:
ffffffffc000249c:	ff010113          	addi	sp,sp,-16
ffffffffc00024a0:	00113423          	sd	ra,8(sp)
ffffffffc00024a4:	00813023          	sd	s0,0(sp)
ffffffffc00024a8:	01010413          	addi	s0,sp,16
ffffffffc00024ac:	00001637          	lui	a2,0x1
ffffffffc00024b0:	00000593          	li	a1,0
ffffffffc00024b4:	00013403          	ld	s0,0(sp)
ffffffffc00024b8:	00813083          	ld	ra,8(sp)
ffffffffc00024bc:	01010113          	addi	sp,sp,16
ffffffffc00024c0:	00004317          	auipc	t1,0x4
ffffffffc00024c4:	39430067          	jr	916(t1) # ffffffffc0006854 <memset>

ffffffffc00024c8 <_ZN96_$LT$riscv..paging..page_table..PageTable$u20$as$u20$core..ops..index..IndexMut$LT$usize$GT$$GT$9index_mut17h7984b57877f98c47E>:
ffffffffc00024c8:	ff010113          	addi	sp,sp,-16
ffffffffc00024cc:	00113423          	sd	ra,8(sp)
ffffffffc00024d0:	00813023          	sd	s0,0(sp)
ffffffffc00024d4:	01010413          	addi	s0,sp,16
ffffffffc00024d8:	1ff00613          	li	a2,511
ffffffffc00024dc:	00b66e63          	bltu	a2,a1,ffffffffc00024f8 <_ZN96_$LT$riscv..paging..page_table..PageTable$u20$as$u20$core..ops..index..IndexMut$LT$usize$GT$$GT$9index_mut17h7984b57877f98c47E+0x30>
ffffffffc00024e0:	00359593          	slli	a1,a1,0x3
ffffffffc00024e4:	00b50533          	add	a0,a0,a1
ffffffffc00024e8:	00013403          	ld	s0,0(sp)
ffffffffc00024ec:	00813083          	ld	ra,8(sp)
ffffffffc00024f0:	01010113          	addi	sp,sp,16
ffffffffc00024f4:	00008067          	ret
ffffffffc00024f8:	c0009537          	lui	a0,0xc0009
ffffffffc00024fc:	13850513          	addi	a0,a0,312 # ffffffffc0009138 <anon.f9f93aa285e28724489996f0814e2c3a.1.llvm.2054078989100030814>
ffffffffc0002500:	20000613          	li	a2,512
ffffffffc0002504:	00002097          	auipc	ra,0x2
ffffffffc0002508:	cd8080e7          	jalr	-808(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc000250c:	fffff097          	auipc	ra,0xfffff
ffffffffc0002510:	b84080e7          	jalr	-1148(ra) # ffffffffc0001090 <abort>

ffffffffc0002514 <_ZN5riscv6paging10page_table14PageTableEntry3set17h4bbbe457ad9043f2E>:
ffffffffc0002514:	fd010113          	addi	sp,sp,-48
ffffffffc0002518:	02113423          	sd	ra,40(sp)
ffffffffc000251c:	02813023          	sd	s0,32(sp)
ffffffffc0002520:	00913c23          	sd	s1,24(sp)
ffffffffc0002524:	01213823          	sd	s2,16(sp)
ffffffffc0002528:	03010413          	addi	s0,sp,48
ffffffffc000252c:	00060493          	mv	s1,a2
ffffffffc0002530:	00050913          	mv	s2,a0
ffffffffc0002534:	fcb43c23          	sd	a1,-40(s0)
ffffffffc0002538:	fd840513          	addi	a0,s0,-40
ffffffffc000253c:	00c00593          	li	a1,12
ffffffffc0002540:	04000613          	li	a2,64
ffffffffc0002544:	00000097          	auipc	ra,0x0
ffffffffc0002548:	6c4080e7          	jalr	1732(ra) # ffffffffc0002c08 <_ZN43_$LT$u64$u20$as$u20$bit_field..BitField$GT$8get_bits17h78521cca42bada2fE>
ffffffffc000254c:	00a51513          	slli	a0,a0,0xa
ffffffffc0002550:	00956533          	or	a0,a0,s1
ffffffffc0002554:	0c056513          	ori	a0,a0,192
ffffffffc0002558:	00a93023          	sd	a0,0(s2)
ffffffffc000255c:	01013903          	ld	s2,16(sp)
ffffffffc0002560:	01813483          	ld	s1,24(sp)
ffffffffc0002564:	02013403          	ld	s0,32(sp)
ffffffffc0002568:	02813083          	ld	ra,40(sp)
ffffffffc000256c:	03010113          	addi	sp,sp,48
ffffffffc0002570:	00008067          	ret

ffffffffc0002574 <_ZN5riscv4addr8PhysAddr3new17hb204446cd905e29fE>:
ffffffffc0002574:	fe010113          	addi	sp,sp,-32
ffffffffc0002578:	00113c23          	sd	ra,24(sp)
ffffffffc000257c:	00813823          	sd	s0,16(sp)
ffffffffc0002580:	02010413          	addi	s0,sp,32
ffffffffc0002584:	fea43423          	sd	a0,-24(s0)
ffffffffc0002588:	fe840513          	addi	a0,s0,-24
ffffffffc000258c:	02000593          	li	a1,32
ffffffffc0002590:	04000613          	li	a2,64
ffffffffc0002594:	00000097          	auipc	ra,0x0
ffffffffc0002598:	674080e7          	jalr	1652(ra) # ffffffffc0002c08 <_ZN43_$LT$u64$u20$as$u20$bit_field..BitField$GT$8get_bits17h78521cca42bada2fE>
ffffffffc000259c:	00051c63          	bnez	a0,ffffffffc00025b4 <_ZN5riscv4addr8PhysAddr3new17hb204446cd905e29fE+0x40>
ffffffffc00025a0:	fe843503          	ld	a0,-24(s0)
ffffffffc00025a4:	01013403          	ld	s0,16(sp)
ffffffffc00025a8:	01813083          	ld	ra,24(sp)
ffffffffc00025ac:	02010113          	addi	sp,sp,32
ffffffffc00025b0:	00008067          	ret
ffffffffc00025b4:	c0009537          	lui	a0,0xc0009
ffffffffc00025b8:	1b050513          	addi	a0,a0,432 # ffffffffc00091b0 <anon.cb6205ef9172299ad2fcc667df6de6e8.15.llvm.15519032962297607928>
ffffffffc00025bc:	00002097          	auipc	ra,0x2
ffffffffc00025c0:	bac080e7          	jalr	-1108(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc00025c4:	fffff097          	auipc	ra,0xfffff
ffffffffc00025c8:	acc080e7          	jalr	-1332(ra) # ffffffffc0001090 <abort>

ffffffffc00025cc <_ZN5riscv4addr4Page7of_addr17hed9137fb05ae0231E>:
ffffffffc00025cc:	ff010113          	addi	sp,sp,-16
ffffffffc00025d0:	00113423          	sd	ra,8(sp)
ffffffffc00025d4:	00813023          	sd	s0,0(sp)
ffffffffc00025d8:	01010413          	addi	s0,sp,16
ffffffffc00025dc:	fffff5b7          	lui	a1,0xfffff
ffffffffc00025e0:	00b57533          	and	a0,a0,a1
ffffffffc00025e4:	00013403          	ld	s0,0(sp)
ffffffffc00025e8:	00813083          	ld	ra,8(sp)
ffffffffc00025ec:	01010113          	addi	sp,sp,16
ffffffffc00025f0:	00008067          	ret

ffffffffc00025f4 <_ZN5riscv4addr4Page13start_address17he1cba2e4e1b844deE>:
ffffffffc00025f4:	ff010113          	addi	sp,sp,-16
ffffffffc00025f8:	00113423          	sd	ra,8(sp)
ffffffffc00025fc:	00813023          	sd	s0,0(sp)
ffffffffc0002600:	01010413          	addi	s0,sp,16
ffffffffc0002604:	00053503          	ld	a0,0(a0)
ffffffffc0002608:	00013403          	ld	s0,0(sp)
ffffffffc000260c:	00813083          	ld	ra,8(sp)
ffffffffc0002610:	01010113          	addi	sp,sp,16
ffffffffc0002614:	00008067          	ret

ffffffffc0002618 <_ZN5riscv4addr4Page6number17h57fcf24439548a2eE>:
ffffffffc0002618:	ff010113          	addi	sp,sp,-16
ffffffffc000261c:	00113423          	sd	ra,8(sp)
ffffffffc0002620:	00813023          	sd	s0,0(sp)
ffffffffc0002624:	01010413          	addi	s0,sp,16
ffffffffc0002628:	00c00593          	li	a1,12
ffffffffc000262c:	04000613          	li	a2,64
ffffffffc0002630:	00013403          	ld	s0,0(sp)
ffffffffc0002634:	00813083          	ld	ra,8(sp)
ffffffffc0002638:	01010113          	addi	sp,sp,16
ffffffffc000263c:	00000317          	auipc	t1,0x0
ffffffffc0002640:	5cc30067          	jr	1484(t1) # ffffffffc0002c08 <_ZN43_$LT$u64$u20$as$u20$bit_field..BitField$GT$8get_bits17h78521cca42bada2fE>

ffffffffc0002644 <_ZN5riscv6paging11multi_level13Rv39PageTable3new17h588c30009aedb264E>:
ffffffffc0002644:	ff010113          	addi	sp,sp,-16
ffffffffc0002648:	00113423          	sd	ra,8(sp)
ffffffffc000264c:	00813023          	sd	s0,0(sp)
ffffffffc0002650:	01010413          	addi	s0,sp,16
ffffffffc0002654:	00013403          	ld	s0,0(sp)
ffffffffc0002658:	00813083          	ld	ra,8(sp)
ffffffffc000265c:	01010113          	addi	sp,sp,16
ffffffffc0002660:	00008067          	ret

ffffffffc0002664 <_ZN75_$LT$bitmap_allocator..BitAlloc16$u20$as$u20$bitmap_allocator..BitAlloc$GT$5alloc17h8b46d8728195b781E>:
ffffffffc0002664:	fe010113          	addi	sp,sp,-32
ffffffffc0002668:	00113c23          	sd	ra,24(sp)
ffffffffc000266c:	00813823          	sd	s0,16(sp)
ffffffffc0002670:	00913423          	sd	s1,8(sp)
ffffffffc0002674:	01213023          	sd	s2,0(sp)
ffffffffc0002678:	02010413          	addi	s0,sp,32
ffffffffc000267c:	00050913          	mv	s2,a0
ffffffffc0002680:	00055503          	lhu	a0,0(a0)
ffffffffc0002684:	10050c63          	beqz	a0,ffffffffc000279c <_ZN75_$LT$bitmap_allocator..BitAlloc16$u20$as$u20$bitmap_allocator..BitAlloc$GT$5alloc17h8b46d8728195b781E+0x138>
ffffffffc0002688:	00155593          	srli	a1,a0,0x1
ffffffffc000268c:	00b56533          	or	a0,a0,a1
ffffffffc0002690:	00255593          	srli	a1,a0,0x2
ffffffffc0002694:	00b56533          	or	a0,a0,a1
ffffffffc0002698:	00455593          	srli	a1,a0,0x4
ffffffffc000269c:	00b56533          	or	a0,a0,a1
ffffffffc00026a0:	00855593          	srli	a1,a0,0x8
ffffffffc00026a4:	00b56533          	or	a0,a0,a1
ffffffffc00026a8:	01055593          	srli	a1,a0,0x10
ffffffffc00026ac:	00b56533          	or	a0,a0,a1
ffffffffc00026b0:	02055593          	srli	a1,a0,0x20
ffffffffc00026b4:	00b56533          	or	a0,a0,a1
ffffffffc00026b8:	055555b7          	lui	a1,0x5555
ffffffffc00026bc:	5555859b          	addiw	a1,a1,1365
ffffffffc00026c0:	00c59593          	slli	a1,a1,0xc
ffffffffc00026c4:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc00026c8:	00c59593          	slli	a1,a1,0xc
ffffffffc00026cc:	55558593          	addi	a1,a1,1365
ffffffffc00026d0:	00c59593          	slli	a1,a1,0xc
ffffffffc00026d4:	fff54513          	not	a0,a0
ffffffffc00026d8:	55558593          	addi	a1,a1,1365
ffffffffc00026dc:	00155613          	srli	a2,a0,0x1
ffffffffc00026e0:	00b675b3          	and	a1,a2,a1
ffffffffc00026e4:	40b50533          	sub	a0,a0,a1
ffffffffc00026e8:	033335b7          	lui	a1,0x3333
ffffffffc00026ec:	3335859b          	addiw	a1,a1,819
ffffffffc00026f0:	00c59593          	slli	a1,a1,0xc
ffffffffc00026f4:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc00026f8:	00c59593          	slli	a1,a1,0xc
ffffffffc00026fc:	33358593          	addi	a1,a1,819
ffffffffc0002700:	00c59593          	slli	a1,a1,0xc
ffffffffc0002704:	33358593          	addi	a1,a1,819
ffffffffc0002708:	00b57633          	and	a2,a0,a1
ffffffffc000270c:	00255513          	srli	a0,a0,0x2
ffffffffc0002710:	00b57533          	and	a0,a0,a1
ffffffffc0002714:	00a60533          	add	a0,a2,a0
ffffffffc0002718:	00455593          	srli	a1,a0,0x4
ffffffffc000271c:	00b50533          	add	a0,a0,a1
ffffffffc0002720:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0002724:	0f15859b          	addiw	a1,a1,241
ffffffffc0002728:	00c59593          	slli	a1,a1,0xc
ffffffffc000272c:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0002730:	00c59593          	slli	a1,a1,0xc
ffffffffc0002734:	0f158593          	addi	a1,a1,241
ffffffffc0002738:	00c59593          	slli	a1,a1,0xc
ffffffffc000273c:	f0f58593          	addi	a1,a1,-241
ffffffffc0002740:	00b57533          	and	a0,a0,a1
ffffffffc0002744:	010105b7          	lui	a1,0x1010
ffffffffc0002748:	1015859b          	addiw	a1,a1,257
ffffffffc000274c:	01059593          	slli	a1,a1,0x10
ffffffffc0002750:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0002754:	01059593          	slli	a1,a1,0x10
ffffffffc0002758:	10158593          	addi	a1,a1,257
ffffffffc000275c:	00005097          	auipc	ra,0x5
ffffffffc0002760:	b4c080e7          	jalr	-1204(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0002764:	03855513          	srli	a0,a0,0x38
ffffffffc0002768:	04000593          	li	a1,64
ffffffffc000276c:	40a58533          	sub	a0,a1,a0
ffffffffc0002770:	000105b7          	lui	a1,0x10
ffffffffc0002774:	fff5859b          	addiw	a1,a1,-1
ffffffffc0002778:	00b57533          	and	a0,a0,a1
ffffffffc000277c:	fff50493          	addi	s1,a0,-1
ffffffffc0002780:	00090513          	mv	a0,s2
ffffffffc0002784:	00048593          	mv	a1,s1
ffffffffc0002788:	00000613          	li	a2,0
ffffffffc000278c:	00000097          	auipc	ra,0x0
ffffffffc0002790:	510080e7          	jalr	1296(ra) # ffffffffc0002c9c <_ZN43_$LT$i16$u20$as$u20$bit_field..BitField$GT$7set_bit17hc5a6a9b6c75218c7E>
ffffffffc0002794:	00100513          	li	a0,1
ffffffffc0002798:	0080006f          	j	ffffffffc00027a0 <_ZN75_$LT$bitmap_allocator..BitAlloc16$u20$as$u20$bitmap_allocator..BitAlloc$GT$5alloc17h8b46d8728195b781E+0x13c>
ffffffffc000279c:	00000513          	li	a0,0
ffffffffc00027a0:	00048593          	mv	a1,s1
ffffffffc00027a4:	00013903          	ld	s2,0(sp)
ffffffffc00027a8:	00813483          	ld	s1,8(sp)
ffffffffc00027ac:	01013403          	ld	s0,16(sp)
ffffffffc00027b0:	01813083          	ld	ra,24(sp)
ffffffffc00027b4:	02010113          	addi	sp,sp,32
ffffffffc00027b8:	00008067          	ret

ffffffffc00027bc <_ZN75_$LT$bitmap_allocator..BitAlloc16$u20$as$u20$bitmap_allocator..BitAlloc$GT$6insert17h68333d2740020f18E>:
ffffffffc00027bc:	fd010113          	addi	sp,sp,-48
ffffffffc00027c0:	02113423          	sd	ra,40(sp)
ffffffffc00027c4:	02813023          	sd	s0,32(sp)
ffffffffc00027c8:	00913c23          	sd	s1,24(sp)
ffffffffc00027cc:	01213823          	sd	s2,16(sp)
ffffffffc00027d0:	01313423          	sd	s3,8(sp)
ffffffffc00027d4:	03010413          	addi	s0,sp,48
ffffffffc00027d8:	00060913          	mv	s2,a2
ffffffffc00027dc:	00058493          	mv	s1,a1
ffffffffc00027e0:	00050993          	mv	s3,a0
ffffffffc00027e4:	c0009537          	lui	a0,0xc0009
ffffffffc00027e8:	22c50513          	addi	a0,a0,556 # ffffffffc000922c <.Lanon.5e7f614c8c6b0b960d7115584530a912.3>
ffffffffc00027ec:	00000097          	auipc	ra,0x0
ffffffffc00027f0:	294080e7          	jalr	660(ra) # ffffffffc0002a80 <_ZN43_$LT$u16$u20$as$u20$bit_field..BitField$GT$8get_bits17hf956cbee7ae1e18bE>
ffffffffc00027f4:	00050693          	mv	a3,a0
ffffffffc00027f8:	00098513          	mv	a0,s3
ffffffffc00027fc:	00048593          	mv	a1,s1
ffffffffc0002800:	00090613          	mv	a2,s2
ffffffffc0002804:	00813983          	ld	s3,8(sp)
ffffffffc0002808:	01013903          	ld	s2,16(sp)
ffffffffc000280c:	01813483          	ld	s1,24(sp)
ffffffffc0002810:	02013403          	ld	s0,32(sp)
ffffffffc0002814:	02813083          	ld	ra,40(sp)
ffffffffc0002818:	03010113          	addi	sp,sp,48
ffffffffc000281c:	00000317          	auipc	t1,0x0
ffffffffc0002820:	30430067          	jr	772(t1) # ffffffffc0002b20 <_ZN43_$LT$u16$u20$as$u20$bit_field..BitField$GT$8set_bits17h83cfba8d7521d7b6E>

ffffffffc0002824 <_ZN75_$LT$bitmap_allocator..BitAlloc16$u20$as$u20$bitmap_allocator..BitAlloc$GT$3any17hbaaf7e36671fc094E>:
ffffffffc0002824:	ff010113          	addi	sp,sp,-16
ffffffffc0002828:	00113423          	sd	ra,8(sp)
ffffffffc000282c:	00813023          	sd	s0,0(sp)
ffffffffc0002830:	01010413          	addi	s0,sp,16
ffffffffc0002834:	00055503          	lhu	a0,0(a0)
ffffffffc0002838:	00a03533          	snez	a0,a0
ffffffffc000283c:	00013403          	ld	s0,0(sp)
ffffffffc0002840:	00813083          	ld	ra,8(sp)
ffffffffc0002844:	01010113          	addi	sp,sp,16
ffffffffc0002848:	00008067          	ret

ffffffffc000284c <_ZN16bitmap_allocator10log2_naive17hd276a9d46a069d19E>:
ffffffffc000284c:	f8010113          	addi	sp,sp,-128
ffffffffc0002850:	06113c23          	sd	ra,120(sp)
ffffffffc0002854:	06813823          	sd	s0,112(sp)
ffffffffc0002858:	06913423          	sd	s1,104(sp)
ffffffffc000285c:	08010413          	addi	s0,sp,128
ffffffffc0002860:	f8a41323          	sh	a0,-122(s0)
ffffffffc0002864:	000105b7          	lui	a1,0x10
ffffffffc0002868:	fff5849b          	addiw	s1,a1,-1
ffffffffc000286c:	00957533          	and	a0,a0,s1
ffffffffc0002870:	10050463          	beqz	a0,ffffffffc0002978 <_ZN16bitmap_allocator10log2_naive17hd276a9d46a069d19E+0x12c>
ffffffffc0002874:	00155593          	srli	a1,a0,0x1
ffffffffc0002878:	00b56533          	or	a0,a0,a1
ffffffffc000287c:	00255593          	srli	a1,a0,0x2
ffffffffc0002880:	00b56533          	or	a0,a0,a1
ffffffffc0002884:	00455593          	srli	a1,a0,0x4
ffffffffc0002888:	00b56533          	or	a0,a0,a1
ffffffffc000288c:	00855593          	srli	a1,a0,0x8
ffffffffc0002890:	00b56533          	or	a0,a0,a1
ffffffffc0002894:	01055593          	srli	a1,a0,0x10
ffffffffc0002898:	00b56533          	or	a0,a0,a1
ffffffffc000289c:	02055593          	srli	a1,a0,0x20
ffffffffc00028a0:	00b56533          	or	a0,a0,a1
ffffffffc00028a4:	055555b7          	lui	a1,0x5555
ffffffffc00028a8:	5555859b          	addiw	a1,a1,1365
ffffffffc00028ac:	00c59593          	slli	a1,a1,0xc
ffffffffc00028b0:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc00028b4:	00c59593          	slli	a1,a1,0xc
ffffffffc00028b8:	55558593          	addi	a1,a1,1365
ffffffffc00028bc:	00c59593          	slli	a1,a1,0xc
ffffffffc00028c0:	55558593          	addi	a1,a1,1365
ffffffffc00028c4:	fff54513          	not	a0,a0
ffffffffc00028c8:	00155613          	srli	a2,a0,0x1
ffffffffc00028cc:	00b675b3          	and	a1,a2,a1
ffffffffc00028d0:	40b50533          	sub	a0,a0,a1
ffffffffc00028d4:	033335b7          	lui	a1,0x3333
ffffffffc00028d8:	3335859b          	addiw	a1,a1,819
ffffffffc00028dc:	00c59593          	slli	a1,a1,0xc
ffffffffc00028e0:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc00028e4:	00c59593          	slli	a1,a1,0xc
ffffffffc00028e8:	33358593          	addi	a1,a1,819
ffffffffc00028ec:	00c59593          	slli	a1,a1,0xc
ffffffffc00028f0:	33358593          	addi	a1,a1,819
ffffffffc00028f4:	00b57633          	and	a2,a0,a1
ffffffffc00028f8:	00255513          	srli	a0,a0,0x2
ffffffffc00028fc:	00b57533          	and	a0,a0,a1
ffffffffc0002900:	00a60533          	add	a0,a2,a0
ffffffffc0002904:	00455593          	srli	a1,a0,0x4
ffffffffc0002908:	00b50533          	add	a0,a0,a1
ffffffffc000290c:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0002910:	0f15859b          	addiw	a1,a1,241
ffffffffc0002914:	00c59593          	slli	a1,a1,0xc
ffffffffc0002918:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc000291c:	00c59593          	slli	a1,a1,0xc
ffffffffc0002920:	0f158593          	addi	a1,a1,241
ffffffffc0002924:	00c59593          	slli	a1,a1,0xc
ffffffffc0002928:	f0f58593          	addi	a1,a1,-241
ffffffffc000292c:	00b57533          	and	a0,a0,a1
ffffffffc0002930:	010105b7          	lui	a1,0x1010
ffffffffc0002934:	1015859b          	addiw	a1,a1,257
ffffffffc0002938:	01059593          	slli	a1,a1,0x10
ffffffffc000293c:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0002940:	01059593          	slli	a1,a1,0x10
ffffffffc0002944:	10158593          	addi	a1,a1,257
ffffffffc0002948:	00005097          	auipc	ra,0x5
ffffffffc000294c:	960080e7          	jalr	-1696(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0002950:	03855513          	srli	a0,a0,0x38
ffffffffc0002954:	04000593          	li	a1,64
ffffffffc0002958:	40a58533          	sub	a0,a1,a0
ffffffffc000295c:	00957533          	and	a0,a0,s1
ffffffffc0002960:	fff50513          	addi	a0,a0,-1
ffffffffc0002964:	06813483          	ld	s1,104(sp)
ffffffffc0002968:	07013403          	ld	s0,112(sp)
ffffffffc000296c:	07813083          	ld	ra,120(sp)
ffffffffc0002970:	08010113          	addi	sp,sp,128
ffffffffc0002974:	00008067          	ret
ffffffffc0002978:	f8640513          	addi	a0,s0,-122
ffffffffc000297c:	fca43c23          	sd	a0,-40(s0)
ffffffffc0002980:	fe040513          	addi	a0,s0,-32
ffffffffc0002984:	fca43423          	sd	a0,-56(s0)
ffffffffc0002988:	c0003537          	lui	a0,0xc0003
ffffffffc000298c:	9f050513          	addi	a0,a0,-1552 # ffffffffc00029f0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9fd4fe9da756717eE>
ffffffffc0002990:	fca43823          	sd	a0,-48(s0)
ffffffffc0002994:	fca43023          	sd	a0,-64(s0)
ffffffffc0002998:	fd840513          	addi	a0,s0,-40
ffffffffc000299c:	faa43c23          	sd	a0,-72(s0)
ffffffffc00029a0:	c0009537          	lui	a0,0xc0009
ffffffffc00029a4:	22e50513          	addi	a0,a0,558 # ffffffffc000922e <.Lanon.5e7f614c8c6b0b960d7115584530a912.4>
ffffffffc00029a8:	fea43023          	sd	a0,-32(s0)
ffffffffc00029ac:	00200513          	li	a0,2
ffffffffc00029b0:	faa43823          	sd	a0,-80(s0)
ffffffffc00029b4:	fb840513          	addi	a0,s0,-72
ffffffffc00029b8:	faa43423          	sd	a0,-88(s0)
ffffffffc00029bc:	f8043c23          	sd	zero,-104(s0)
ffffffffc00029c0:	00300513          	li	a0,3
ffffffffc00029c4:	f8a43823          	sd	a0,-112(s0)
ffffffffc00029c8:	c0009537          	lui	a0,0xc0009
ffffffffc00029cc:	27050513          	addi	a0,a0,624 # ffffffffc0009270 <.Lanon.5e7f614c8c6b0b960d7115584530a912.8>
ffffffffc00029d0:	f8a43423          	sd	a0,-120(s0)
ffffffffc00029d4:	c0009537          	lui	a0,0xc0009
ffffffffc00029d8:	2a050593          	addi	a1,a0,672 # ffffffffc00092a0 <.Lanon.5e7f614c8c6b0b960d7115584530a912.9>
ffffffffc00029dc:	f8840513          	addi	a0,s0,-120
ffffffffc00029e0:	00002097          	auipc	ra,0x2
ffffffffc00029e4:	874080e7          	jalr	-1932(ra) # ffffffffc0004254 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>
ffffffffc00029e8:	ffffe097          	auipc	ra,0xffffe
ffffffffc00029ec:	6a8080e7          	jalr	1704(ra) # ffffffffc0001090 <abort>

ffffffffc00029f0 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9fd4fe9da756717eE>:
ffffffffc00029f0:	fe010113          	addi	sp,sp,-32
ffffffffc00029f4:	00113c23          	sd	ra,24(sp)
ffffffffc00029f8:	00813823          	sd	s0,16(sp)
ffffffffc00029fc:	00913423          	sd	s1,8(sp)
ffffffffc0002a00:	01213023          	sd	s2,0(sp)
ffffffffc0002a04:	02010413          	addi	s0,sp,32
ffffffffc0002a08:	00058493          	mv	s1,a1
ffffffffc0002a0c:	00053903          	ld	s2,0(a0)
ffffffffc0002a10:	00058513          	mv	a0,a1
ffffffffc0002a14:	00003097          	auipc	ra,0x3
ffffffffc0002a18:	d80080e7          	jalr	-640(ra) # ffffffffc0005794 <_ZN4core3fmt9Formatter15debug_lower_hex17h27c74650559ef4d8E>
ffffffffc0002a1c:	00050c63          	beqz	a0,ffffffffc0002a34 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9fd4fe9da756717eE+0x44>
ffffffffc0002a20:	00090513          	mv	a0,s2
ffffffffc0002a24:	00048593          	mv	a1,s1
ffffffffc0002a28:	00001097          	auipc	ra,0x1
ffffffffc0002a2c:	818080e7          	jalr	-2024(ra) # ffffffffc0003240 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i16$GT$3fmt17h12a45201961cd33dE>
ffffffffc0002a30:	0380006f          	j	ffffffffc0002a68 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9fd4fe9da756717eE+0x78>
ffffffffc0002a34:	00048513          	mv	a0,s1
ffffffffc0002a38:	00003097          	auipc	ra,0x3
ffffffffc0002a3c:	d88080e7          	jalr	-632(ra) # ffffffffc00057c0 <_ZN4core3fmt9Formatter15debug_upper_hex17hf9c9ee08bbded667E>
ffffffffc0002a40:	00050c63          	beqz	a0,ffffffffc0002a58 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9fd4fe9da756717eE+0x68>
ffffffffc0002a44:	00090513          	mv	a0,s2
ffffffffc0002a48:	00048593          	mv	a1,s1
ffffffffc0002a4c:	00001097          	auipc	ra,0x1
ffffffffc0002a50:	8a4080e7          	jalr	-1884(ra) # ffffffffc00032f0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i16$GT$3fmt17h87e37d9b7e379e65E>
ffffffffc0002a54:	0140006f          	j	ffffffffc0002a68 <_ZN42_$LT$$RF$T$u20$as$u20$core..fmt..Debug$GT$3fmt17h9fd4fe9da756717eE+0x78>
ffffffffc0002a58:	00090513          	mv	a0,s2
ffffffffc0002a5c:	00048593          	mv	a1,s1
ffffffffc0002a60:	00001097          	auipc	ra,0x1
ffffffffc0002a64:	c78080e7          	jalr	-904(ra) # ffffffffc00036d8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17hd554b4b903dfd3b3E>
ffffffffc0002a68:	00013903          	ld	s2,0(sp)
ffffffffc0002a6c:	00813483          	ld	s1,8(sp)
ffffffffc0002a70:	01013403          	ld	s0,16(sp)
ffffffffc0002a74:	01813083          	ld	ra,24(sp)
ffffffffc0002a78:	02010113          	addi	sp,sp,32
ffffffffc0002a7c:	00008067          	ret

ffffffffc0002a80 <_ZN43_$LT$u16$u20$as$u20$bit_field..BitField$GT$8get_bits17hf956cbee7ae1e18bE>:
ffffffffc0002a80:	ff010113          	addi	sp,sp,-16
ffffffffc0002a84:	00113423          	sd	ra,8(sp)
ffffffffc0002a88:	00813023          	sd	s0,0(sp)
ffffffffc0002a8c:	01010413          	addi	s0,sp,16
ffffffffc0002a90:	01000693          	li	a3,16
ffffffffc0002a94:	04d5f263          	bgeu	a1,a3,ffffffffc0002ad8 <_ZN43_$LT$u16$u20$as$u20$bit_field..BitField$GT$8get_bits17hf956cbee7ae1e18bE+0x58>
ffffffffc0002a98:	01100693          	li	a3,17
ffffffffc0002a9c:	04d67a63          	bgeu	a2,a3,ffffffffc0002af0 <_ZN43_$LT$u16$u20$as$u20$bit_field..BitField$GT$8get_bits17hf956cbee7ae1e18bE+0x70>
ffffffffc0002aa0:	06c5f463          	bgeu	a1,a2,ffffffffc0002b08 <_ZN43_$LT$u16$u20$as$u20$bit_field..BitField$GT$8get_bits17hf956cbee7ae1e18bE+0x88>
ffffffffc0002aa4:	40c00633          	neg	a2,a2
ffffffffc0002aa8:	00f67613          	andi	a2,a2,15
ffffffffc0002aac:	000106b7          	lui	a3,0x10
ffffffffc0002ab0:	fff6869b          	addiw	a3,a3,-1
ffffffffc0002ab4:	00c6d633          	srl	a2,a3,a2
ffffffffc0002ab8:	00055503          	lhu	a0,0(a0)
ffffffffc0002abc:	00c57533          	and	a0,a0,a2
ffffffffc0002ac0:	00f5f593          	andi	a1,a1,15
ffffffffc0002ac4:	00b55533          	srl	a0,a0,a1
ffffffffc0002ac8:	00013403          	ld	s0,0(sp)
ffffffffc0002acc:	00813083          	ld	ra,8(sp)
ffffffffc0002ad0:	01010113          	addi	sp,sp,16
ffffffffc0002ad4:	00008067          	ret
ffffffffc0002ad8:	c0009537          	lui	a0,0xc0009
ffffffffc0002adc:	39850513          	addi	a0,a0,920 # ffffffffc0009398 <.Lanon.1eb8fccf7bbb1750b1e0a9dc5c7b65c9.4>
ffffffffc0002ae0:	00001097          	auipc	ra,0x1
ffffffffc0002ae4:	688080e7          	jalr	1672(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0002ae8:	ffffe097          	auipc	ra,0xffffe
ffffffffc0002aec:	5a8080e7          	jalr	1448(ra) # ffffffffc0001090 <abort>
ffffffffc0002af0:	c0009537          	lui	a0,0xc0009
ffffffffc0002af4:	3f850513          	addi	a0,a0,1016 # ffffffffc00093f8 <.Lanon.1eb8fccf7bbb1750b1e0a9dc5c7b65c9.6>
ffffffffc0002af8:	00001097          	auipc	ra,0x1
ffffffffc0002afc:	670080e7          	jalr	1648(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0002b00:	ffffe097          	auipc	ra,0xffffe
ffffffffc0002b04:	590080e7          	jalr	1424(ra) # ffffffffc0001090 <abort>
ffffffffc0002b08:	c0009537          	lui	a0,0xc0009
ffffffffc0002b0c:	45050513          	addi	a0,a0,1104 # ffffffffc0009450 <.Lanon.1eb8fccf7bbb1750b1e0a9dc5c7b65c9.8>
ffffffffc0002b10:	00001097          	auipc	ra,0x1
ffffffffc0002b14:	658080e7          	jalr	1624(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0002b18:	ffffe097          	auipc	ra,0xffffe
ffffffffc0002b1c:	578080e7          	jalr	1400(ra) # ffffffffc0001090 <abort>

ffffffffc0002b20 <_ZN43_$LT$u16$u20$as$u20$bit_field..BitField$GT$8set_bits17h83cfba8d7521d7b6E>:
ffffffffc0002b20:	ff010113          	addi	sp,sp,-16
ffffffffc0002b24:	00113423          	sd	ra,8(sp)
ffffffffc0002b28:	00813023          	sd	s0,0(sp)
ffffffffc0002b2c:	01010413          	addi	s0,sp,16
ffffffffc0002b30:	01000713          	li	a4,16
ffffffffc0002b34:	06e5fa63          	bgeu	a1,a4,ffffffffc0002ba8 <_ZN43_$LT$u16$u20$as$u20$bit_field..BitField$GT$8set_bits17h83cfba8d7521d7b6E+0x88>
ffffffffc0002b38:	01100713          	li	a4,17
ffffffffc0002b3c:	08e67263          	bgeu	a2,a4,ffffffffc0002bc0 <_ZN43_$LT$u16$u20$as$u20$bit_field..BitField$GT$8set_bits17h83cfba8d7521d7b6E+0xa0>
ffffffffc0002b40:	08c5fc63          	bgeu	a1,a2,ffffffffc0002bd8 <_ZN43_$LT$u16$u20$as$u20$bit_field..BitField$GT$8set_bits17h83cfba8d7521d7b6E+0xb8>
ffffffffc0002b44:	40c587b3          	sub	a5,a1,a2
ffffffffc0002b48:	00010737          	lui	a4,0x10
ffffffffc0002b4c:	fff7071b          	addiw	a4,a4,-1
ffffffffc0002b50:	00e6f833          	and	a6,a3,a4
ffffffffc0002b54:	00f7f793          	andi	a5,a5,15
ffffffffc0002b58:	00f757b3          	srl	a5,a4,a5
ffffffffc0002b5c:	00e7f7b3          	and	a5,a5,a4
ffffffffc0002b60:	0907e863          	bltu	a5,a6,ffffffffc0002bf0 <_ZN43_$LT$u16$u20$as$u20$bit_field..BitField$GT$8set_bits17h83cfba8d7521d7b6E+0xd0>
ffffffffc0002b64:	40c00633          	neg	a2,a2
ffffffffc0002b68:	00f67613          	andi	a2,a2,15
ffffffffc0002b6c:	00c75633          	srl	a2,a4,a2
ffffffffc0002b70:	00f5f593          	andi	a1,a1,15
ffffffffc0002b74:	fff00713          	li	a4,-1
ffffffffc0002b78:	00b71733          	sll	a4,a4,a1
ffffffffc0002b7c:	00e67633          	and	a2,a2,a4
ffffffffc0002b80:	fff64613          	not	a2,a2
ffffffffc0002b84:	00051703          	lh	a4,0(a0)
ffffffffc0002b88:	00c77633          	and	a2,a4,a2
ffffffffc0002b8c:	00b695b3          	sll	a1,a3,a1
ffffffffc0002b90:	00b665b3          	or	a1,a2,a1
ffffffffc0002b94:	00b51023          	sh	a1,0(a0)
ffffffffc0002b98:	00013403          	ld	s0,0(sp)
ffffffffc0002b9c:	00813083          	ld	ra,8(sp)
ffffffffc0002ba0:	01010113          	addi	sp,sp,16
ffffffffc0002ba4:	00008067          	ret
ffffffffc0002ba8:	c0009537          	lui	a0,0xc0009
ffffffffc0002bac:	39850513          	addi	a0,a0,920 # ffffffffc0009398 <.Lanon.1eb8fccf7bbb1750b1e0a9dc5c7b65c9.4>
ffffffffc0002bb0:	00001097          	auipc	ra,0x1
ffffffffc0002bb4:	5b8080e7          	jalr	1464(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0002bb8:	ffffe097          	auipc	ra,0xffffe
ffffffffc0002bbc:	4d8080e7          	jalr	1240(ra) # ffffffffc0001090 <abort>
ffffffffc0002bc0:	c0009537          	lui	a0,0xc0009
ffffffffc0002bc4:	3f850513          	addi	a0,a0,1016 # ffffffffc00093f8 <.Lanon.1eb8fccf7bbb1750b1e0a9dc5c7b65c9.6>
ffffffffc0002bc8:	00001097          	auipc	ra,0x1
ffffffffc0002bcc:	5a0080e7          	jalr	1440(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0002bd0:	ffffe097          	auipc	ra,0xffffe
ffffffffc0002bd4:	4c0080e7          	jalr	1216(ra) # ffffffffc0001090 <abort>
ffffffffc0002bd8:	c0009537          	lui	a0,0xc0009
ffffffffc0002bdc:	45050513          	addi	a0,a0,1104 # ffffffffc0009450 <.Lanon.1eb8fccf7bbb1750b1e0a9dc5c7b65c9.8>
ffffffffc0002be0:	00001097          	auipc	ra,0x1
ffffffffc0002be4:	588080e7          	jalr	1416(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0002be8:	ffffe097          	auipc	ra,0xffffe
ffffffffc0002bec:	4a8080e7          	jalr	1192(ra) # ffffffffc0001090 <abort>
ffffffffc0002bf0:	c0009537          	lui	a0,0xc0009
ffffffffc0002bf4:	4a050513          	addi	a0,a0,1184 # ffffffffc00094a0 <.Lanon.1eb8fccf7bbb1750b1e0a9dc5c7b65c9.10>
ffffffffc0002bf8:	00001097          	auipc	ra,0x1
ffffffffc0002bfc:	570080e7          	jalr	1392(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0002c00:	ffffe097          	auipc	ra,0xffffe
ffffffffc0002c04:	490080e7          	jalr	1168(ra) # ffffffffc0001090 <abort>

ffffffffc0002c08 <_ZN43_$LT$u64$u20$as$u20$bit_field..BitField$GT$8get_bits17h78521cca42bada2fE>:
ffffffffc0002c08:	ff010113          	addi	sp,sp,-16
ffffffffc0002c0c:	00113423          	sd	ra,8(sp)
ffffffffc0002c10:	00813023          	sd	s0,0(sp)
ffffffffc0002c14:	01010413          	addi	s0,sp,16
ffffffffc0002c18:	04000693          	li	a3,64
ffffffffc0002c1c:	02d5fc63          	bgeu	a1,a3,ffffffffc0002c54 <_ZN43_$LT$u64$u20$as$u20$bit_field..BitField$GT$8get_bits17h78521cca42bada2fE+0x4c>
ffffffffc0002c20:	04100693          	li	a3,65
ffffffffc0002c24:	04d67463          	bgeu	a2,a3,ffffffffc0002c6c <_ZN43_$LT$u64$u20$as$u20$bit_field..BitField$GT$8get_bits17h78521cca42bada2fE+0x64>
ffffffffc0002c28:	04c5fe63          	bgeu	a1,a2,ffffffffc0002c84 <_ZN43_$LT$u64$u20$as$u20$bit_field..BitField$GT$8get_bits17h78521cca42bada2fE+0x7c>
ffffffffc0002c2c:	40c00633          	neg	a2,a2
ffffffffc0002c30:	fff00693          	li	a3,-1
ffffffffc0002c34:	00c6d633          	srl	a2,a3,a2
ffffffffc0002c38:	00053503          	ld	a0,0(a0)
ffffffffc0002c3c:	00c57533          	and	a0,a0,a2
ffffffffc0002c40:	00b55533          	srl	a0,a0,a1
ffffffffc0002c44:	00013403          	ld	s0,0(sp)
ffffffffc0002c48:	00813083          	ld	ra,8(sp)
ffffffffc0002c4c:	01010113          	addi	sp,sp,16
ffffffffc0002c50:	00008067          	ret
ffffffffc0002c54:	c0009537          	lui	a0,0xc0009
ffffffffc0002c58:	39850513          	addi	a0,a0,920 # ffffffffc0009398 <.Lanon.1eb8fccf7bbb1750b1e0a9dc5c7b65c9.4>
ffffffffc0002c5c:	00001097          	auipc	ra,0x1
ffffffffc0002c60:	50c080e7          	jalr	1292(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0002c64:	ffffe097          	auipc	ra,0xffffe
ffffffffc0002c68:	42c080e7          	jalr	1068(ra) # ffffffffc0001090 <abort>
ffffffffc0002c6c:	c0009537          	lui	a0,0xc0009
ffffffffc0002c70:	3f850513          	addi	a0,a0,1016 # ffffffffc00093f8 <.Lanon.1eb8fccf7bbb1750b1e0a9dc5c7b65c9.6>
ffffffffc0002c74:	00001097          	auipc	ra,0x1
ffffffffc0002c78:	4f4080e7          	jalr	1268(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0002c7c:	ffffe097          	auipc	ra,0xffffe
ffffffffc0002c80:	414080e7          	jalr	1044(ra) # ffffffffc0001090 <abort>
ffffffffc0002c84:	c0009537          	lui	a0,0xc0009
ffffffffc0002c88:	45050513          	addi	a0,a0,1104 # ffffffffc0009450 <.Lanon.1eb8fccf7bbb1750b1e0a9dc5c7b65c9.8>
ffffffffc0002c8c:	00001097          	auipc	ra,0x1
ffffffffc0002c90:	4dc080e7          	jalr	1244(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0002c94:	ffffe097          	auipc	ra,0xffffe
ffffffffc0002c98:	3fc080e7          	jalr	1020(ra) # ffffffffc0001090 <abort>

ffffffffc0002c9c <_ZN43_$LT$i16$u20$as$u20$bit_field..BitField$GT$7set_bit17hc5a6a9b6c75218c7E>:
ffffffffc0002c9c:	ff010113          	addi	sp,sp,-16
ffffffffc0002ca0:	00113423          	sd	ra,8(sp)
ffffffffc0002ca4:	00813023          	sd	s0,0(sp)
ffffffffc0002ca8:	01010413          	addi	s0,sp,16
ffffffffc0002cac:	01000693          	li	a3,16
ffffffffc0002cb0:	04d5f063          	bgeu	a1,a3,ffffffffc0002cf0 <_ZN43_$LT$i16$u20$as$u20$bit_field..BitField$GT$7set_bit17hc5a6a9b6c75218c7E+0x54>
ffffffffc0002cb4:	00f5f593          	andi	a1,a1,15
ffffffffc0002cb8:	00100693          	li	a3,1
ffffffffc0002cbc:	00b695b3          	sll	a1,a3,a1
ffffffffc0002cc0:	00060863          	beqz	a2,ffffffffc0002cd0 <_ZN43_$LT$i16$u20$as$u20$bit_field..BitField$GT$7set_bit17hc5a6a9b6c75218c7E+0x34>
ffffffffc0002cc4:	00051603          	lh	a2,0(a0)
ffffffffc0002cc8:	00b665b3          	or	a1,a2,a1
ffffffffc0002ccc:	0100006f          	j	ffffffffc0002cdc <_ZN43_$LT$i16$u20$as$u20$bit_field..BitField$GT$7set_bit17hc5a6a9b6c75218c7E+0x40>
ffffffffc0002cd0:	fff5c593          	not	a1,a1
ffffffffc0002cd4:	00051603          	lh	a2,0(a0)
ffffffffc0002cd8:	00b675b3          	and	a1,a2,a1
ffffffffc0002cdc:	00b51023          	sh	a1,0(a0)
ffffffffc0002ce0:	00013403          	ld	s0,0(sp)
ffffffffc0002ce4:	00813083          	ld	ra,8(sp)
ffffffffc0002ce8:	01010113          	addi	sp,sp,16
ffffffffc0002cec:	00008067          	ret
ffffffffc0002cf0:	c0009537          	lui	a0,0xc0009
ffffffffc0002cf4:	33850513          	addi	a0,a0,824 # ffffffffc0009338 <.Lanon.1eb8fccf7bbb1750b1e0a9dc5c7b65c9.2>
ffffffffc0002cf8:	00001097          	auipc	ra,0x1
ffffffffc0002cfc:	470080e7          	jalr	1136(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0002d00:	ffffe097          	auipc	ra,0xffffe
ffffffffc0002d04:	390080e7          	jalr	912(ra) # ffffffffc0001090 <abort>

ffffffffc0002d08 <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE>:
ffffffffc0002d08:	ff010113          	addi	sp,sp,-16
ffffffffc0002d0c:	00113423          	sd	ra,8(sp)
ffffffffc0002d10:	00813023          	sd	s0,0(sp)
ffffffffc0002d14:	01010413          	addi	s0,sp,16
ffffffffc0002d18:	04000613          	li	a2,64
ffffffffc0002d1c:	02c5f463          	bgeu	a1,a2,ffffffffc0002d44 <_ZN43_$LT$i64$u20$as$u20$bit_field..BitField$GT$7get_bit17hcd3df06e81be417bE+0x3c>
ffffffffc0002d20:	00100613          	li	a2,1
ffffffffc0002d24:	00b615b3          	sll	a1,a2,a1
ffffffffc0002d28:	00053503          	ld	a0,0(a0)
ffffffffc0002d2c:	00b57533          	and	a0,a0,a1
ffffffffc0002d30:	00a03533          	snez	a0,a0
ffffffffc0002d34:	00013403          	ld	s0,0(sp)
ffffffffc0002d38:	00813083          	ld	ra,8(sp)
ffffffffc0002d3c:	01010113          	addi	sp,sp,16
ffffffffc0002d40:	00008067          	ret
ffffffffc0002d44:	c0009537          	lui	a0,0xc0009
ffffffffc0002d48:	33850513          	addi	a0,a0,824 # ffffffffc0009338 <.Lanon.1eb8fccf7bbb1750b1e0a9dc5c7b65c9.2>
ffffffffc0002d4c:	00001097          	auipc	ra,0x1
ffffffffc0002d50:	41c080e7          	jalr	1052(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0002d54:	ffffe097          	auipc	ra,0xffffe
ffffffffc0002d58:	33c080e7          	jalr	828(ra) # ffffffffc0001090 <abort>

ffffffffc0002d5c <_ZN12rcore_thread9processor9Processor10tid_option17hadef156e4b87ab78E>:
ffffffffc0002d5c:	ff010113          	addi	sp,sp,-16
ffffffffc0002d60:	00113423          	sd	ra,8(sp)
ffffffffc0002d64:	00813023          	sd	s0,0(sp)
ffffffffc0002d68:	01010413          	addi	s0,sp,16
ffffffffc0002d6c:	02053603          	ld	a2,32(a0)
ffffffffc0002d70:	00000593          	li	a1,0
ffffffffc0002d74:	00060463          	beqz	a2,ffffffffc0002d7c <_ZN12rcore_thread9processor9Processor10tid_option17hadef156e4b87ab78E+0x20>
ffffffffc0002d78:	00050593          	mv	a1,a0
ffffffffc0002d7c:	02060263          	beqz	a2,ffffffffc0002da0 <_ZN12rcore_thread9processor9Processor10tid_option17hadef156e4b87ab78E+0x44>
ffffffffc0002d80:	0105b503          	ld	a0,16(a1)
ffffffffc0002d84:	00050e63          	beqz	a0,ffffffffc0002da0 <_ZN12rcore_thread9processor9Processor10tid_option17hadef156e4b87ab78E+0x44>
ffffffffc0002d88:	00100513          	li	a0,1
ffffffffc0002d8c:	0085b583          	ld	a1,8(a1)
ffffffffc0002d90:	00013403          	ld	s0,0(sp)
ffffffffc0002d94:	00813083          	ld	ra,8(sp)
ffffffffc0002d98:	01010113          	addi	sp,sp,16
ffffffffc0002d9c:	00008067          	ret
ffffffffc0002da0:	00000513          	li	a0,0
ffffffffc0002da4:	00013403          	ld	s0,0(sp)
ffffffffc0002da8:	00813083          	ld	ra,8(sp)
ffffffffc0002dac:	01010113          	addi	sp,sp,16
ffffffffc0002db0:	00008067          	ret

ffffffffc0002db4 <_ZN22buddy_system_allocator4Heap4init17h414e0e4935858a51E>:
ffffffffc0002db4:	f9010113          	addi	sp,sp,-112
ffffffffc0002db8:	06113423          	sd	ra,104(sp)
ffffffffc0002dbc:	06813023          	sd	s0,96(sp)
ffffffffc0002dc0:	04913c23          	sd	s1,88(sp)
ffffffffc0002dc4:	05213823          	sd	s2,80(sp)
ffffffffc0002dc8:	05313423          	sd	s3,72(sp)
ffffffffc0002dcc:	05413023          	sd	s4,64(sp)
ffffffffc0002dd0:	03513c23          	sd	s5,56(sp)
ffffffffc0002dd4:	03613823          	sd	s6,48(sp)
ffffffffc0002dd8:	03713423          	sd	s7,40(sp)
ffffffffc0002ddc:	03813023          	sd	s8,32(sp)
ffffffffc0002de0:	01913c23          	sd	s9,24(sp)
ffffffffc0002de4:	01a13823          	sd	s10,16(sp)
ffffffffc0002de8:	01b13423          	sd	s11,8(sp)
ffffffffc0002dec:	07010413          	addi	s0,sp,112
ffffffffc0002df0:	00050913          	mv	s2,a0
ffffffffc0002df4:	00b60533          	add	a0,a2,a1
ffffffffc0002df8:	ff857a13          	andi	s4,a0,-8
ffffffffc0002dfc:	00758513          	addi	a0,a1,7
ffffffffc0002e00:	ff857493          	andi	s1,a0,-8
ffffffffc0002e04:	209a6463          	bltu	s4,s1,ffffffffc000300c <_ZN22buddy_system_allocator4Heap4init17h414e0e4935858a51E+0x258>
ffffffffc0002e08:	00848513          	addi	a0,s1,8
ffffffffc0002e0c:	00aa7663          	bgeu	s4,a0,ffffffffc0002e18 <_ZN22buddy_system_allocator4Heap4init17h414e0e4935858a51E+0x64>
ffffffffc0002e10:	00000b13          	li	s6,0
ffffffffc0002e14:	1940006f          	j	ffffffffc0002fa8 <_ZN22buddy_system_allocator4Heap4init17h414e0e4935858a51E+0x1f4>
ffffffffc0002e18:	04000a93          	li	s5,64
ffffffffc0002e1c:	05555537          	lui	a0,0x5555
ffffffffc0002e20:	5555051b          	addiw	a0,a0,1365
ffffffffc0002e24:	00c51513          	slli	a0,a0,0xc
ffffffffc0002e28:	55550513          	addi	a0,a0,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0002e2c:	00c51513          	slli	a0,a0,0xc
ffffffffc0002e30:	55550513          	addi	a0,a0,1365
ffffffffc0002e34:	00c51513          	slli	a0,a0,0xc
ffffffffc0002e38:	55550c93          	addi	s9,a0,1365
ffffffffc0002e3c:	03333537          	lui	a0,0x3333
ffffffffc0002e40:	3335051b          	addiw	a0,a0,819
ffffffffc0002e44:	00c51513          	slli	a0,a0,0xc
ffffffffc0002e48:	33350513          	addi	a0,a0,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0002e4c:	00c51513          	slli	a0,a0,0xc
ffffffffc0002e50:	33350513          	addi	a0,a0,819
ffffffffc0002e54:	00c51513          	slli	a0,a0,0xc
ffffffffc0002e58:	33350d13          	addi	s10,a0,819
ffffffffc0002e5c:	00f0f537          	lui	a0,0xf0f
ffffffffc0002e60:	0f15051b          	addiw	a0,a0,241
ffffffffc0002e64:	00c51513          	slli	a0,a0,0xc
ffffffffc0002e68:	f0f50513          	addi	a0,a0,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0002e6c:	00c51513          	slli	a0,a0,0xc
ffffffffc0002e70:	0f150513          	addi	a0,a0,241
ffffffffc0002e74:	00c51513          	slli	a0,a0,0xc
ffffffffc0002e78:	f0f50d93          	addi	s11,a0,-241
ffffffffc0002e7c:	01010537          	lui	a0,0x1010
ffffffffc0002e80:	1015051b          	addiw	a0,a0,257
ffffffffc0002e84:	01051513          	slli	a0,a0,0x10
ffffffffc0002e88:	10150513          	addi	a0,a0,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0002e8c:	01051513          	slli	a0,a0,0x10
ffffffffc0002e90:	10150993          	addi	s3,a0,257
ffffffffc0002e94:	00000b13          	li	s6,0
ffffffffc0002e98:	40900533          	neg	a0,s1
ffffffffc0002e9c:	00a4fc33          	and	s8,s1,a0
ffffffffc0002ea0:	409a05b3          	sub	a1,s4,s1
ffffffffc0002ea4:	000a8513          	mv	a0,s5
ffffffffc0002ea8:	06058863          	beqz	a1,ffffffffc0002f18 <_ZN22buddy_system_allocator4Heap4init17h414e0e4935858a51E+0x164>
ffffffffc0002eac:	0015d513          	srli	a0,a1,0x1
ffffffffc0002eb0:	00a5e533          	or	a0,a1,a0
ffffffffc0002eb4:	00255593          	srli	a1,a0,0x2
ffffffffc0002eb8:	00b56533          	or	a0,a0,a1
ffffffffc0002ebc:	00455593          	srli	a1,a0,0x4
ffffffffc0002ec0:	00b56533          	or	a0,a0,a1
ffffffffc0002ec4:	00855593          	srli	a1,a0,0x8
ffffffffc0002ec8:	00b56533          	or	a0,a0,a1
ffffffffc0002ecc:	01055593          	srli	a1,a0,0x10
ffffffffc0002ed0:	00b56533          	or	a0,a0,a1
ffffffffc0002ed4:	02055593          	srli	a1,a0,0x20
ffffffffc0002ed8:	00b56533          	or	a0,a0,a1
ffffffffc0002edc:	fff54513          	not	a0,a0
ffffffffc0002ee0:	00155593          	srli	a1,a0,0x1
ffffffffc0002ee4:	0195f5b3          	and	a1,a1,s9
ffffffffc0002ee8:	40b50533          	sub	a0,a0,a1
ffffffffc0002eec:	01a575b3          	and	a1,a0,s10
ffffffffc0002ef0:	00255513          	srli	a0,a0,0x2
ffffffffc0002ef4:	01a57533          	and	a0,a0,s10
ffffffffc0002ef8:	00a58533          	add	a0,a1,a0
ffffffffc0002efc:	00455593          	srli	a1,a0,0x4
ffffffffc0002f00:	00b50533          	add	a0,a0,a1
ffffffffc0002f04:	01b57533          	and	a0,a0,s11
ffffffffc0002f08:	00098593          	mv	a1,s3
ffffffffc0002f0c:	00004097          	auipc	ra,0x4
ffffffffc0002f10:	39c080e7          	jalr	924(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0002f14:	03855513          	srli	a0,a0,0x38
ffffffffc0002f18:	03f00593          	li	a1,63
ffffffffc0002f1c:	40a58533          	sub	a0,a1,a0
ffffffffc0002f20:	00100593          	li	a1,1
ffffffffc0002f24:	00a59bb3          	sll	s7,a1,a0
ffffffffc0002f28:	018be463          	bltu	s7,s8,ffffffffc0002f30 <_ZN22buddy_system_allocator4Heap4init17h414e0e4935858a51E+0x17c>
ffffffffc0002f2c:	000c0b93          	mv	s7,s8
ffffffffc0002f30:	000a8593          	mv	a1,s5
ffffffffc0002f34:	040b8463          	beqz	s7,ffffffffc0002f7c <_ZN22buddy_system_allocator4Heap4init17h414e0e4935858a51E+0x1c8>
ffffffffc0002f38:	fffb8513          	addi	a0,s7,-1 # fff <XLENb+0xfbf>
ffffffffc0002f3c:	fffbc593          	not	a1,s7
ffffffffc0002f40:	00a5f533          	and	a0,a1,a0
ffffffffc0002f44:	00155593          	srli	a1,a0,0x1
ffffffffc0002f48:	0195f5b3          	and	a1,a1,s9
ffffffffc0002f4c:	40b50533          	sub	a0,a0,a1
ffffffffc0002f50:	01a575b3          	and	a1,a0,s10
ffffffffc0002f54:	00255513          	srli	a0,a0,0x2
ffffffffc0002f58:	01a57533          	and	a0,a0,s10
ffffffffc0002f5c:	00a58533          	add	a0,a1,a0
ffffffffc0002f60:	00455593          	srli	a1,a0,0x4
ffffffffc0002f64:	00b50533          	add	a0,a0,a1
ffffffffc0002f68:	01b57533          	and	a0,a0,s11
ffffffffc0002f6c:	00098593          	mv	a1,s3
ffffffffc0002f70:	00004097          	auipc	ra,0x4
ffffffffc0002f74:	338080e7          	jalr	824(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0002f78:	03855593          	srli	a1,a0,0x38
ffffffffc0002f7c:	01f00513          	li	a0,31
ffffffffc0002f80:	06b56863          	bltu	a0,a1,ffffffffc0002ff0 <_ZN22buddy_system_allocator4Heap4init17h414e0e4935858a51E+0x23c>
ffffffffc0002f84:	00359513          	slli	a0,a1,0x3
ffffffffc0002f88:	00a90533          	add	a0,s2,a0
ffffffffc0002f8c:	00053583          	ld	a1,0(a0)
ffffffffc0002f90:	00b4b023          	sd	a1,0(s1)
ffffffffc0002f94:	00953023          	sd	s1,0(a0)
ffffffffc0002f98:	016b8b33          	add	s6,s7,s6
ffffffffc0002f9c:	009b84b3          	add	s1,s7,s1
ffffffffc0002fa0:	00848513          	addi	a0,s1,8
ffffffffc0002fa4:	eeaa7ae3          	bgeu	s4,a0,ffffffffc0002e98 <_ZN22buddy_system_allocator4Heap4init17h414e0e4935858a51E+0xe4>
ffffffffc0002fa8:	11093503          	ld	a0,272(s2)
ffffffffc0002fac:	01650533          	add	a0,a0,s6
ffffffffc0002fb0:	10a93823          	sd	a0,272(s2)
ffffffffc0002fb4:	00813d83          	ld	s11,8(sp)
ffffffffc0002fb8:	01013d03          	ld	s10,16(sp)
ffffffffc0002fbc:	01813c83          	ld	s9,24(sp)
ffffffffc0002fc0:	02013c03          	ld	s8,32(sp)
ffffffffc0002fc4:	02813b83          	ld	s7,40(sp)
ffffffffc0002fc8:	03013b03          	ld	s6,48(sp)
ffffffffc0002fcc:	03813a83          	ld	s5,56(sp)
ffffffffc0002fd0:	04013a03          	ld	s4,64(sp)
ffffffffc0002fd4:	04813983          	ld	s3,72(sp)
ffffffffc0002fd8:	05013903          	ld	s2,80(sp)
ffffffffc0002fdc:	05813483          	ld	s1,88(sp)
ffffffffc0002fe0:	06013403          	ld	s0,96(sp)
ffffffffc0002fe4:	06813083          	ld	ra,104(sp)
ffffffffc0002fe8:	07010113          	addi	sp,sp,112
ffffffffc0002fec:	00008067          	ret
ffffffffc0002ff0:	c0009537          	lui	a0,0xc0009
ffffffffc0002ff4:	5d850513          	addi	a0,a0,1496 # ffffffffc00095d8 <.Lanon.5f20b1f58b72a117d225c7df9f606464.3>
ffffffffc0002ff8:	02000613          	li	a2,32
ffffffffc0002ffc:	00001097          	auipc	ra,0x1
ffffffffc0003000:	1e0080e7          	jalr	480(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0003004:	ffffe097          	auipc	ra,0xffffe
ffffffffc0003008:	08c080e7          	jalr	140(ra) # ffffffffc0001090 <abort>
ffffffffc000300c:	c0009537          	lui	a0,0xc0009
ffffffffc0003010:	54850513          	addi	a0,a0,1352 # ffffffffc0009548 <.Lanon.5f20b1f58b72a117d225c7df9f606464.2>
ffffffffc0003014:	00001097          	auipc	ra,0x1
ffffffffc0003018:	154080e7          	jalr	340(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc000301c:	ffffe097          	auipc	ra,0xffffe
ffffffffc0003020:	074080e7          	jalr	116(ra) # ffffffffc0001090 <abort>

ffffffffc0003024 <_ZN88_$LT$buddy_system_allocator..LockedHeapWithRescue$u20$as$u20$core..ops..deref..Deref$GT$5deref17h257e5cbacf2e8710E>:
ffffffffc0003024:	ff010113          	addi	sp,sp,-16
ffffffffc0003028:	00113423          	sd	ra,8(sp)
ffffffffc000302c:	00813023          	sd	s0,0(sp)
ffffffffc0003030:	01010413          	addi	s0,sp,16
ffffffffc0003034:	00013403          	ld	s0,0(sp)
ffffffffc0003038:	00813083          	ld	ra,8(sp)
ffffffffc000303c:	01010113          	addi	sp,sp,16
ffffffffc0003040:	00008067          	ret

ffffffffc0003044 <_ZN74_$LT$spin..once..Finish$LT$$u27$a$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h654284c2fdccbe76E>:
ffffffffc0003044:	ff010113          	addi	sp,sp,-16
ffffffffc0003048:	00113423          	sd	ra,8(sp)
ffffffffc000304c:	00813023          	sd	s0,0(sp)
ffffffffc0003050:	01010413          	addi	s0,sp,16
ffffffffc0003054:	00854583          	lbu	a1,8(a0)
ffffffffc0003058:	00058c63          	beqz	a1,ffffffffc0003070 <_ZN74_$LT$spin..once..Finish$LT$$u27$a$GT$$u20$as$u20$core..ops..drop..Drop$GT$4drop17h654284c2fdccbe76E+0x2c>
ffffffffc000305c:	00053503          	ld	a0,0(a0)
ffffffffc0003060:	00300593          	li	a1,3
ffffffffc0003064:	00500613          	li	a2,5
ffffffffc0003068:	ffffe097          	auipc	ra,0xffffe
ffffffffc000306c:	16c080e7          	jalr	364(ra) # ffffffffc00011d4 <__atomic_store_8>
ffffffffc0003070:	00013403          	ld	s0,0(sp)
ffffffffc0003074:	00813083          	ld	ra,8(sp)
ffffffffc0003078:	01010113          	addi	sp,sp,16
ffffffffc000307c:	00008067          	ret

ffffffffc0003080 <_ZN4core3ptr18real_drop_in_place17h55d3caa2ecaff896E>:
ffffffffc0003080:	ff010113          	addi	sp,sp,-16
ffffffffc0003084:	00113423          	sd	ra,8(sp)
ffffffffc0003088:	00813023          	sd	s0,0(sp)
ffffffffc000308c:	01010413          	addi	s0,sp,16
ffffffffc0003090:	00013403          	ld	s0,0(sp)
ffffffffc0003094:	00813083          	ld	ra,8(sp)
ffffffffc0003098:	01010113          	addi	sp,sp,16
ffffffffc000309c:	00008067          	ret

ffffffffc00030a0 <_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$7enabled17he212b390a40da6f7E>:
ffffffffc00030a0:	ff010113          	addi	sp,sp,-16
ffffffffc00030a4:	00113423          	sd	ra,8(sp)
ffffffffc00030a8:	00813023          	sd	s0,0(sp)
ffffffffc00030ac:	01010413          	addi	s0,sp,16
ffffffffc00030b0:	00000513          	li	a0,0
ffffffffc00030b4:	00013403          	ld	s0,0(sp)
ffffffffc00030b8:	00813083          	ld	ra,8(sp)
ffffffffc00030bc:	01010113          	addi	sp,sp,16
ffffffffc00030c0:	00008067          	ret

ffffffffc00030c4 <_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$3log17h551c8a94a308baefE>:
ffffffffc00030c4:	ff010113          	addi	sp,sp,-16
ffffffffc00030c8:	00113423          	sd	ra,8(sp)
ffffffffc00030cc:	00813023          	sd	s0,0(sp)
ffffffffc00030d0:	01010413          	addi	s0,sp,16
ffffffffc00030d4:	00013403          	ld	s0,0(sp)
ffffffffc00030d8:	00813083          	ld	ra,8(sp)
ffffffffc00030dc:	01010113          	addi	sp,sp,16
ffffffffc00030e0:	00008067          	ret

ffffffffc00030e4 <_ZN43_$LT$log..NopLogger$u20$as$u20$log..Log$GT$5flush17hd1b7fb83b273d384E>:
ffffffffc00030e4:	ff010113          	addi	sp,sp,-16
ffffffffc00030e8:	00113423          	sd	ra,8(sp)
ffffffffc00030ec:	00813023          	sd	s0,0(sp)
ffffffffc00030f0:	01010413          	addi	s0,sp,16
ffffffffc00030f4:	00013403          	ld	s0,0(sp)
ffffffffc00030f8:	00813083          	ld	ra,8(sp)
ffffffffc00030fc:	01010113          	addi	sp,sp,16
ffffffffc0003100:	00008067          	ret

ffffffffc0003104 <_ZN3log17__private_api_log17hc32563721e7c7a78E>:
ffffffffc0003104:	f3010113          	addi	sp,sp,-208
ffffffffc0003108:	0c113423          	sd	ra,200(sp)
ffffffffc000310c:	0c813023          	sd	s0,192(sp)
ffffffffc0003110:	0a913c23          	sd	s1,184(sp)
ffffffffc0003114:	0b213823          	sd	s2,176(sp)
ffffffffc0003118:	0b313423          	sd	s3,168(sp)
ffffffffc000311c:	0b413023          	sd	s4,160(sp)
ffffffffc0003120:	09513c23          	sd	s5,152(sp)
ffffffffc0003124:	09613823          	sd	s6,144(sp)
ffffffffc0003128:	09713423          	sd	s7,136(sp)
ffffffffc000312c:	09813023          	sd	s8,128(sp)
ffffffffc0003130:	07913c23          	sd	s9,120(sp)
ffffffffc0003134:	0d010413          	addi	s0,sp,208
ffffffffc0003138:	00058913          	mv	s2,a1
ffffffffc000313c:	00050493          	mv	s1,a0
ffffffffc0003140:	01063983          	ld	s3,16(a2) # 1010 <XLENb+0xfd0>
ffffffffc0003144:	01863a03          	ld	s4,24(a2)
ffffffffc0003148:	02063a83          	ld	s5,32(a2)
ffffffffc000314c:	02863b03          	ld	s6,40(a2)
ffffffffc0003150:	03062b83          	lw	s7,48(a2)
ffffffffc0003154:	00063c03          	ld	s8,0(a2)
ffffffffc0003158:	00863c83          	ld	s9,8(a2)
ffffffffc000315c:	c0213537          	lui	a0,0xc0213
ffffffffc0003160:	07850513          	addi	a0,a0,120 # ffffffffc0213078 <_ZN3log5STATE17h82e80c438c164fd2E>
ffffffffc0003164:	00500593          	li	a1,5
ffffffffc0003168:	ffffe097          	auipc	ra,0xffffe
ffffffffc000316c:	010080e7          	jalr	16(ra) # ffffffffc0001178 <__atomic_load_8>
ffffffffc0003170:	00050593          	mv	a1,a0
ffffffffc0003174:	c000d637          	lui	a2,0xc000d
ffffffffc0003178:	00200693          	li	a3,2
ffffffffc000317c:	00d50e63          	beq	a0,a3,ffffffffc0003198 <_ZN3log17__private_api_log17hc32563721e7c7a78E+0x94>
ffffffffc0003180:	c0009537          	lui	a0,0xc0009
ffffffffc0003184:	5f050513          	addi	a0,a0,1520 # ffffffffc00095f0 <.Lanon.8856ea40fba94ed7f7c9709234e2807a.15>
ffffffffc0003188:	00d59c63          	bne	a1,a3,ffffffffc00031a0 <_ZN3log17__private_api_log17hc32563721e7c7a78E+0x9c>
ffffffffc000318c:	15860593          	addi	a1,a2,344 # ffffffffc000d158 <_ZN3log6LOGGER17h248b1b32f2af3ff4E>
ffffffffc0003190:	0085b583          	ld	a1,8(a1)
ffffffffc0003194:	0140006f          	j	ffffffffc00031a8 <_ZN3log17__private_api_log17hc32563721e7c7a78E+0xa4>
ffffffffc0003198:	15863503          	ld	a0,344(a2)
ffffffffc000319c:	fed588e3          	beq	a1,a3,ffffffffc000318c <_ZN3log17__private_api_log17hc32563721e7c7a78E+0x88>
ffffffffc00031a0:	c00095b7          	lui	a1,0xc0009
ffffffffc00031a4:	5f058593          	addi	a1,a1,1520 # ffffffffc00095f0 <.Lanon.8856ea40fba94ed7f7c9709234e2807a.15>
ffffffffc00031a8:	0184b603          	ld	a2,24(s1)
ffffffffc00031ac:	0204b683          	ld	a3,32(s1)
ffffffffc00031b0:	0284b703          	ld	a4,40(s1)
ffffffffc00031b4:	0004b783          	ld	a5,0(s1)
ffffffffc00031b8:	f4f43823          	sd	a5,-176(s0)
ffffffffc00031bc:	f5943423          	sd	s9,-184(s0)
ffffffffc00031c0:	f5843023          	sd	s8,-192(s0)
ffffffffc00031c4:	f3243c23          	sd	s2,-200(s0)
ffffffffc00031c8:	0104b783          	ld	a5,16(s1)
ffffffffc00031cc:	f6f43023          	sd	a5,-160(s0)
ffffffffc00031d0:	0084b783          	ld	a5,8(s1)
ffffffffc00031d4:	f4f43c23          	sd	a5,-168(s0)
ffffffffc00031d8:	fb742223          	sw	s7,-92(s0)
ffffffffc00031dc:	00100793          	li	a5,1
ffffffffc00031e0:	faf42023          	sw	a5,-96(s0)
ffffffffc00031e4:	f9643c23          	sd	s6,-104(s0)
ffffffffc00031e8:	f9543823          	sd	s5,-112(s0)
ffffffffc00031ec:	f9443423          	sd	s4,-120(s0)
ffffffffc00031f0:	f9343023          	sd	s3,-128(s0)
ffffffffc00031f4:	f6e43c23          	sd	a4,-136(s0)
ffffffffc00031f8:	f6d43823          	sd	a3,-144(s0)
ffffffffc00031fc:	f6c43423          	sd	a2,-152(s0)
ffffffffc0003200:	0205b603          	ld	a2,32(a1)
ffffffffc0003204:	f3840593          	addi	a1,s0,-200
ffffffffc0003208:	000600e7          	jalr	a2
ffffffffc000320c:	07813c83          	ld	s9,120(sp)
ffffffffc0003210:	08013c03          	ld	s8,128(sp)
ffffffffc0003214:	08813b83          	ld	s7,136(sp)
ffffffffc0003218:	09013b03          	ld	s6,144(sp)
ffffffffc000321c:	09813a83          	ld	s5,152(sp)
ffffffffc0003220:	0a013a03          	ld	s4,160(sp)
ffffffffc0003224:	0a813983          	ld	s3,168(sp)
ffffffffc0003228:	0b013903          	ld	s2,176(sp)
ffffffffc000322c:	0b813483          	ld	s1,184(sp)
ffffffffc0003230:	0c013403          	ld	s0,192(sp)
ffffffffc0003234:	0c813083          	ld	ra,200(sp)
ffffffffc0003238:	0d010113          	addi	sp,sp,208
ffffffffc000323c:	00008067          	ret

ffffffffc0003240 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i16$GT$3fmt17h12a45201961cd33dE>:
ffffffffc0003240:	f7010113          	addi	sp,sp,-144
ffffffffc0003244:	08113423          	sd	ra,136(sp)
ffffffffc0003248:	08813023          	sd	s0,128(sp)
ffffffffc000324c:	09010413          	addi	s0,sp,144
ffffffffc0003250:	00058813          	mv	a6,a1
ffffffffc0003254:	00055683          	lhu	a3,0(a0)
ffffffffc0003258:	00a00513          	li	a0,10
ffffffffc000325c:	f7040893          	addi	a7,s0,-144
ffffffffc0003260:	00001637          	lui	a2,0x1
ffffffffc0003264:	fff6071b          	addiw	a4,a2,-1
ffffffffc0003268:	00000613          	li	a2,0
ffffffffc000326c:	00f6f793          	andi	a5,a3,15
ffffffffc0003270:	00a7e663          	bltu	a5,a0,ffffffffc000327c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i16$GT$3fmt17h12a45201961cd33dE+0x3c>
ffffffffc0003274:	05778793          	addi	a5,a5,87
ffffffffc0003278:	0080006f          	j	ffffffffc0003280 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i16$GT$3fmt17h12a45201961cd33dE+0x40>
ffffffffc000327c:	0307e793          	ori	a5,a5,48
ffffffffc0003280:	00c885b3          	add	a1,a7,a2
ffffffffc0003284:	06f58fa3          	sb	a5,127(a1)
ffffffffc0003288:	0046d593          	srli	a1,a3,0x4
ffffffffc000328c:	00e5f6b3          	and	a3,a1,a4
ffffffffc0003290:	fff60613          	addi	a2,a2,-1 # fff <XLENb+0xfbf>
ffffffffc0003294:	fc069ce3          	bnez	a3,ffffffffc000326c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i16$GT$3fmt17h12a45201961cd33dE+0x2c>
ffffffffc0003298:	08060513          	addi	a0,a2,128
ffffffffc000329c:	08100593          	li	a1,129
ffffffffc00032a0:	02b57e63          	bgeu	a0,a1,ffffffffc00032dc <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i16$GT$3fmt17h12a45201961cd33dE+0x9c>
ffffffffc00032a4:	00c88533          	add	a0,a7,a2
ffffffffc00032a8:	40c007b3          	neg	a5,a2
ffffffffc00032ac:	08050713          	addi	a4,a0,128
ffffffffc00032b0:	c0009537          	lui	a0,0xc0009
ffffffffc00032b4:	62050613          	addi	a2,a0,1568 # ffffffffc0009620 <anon.10b7be5cca1e645782a840f752253638.0.llvm.17117805323420214334>
ffffffffc00032b8:	00100593          	li	a1,1
ffffffffc00032bc:	00200693          	li	a3,2
ffffffffc00032c0:	00080513          	mv	a0,a6
ffffffffc00032c4:	00002097          	auipc	ra,0x2
ffffffffc00032c8:	cc0080e7          	jalr	-832(ra) # ffffffffc0004f84 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>
ffffffffc00032cc:	08013403          	ld	s0,128(sp)
ffffffffc00032d0:	08813083          	ld	ra,136(sp)
ffffffffc00032d4:	09010113          	addi	sp,sp,144
ffffffffc00032d8:	00008067          	ret
ffffffffc00032dc:	08000593          	li	a1,128
ffffffffc00032e0:	00002097          	auipc	ra,0x2
ffffffffc00032e4:	850080e7          	jalr	-1968(ra) # ffffffffc0004b30 <_ZN4core5slice22slice_index_order_fail17h2c29e16eca0878c2E>
ffffffffc00032e8:	ffffe097          	auipc	ra,0xffffe
ffffffffc00032ec:	da8080e7          	jalr	-600(ra) # ffffffffc0001090 <abort>

ffffffffc00032f0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i16$GT$3fmt17h87e37d9b7e379e65E>:
ffffffffc00032f0:	f7010113          	addi	sp,sp,-144
ffffffffc00032f4:	08113423          	sd	ra,136(sp)
ffffffffc00032f8:	08813023          	sd	s0,128(sp)
ffffffffc00032fc:	09010413          	addi	s0,sp,144
ffffffffc0003300:	00058813          	mv	a6,a1
ffffffffc0003304:	00055683          	lhu	a3,0(a0)
ffffffffc0003308:	00a00513          	li	a0,10
ffffffffc000330c:	f7040893          	addi	a7,s0,-144
ffffffffc0003310:	00001637          	lui	a2,0x1
ffffffffc0003314:	fff6071b          	addiw	a4,a2,-1
ffffffffc0003318:	00000613          	li	a2,0
ffffffffc000331c:	00f6f793          	andi	a5,a3,15
ffffffffc0003320:	00a7e663          	bltu	a5,a0,ffffffffc000332c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i16$GT$3fmt17h87e37d9b7e379e65E+0x3c>
ffffffffc0003324:	03778793          	addi	a5,a5,55
ffffffffc0003328:	0080006f          	j	ffffffffc0003330 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i16$GT$3fmt17h87e37d9b7e379e65E+0x40>
ffffffffc000332c:	0307e793          	ori	a5,a5,48
ffffffffc0003330:	00c885b3          	add	a1,a7,a2
ffffffffc0003334:	06f58fa3          	sb	a5,127(a1)
ffffffffc0003338:	0046d593          	srli	a1,a3,0x4
ffffffffc000333c:	00e5f6b3          	and	a3,a1,a4
ffffffffc0003340:	fff60613          	addi	a2,a2,-1 # fff <XLENb+0xfbf>
ffffffffc0003344:	fc069ce3          	bnez	a3,ffffffffc000331c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i16$GT$3fmt17h87e37d9b7e379e65E+0x2c>
ffffffffc0003348:	08060513          	addi	a0,a2,128
ffffffffc000334c:	08100593          	li	a1,129
ffffffffc0003350:	02b57e63          	bgeu	a0,a1,ffffffffc000338c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i16$GT$3fmt17h87e37d9b7e379e65E+0x9c>
ffffffffc0003354:	00c88533          	add	a0,a7,a2
ffffffffc0003358:	40c007b3          	neg	a5,a2
ffffffffc000335c:	08050713          	addi	a4,a0,128
ffffffffc0003360:	c0009537          	lui	a0,0xc0009
ffffffffc0003364:	62050613          	addi	a2,a0,1568 # ffffffffc0009620 <anon.10b7be5cca1e645782a840f752253638.0.llvm.17117805323420214334>
ffffffffc0003368:	00100593          	li	a1,1
ffffffffc000336c:	00200693          	li	a3,2
ffffffffc0003370:	00080513          	mv	a0,a6
ffffffffc0003374:	00002097          	auipc	ra,0x2
ffffffffc0003378:	c10080e7          	jalr	-1008(ra) # ffffffffc0004f84 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>
ffffffffc000337c:	08013403          	ld	s0,128(sp)
ffffffffc0003380:	08813083          	ld	ra,136(sp)
ffffffffc0003384:	09010113          	addi	sp,sp,144
ffffffffc0003388:	00008067          	ret
ffffffffc000338c:	08000593          	li	a1,128
ffffffffc0003390:	00001097          	auipc	ra,0x1
ffffffffc0003394:	7a0080e7          	jalr	1952(ra) # ffffffffc0004b30 <_ZN4core5slice22slice_index_order_fail17h2c29e16eca0878c2E>
ffffffffc0003398:	ffffe097          	auipc	ra,0xffffe
ffffffffc000339c:	cf8080e7          	jalr	-776(ra) # ffffffffc0001090 <abort>

ffffffffc00033a0 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h4e3d261f6c3eb358E>:
ffffffffc00033a0:	f7010113          	addi	sp,sp,-144
ffffffffc00033a4:	08113423          	sd	ra,136(sp)
ffffffffc00033a8:	08813023          	sd	s0,128(sp)
ffffffffc00033ac:	09010413          	addi	s0,sp,144
ffffffffc00033b0:	00058813          	mv	a6,a1
ffffffffc00033b4:	00053503          	ld	a0,0(a0)
ffffffffc00033b8:	00a00693          	li	a3,10
ffffffffc00033bc:	f7040613          	addi	a2,s0,-144
ffffffffc00033c0:	00000593          	li	a1,0
ffffffffc00033c4:	00f57713          	andi	a4,a0,15
ffffffffc00033c8:	00d76663          	bltu	a4,a3,ffffffffc00033d4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h4e3d261f6c3eb358E+0x34>
ffffffffc00033cc:	05770713          	addi	a4,a4,87 # 10057 <XLENb+0x10017>
ffffffffc00033d0:	0080006f          	j	ffffffffc00033d8 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h4e3d261f6c3eb358E+0x38>
ffffffffc00033d4:	03076713          	ori	a4,a4,48
ffffffffc00033d8:	00b607b3          	add	a5,a2,a1
ffffffffc00033dc:	06e78fa3          	sb	a4,127(a5)
ffffffffc00033e0:	fff58593          	addi	a1,a1,-1
ffffffffc00033e4:	00455513          	srli	a0,a0,0x4
ffffffffc00033e8:	fc051ee3          	bnez	a0,ffffffffc00033c4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h4e3d261f6c3eb358E+0x24>
ffffffffc00033ec:	08058513          	addi	a0,a1,128
ffffffffc00033f0:	08100693          	li	a3,129
ffffffffc00033f4:	02d57e63          	bgeu	a0,a3,ffffffffc0003430 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..LowerHex$u20$for$u20$i64$GT$3fmt17h4e3d261f6c3eb358E+0x90>
ffffffffc00033f8:	00b60533          	add	a0,a2,a1
ffffffffc00033fc:	40b007b3          	neg	a5,a1
ffffffffc0003400:	08050713          	addi	a4,a0,128
ffffffffc0003404:	c0009537          	lui	a0,0xc0009
ffffffffc0003408:	62050613          	addi	a2,a0,1568 # ffffffffc0009620 <anon.10b7be5cca1e645782a840f752253638.0.llvm.17117805323420214334>
ffffffffc000340c:	00100593          	li	a1,1
ffffffffc0003410:	00200693          	li	a3,2
ffffffffc0003414:	00080513          	mv	a0,a6
ffffffffc0003418:	00002097          	auipc	ra,0x2
ffffffffc000341c:	b6c080e7          	jalr	-1172(ra) # ffffffffc0004f84 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>
ffffffffc0003420:	08013403          	ld	s0,128(sp)
ffffffffc0003424:	08813083          	ld	ra,136(sp)
ffffffffc0003428:	09010113          	addi	sp,sp,144
ffffffffc000342c:	00008067          	ret
ffffffffc0003430:	08000593          	li	a1,128
ffffffffc0003434:	00001097          	auipc	ra,0x1
ffffffffc0003438:	6fc080e7          	jalr	1788(ra) # ffffffffc0004b30 <_ZN4core5slice22slice_index_order_fail17h2c29e16eca0878c2E>
ffffffffc000343c:	ffffe097          	auipc	ra,0xffffe
ffffffffc0003440:	c54080e7          	jalr	-940(ra) # ffffffffc0001090 <abort>

ffffffffc0003444 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17hd9a2e0e88955b4ccE>:
ffffffffc0003444:	f7010113          	addi	sp,sp,-144
ffffffffc0003448:	08113423          	sd	ra,136(sp)
ffffffffc000344c:	08813023          	sd	s0,128(sp)
ffffffffc0003450:	09010413          	addi	s0,sp,144
ffffffffc0003454:	00058813          	mv	a6,a1
ffffffffc0003458:	00053503          	ld	a0,0(a0)
ffffffffc000345c:	00a00693          	li	a3,10
ffffffffc0003460:	f7040613          	addi	a2,s0,-144
ffffffffc0003464:	00000593          	li	a1,0
ffffffffc0003468:	00f57713          	andi	a4,a0,15
ffffffffc000346c:	00d76663          	bltu	a4,a3,ffffffffc0003478 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17hd9a2e0e88955b4ccE+0x34>
ffffffffc0003470:	03770713          	addi	a4,a4,55
ffffffffc0003474:	0080006f          	j	ffffffffc000347c <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17hd9a2e0e88955b4ccE+0x38>
ffffffffc0003478:	03076713          	ori	a4,a4,48
ffffffffc000347c:	00b607b3          	add	a5,a2,a1
ffffffffc0003480:	06e78fa3          	sb	a4,127(a5)
ffffffffc0003484:	fff58593          	addi	a1,a1,-1
ffffffffc0003488:	00455513          	srli	a0,a0,0x4
ffffffffc000348c:	fc051ee3          	bnez	a0,ffffffffc0003468 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17hd9a2e0e88955b4ccE+0x24>
ffffffffc0003490:	08058513          	addi	a0,a1,128
ffffffffc0003494:	08100693          	li	a3,129
ffffffffc0003498:	02d57e63          	bgeu	a0,a3,ffffffffc00034d4 <_ZN4core3fmt3num53_$LT$impl$u20$core..fmt..UpperHex$u20$for$u20$i64$GT$3fmt17hd9a2e0e88955b4ccE+0x90>
ffffffffc000349c:	00b60533          	add	a0,a2,a1
ffffffffc00034a0:	40b007b3          	neg	a5,a1
ffffffffc00034a4:	08050713          	addi	a4,a0,128
ffffffffc00034a8:	c0009537          	lui	a0,0xc0009
ffffffffc00034ac:	62050613          	addi	a2,a0,1568 # ffffffffc0009620 <anon.10b7be5cca1e645782a840f752253638.0.llvm.17117805323420214334>
ffffffffc00034b0:	00100593          	li	a1,1
ffffffffc00034b4:	00200693          	li	a3,2
ffffffffc00034b8:	00080513          	mv	a0,a6
ffffffffc00034bc:	00002097          	auipc	ra,0x2
ffffffffc00034c0:	ac8080e7          	jalr	-1336(ra) # ffffffffc0004f84 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>
ffffffffc00034c4:	08013403          	ld	s0,128(sp)
ffffffffc00034c8:	08813083          	ld	ra,136(sp)
ffffffffc00034cc:	09010113          	addi	sp,sp,144
ffffffffc00034d0:	00008067          	ret
ffffffffc00034d4:	08000593          	li	a1,128
ffffffffc00034d8:	00001097          	auipc	ra,0x1
ffffffffc00034dc:	658080e7          	jalr	1624(ra) # ffffffffc0004b30 <_ZN4core5slice22slice_index_order_fail17h2c29e16eca0878c2E>
ffffffffc00034e0:	ffffe097          	auipc	ra,0xffffe
ffffffffc00034e4:	bb0080e7          	jalr	-1104(ra) # ffffffffc0001090 <abort>

ffffffffc00034e8 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h80950d3c25342576E>:
ffffffffc00034e8:	fa010113          	addi	sp,sp,-96
ffffffffc00034ec:	04113c23          	sd	ra,88(sp)
ffffffffc00034f0:	04813823          	sd	s0,80(sp)
ffffffffc00034f4:	06010413          	addi	s0,sp,96
ffffffffc00034f8:	faa43023          	sd	a0,-96(s0)
ffffffffc00034fc:	00850513          	addi	a0,a0,8
ffffffffc0003500:	faa43823          	sd	a0,-80(s0)
ffffffffc0003504:	c0003537          	lui	a0,0xc0003
ffffffffc0003508:	5cc50513          	addi	a0,a0,1484 # ffffffffc00035cc <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE>
ffffffffc000350c:	faa43c23          	sd	a0,-72(s0)
ffffffffc0003510:	faa43423          	sd	a0,-88(s0)
ffffffffc0003514:	0285b683          	ld	a3,40(a1)
ffffffffc0003518:	0205b503          	ld	a0,32(a1)
ffffffffc000351c:	fa040593          	addi	a1,s0,-96
ffffffffc0003520:	feb43023          	sd	a1,-32(s0)
ffffffffc0003524:	fc043823          	sd	zero,-48(s0)
ffffffffc0003528:	00200593          	li	a1,2
ffffffffc000352c:	feb43423          	sd	a1,-24(s0)
ffffffffc0003530:	fcb43423          	sd	a1,-56(s0)
ffffffffc0003534:	c00095b7          	lui	a1,0xc0009
ffffffffc0003538:	70058593          	addi	a1,a1,1792 # ffffffffc0009700 <.Lanon.17b8001241bf42806d94414b82e2ff68.3>
ffffffffc000353c:	fcb43023          	sd	a1,-64(s0)
ffffffffc0003540:	fc040613          	addi	a2,s0,-64
ffffffffc0003544:	00068593          	mv	a1,a3
ffffffffc0003548:	00001097          	auipc	ra,0x1
ffffffffc000354c:	6a4080e7          	jalr	1700(ra) # ffffffffc0004bec <_ZN4core3fmt5write17h62151e7ab9dfc071E>
ffffffffc0003550:	05013403          	ld	s0,80(sp)
ffffffffc0003554:	05813083          	ld	ra,88(sp)
ffffffffc0003558:	06010113          	addi	sp,sp,96
ffffffffc000355c:	00008067          	ret

ffffffffc0003560 <_ZN4core6option13expect_failed17h8cc3fc4be83cb4d1E>:
ffffffffc0003560:	fa010113          	addi	sp,sp,-96
ffffffffc0003564:	04113c23          	sd	ra,88(sp)
ffffffffc0003568:	04813823          	sd	s0,80(sp)
ffffffffc000356c:	06010413          	addi	s0,sp,96
ffffffffc0003570:	fab43423          	sd	a1,-88(s0)
ffffffffc0003574:	faa43023          	sd	a0,-96(s0)
ffffffffc0003578:	c0006537          	lui	a0,0xc0006
ffffffffc000357c:	dfc50513          	addi	a0,a0,-516 # ffffffffc0005dfc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h949cc7e59610bfd8E>
ffffffffc0003580:	fea43423          	sd	a0,-24(s0)
ffffffffc0003584:	fa040513          	addi	a0,s0,-96
ffffffffc0003588:	fea43023          	sd	a0,-32(s0)
ffffffffc000358c:	fe040513          	addi	a0,s0,-32
ffffffffc0003590:	fca43823          	sd	a0,-48(s0)
ffffffffc0003594:	fc043023          	sd	zero,-64(s0)
ffffffffc0003598:	00100513          	li	a0,1
ffffffffc000359c:	fca43c23          	sd	a0,-40(s0)
ffffffffc00035a0:	faa43c23          	sd	a0,-72(s0)
ffffffffc00035a4:	c0009537          	lui	a0,0xc0009
ffffffffc00035a8:	72050513          	addi	a0,a0,1824 # ffffffffc0009720 <.Lanon.17b8001241bf42806d94414b82e2ff68.9>
ffffffffc00035ac:	faa43823          	sd	a0,-80(s0)
ffffffffc00035b0:	c0009537          	lui	a0,0xc0009
ffffffffc00035b4:	7a850593          	addi	a1,a0,1960 # ffffffffc00097a8 <.Lanon.17b8001241bf42806d94414b82e2ff68.11>
ffffffffc00035b8:	fb040513          	addi	a0,s0,-80
ffffffffc00035bc:	00001097          	auipc	ra,0x1
ffffffffc00035c0:	c98080e7          	jalr	-872(ra) # ffffffffc0004254 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>
ffffffffc00035c4:	ffffe097          	auipc	ra,0xffffe
ffffffffc00035c8:	acc080e7          	jalr	-1332(ra) # ffffffffc0001090 <abort>

ffffffffc00035cc <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE>:
ffffffffc00035cc:	f7010113          	addi	sp,sp,-144
ffffffffc00035d0:	08113423          	sd	ra,136(sp)
ffffffffc00035d4:	08813023          	sd	s0,128(sp)
ffffffffc00035d8:	09010413          	addi	s0,sp,144
ffffffffc00035dc:	0505e603          	lwu	a2,80(a1)
ffffffffc00035e0:	01067693          	andi	a3,a2,16
ffffffffc00035e4:	02069263          	bnez	a3,ffffffffc0003608 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE+0x3c>
ffffffffc00035e8:	02067613          	andi	a2,a2,32
ffffffffc00035ec:	04061c63          	bnez	a2,ffffffffc0003644 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE+0x78>
ffffffffc00035f0:	00000097          	auipc	ra,0x0
ffffffffc00035f4:	76c080e7          	jalr	1900(ra) # ffffffffc0003d5c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>
ffffffffc00035f8:	08013403          	ld	s0,128(sp)
ffffffffc00035fc:	08813083          	ld	ra,136(sp)
ffffffffc0003600:	09010113          	addi	sp,sp,144
ffffffffc0003604:	00008067          	ret
ffffffffc0003608:	00053503          	ld	a0,0(a0)
ffffffffc000360c:	00a00713          	li	a4,10
ffffffffc0003610:	f7040813          	addi	a6,s0,-144
ffffffffc0003614:	00000613          	li	a2,0
ffffffffc0003618:	00f57793          	andi	a5,a0,15
ffffffffc000361c:	00e7e663          	bltu	a5,a4,ffffffffc0003628 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE+0x5c>
ffffffffc0003620:	05778793          	addi	a5,a5,87
ffffffffc0003624:	0080006f          	j	ffffffffc000362c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE+0x60>
ffffffffc0003628:	0307e793          	ori	a5,a5,48
ffffffffc000362c:	00c806b3          	add	a3,a6,a2
ffffffffc0003630:	06f68fa3          	sb	a5,127(a3) # 1007f <XLENb+0x1003f>
ffffffffc0003634:	fff60613          	addi	a2,a2,-1
ffffffffc0003638:	00455513          	srli	a0,a0,0x4
ffffffffc000363c:	fc051ee3          	bnez	a0,ffffffffc0003618 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE+0x4c>
ffffffffc0003640:	03c0006f          	j	ffffffffc000367c <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE+0xb0>
ffffffffc0003644:	00053503          	ld	a0,0(a0)
ffffffffc0003648:	00a00713          	li	a4,10
ffffffffc000364c:	f7040813          	addi	a6,s0,-144
ffffffffc0003650:	00000613          	li	a2,0
ffffffffc0003654:	00f57793          	andi	a5,a0,15
ffffffffc0003658:	00e7e663          	bltu	a5,a4,ffffffffc0003664 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE+0x98>
ffffffffc000365c:	03778793          	addi	a5,a5,55
ffffffffc0003660:	0080006f          	j	ffffffffc0003668 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE+0x9c>
ffffffffc0003664:	0307e793          	ori	a5,a5,48
ffffffffc0003668:	00c806b3          	add	a3,a6,a2
ffffffffc000366c:	06f68fa3          	sb	a5,127(a3)
ffffffffc0003670:	fff60613          	addi	a2,a2,-1
ffffffffc0003674:	00455513          	srli	a0,a0,0x4
ffffffffc0003678:	fc051ee3          	bnez	a0,ffffffffc0003654 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE+0x88>
ffffffffc000367c:	08060513          	addi	a0,a2,128
ffffffffc0003680:	08100693          	li	a3,129
ffffffffc0003684:	04d57063          	bgeu	a0,a3,ffffffffc00036c4 <_ZN4core3fmt3num52_$LT$impl$u20$core..fmt..Debug$u20$for$u20$usize$GT$3fmt17h77a271af9e7ee0cfE+0xf8>
ffffffffc0003688:	00c80533          	add	a0,a6,a2
ffffffffc000368c:	40c007b3          	neg	a5,a2
ffffffffc0003690:	08050713          	addi	a4,a0,128
ffffffffc0003694:	c0009537          	lui	a0,0xc0009
ffffffffc0003698:	62050613          	addi	a2,a0,1568 # ffffffffc0009620 <anon.10b7be5cca1e645782a840f752253638.0.llvm.17117805323420214334>
ffffffffc000369c:	00100813          	li	a6,1
ffffffffc00036a0:	00200693          	li	a3,2
ffffffffc00036a4:	00058513          	mv	a0,a1
ffffffffc00036a8:	00080593          	mv	a1,a6
ffffffffc00036ac:	00002097          	auipc	ra,0x2
ffffffffc00036b0:	8d8080e7          	jalr	-1832(ra) # ffffffffc0004f84 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>
ffffffffc00036b4:	08013403          	ld	s0,128(sp)
ffffffffc00036b8:	08813083          	ld	ra,136(sp)
ffffffffc00036bc:	09010113          	addi	sp,sp,144
ffffffffc00036c0:	00008067          	ret
ffffffffc00036c4:	08000593          	li	a1,128
ffffffffc00036c8:	00001097          	auipc	ra,0x1
ffffffffc00036cc:	468080e7          	jalr	1128(ra) # ffffffffc0004b30 <_ZN4core5slice22slice_index_order_fail17h2c29e16eca0878c2E>
ffffffffc00036d0:	ffffe097          	auipc	ra,0xffffe
ffffffffc00036d4:	9c0080e7          	jalr	-1600(ra) # ffffffffc0001090 <abort>

ffffffffc00036d8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17hd554b4b903dfd3b3E>:
ffffffffc00036d8:	f7010113          	addi	sp,sp,-144
ffffffffc00036dc:	08113423          	sd	ra,136(sp)
ffffffffc00036e0:	08813023          	sd	s0,128(sp)
ffffffffc00036e4:	06913c23          	sd	s1,120(sp)
ffffffffc00036e8:	07213823          	sd	s2,112(sp)
ffffffffc00036ec:	07313423          	sd	s3,104(sp)
ffffffffc00036f0:	07413023          	sd	s4,96(sp)
ffffffffc00036f4:	05513c23          	sd	s5,88(sp)
ffffffffc00036f8:	05613823          	sd	s6,80(sp)
ffffffffc00036fc:	05713423          	sd	s7,72(sp)
ffffffffc0003700:	05813023          	sd	s8,64(sp)
ffffffffc0003704:	03913c23          	sd	s9,56(sp)
ffffffffc0003708:	03a13823          	sd	s10,48(sp)
ffffffffc000370c:	03b13423          	sd	s11,40(sp)
ffffffffc0003710:	09010413          	addi	s0,sp,144
ffffffffc0003714:	00058913          	mv	s2,a1
ffffffffc0003718:	00055a83          	lhu	s5,0(a0)
ffffffffc000371c:	c0009537          	lui	a0,0xc0009
ffffffffc0003720:	6f053b83          	ld	s7,1776(a0) # ffffffffc00096f0 <_ZN4core3fmt3num14DEC_DIGITS_LUT17hefb44f08c26e5f71E>
ffffffffc0003724:	004ad513          	srli	a0,s5,0x4
ffffffffc0003728:	27100593          	li	a1,625
ffffffffc000372c:	0eb56263          	bltu	a0,a1,ffffffffc0003810 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17hd554b4b903dfd3b3E+0x138>
ffffffffc0003730:	00002537          	lui	a0,0x2
ffffffffc0003734:	7105099b          	addiw	s3,a0,1808
ffffffffc0003738:	06400a13          	li	s4,100
ffffffffc000373c:	f7140c13          	addi	s8,s0,-143
ffffffffc0003740:	05f5e537          	lui	a0,0x5f5e
ffffffffc0003744:	0ff50d1b          	addiw	s10,a0,255
ffffffffc0003748:	00000d93          	li	s11,0
ffffffffc000374c:	000a8b13          	mv	s6,s5
ffffffffc0003750:	000a8513          	mv	a0,s5
ffffffffc0003754:	00098593          	mv	a1,s3
ffffffffc0003758:	00003097          	auipc	ra,0x3
ffffffffc000375c:	1a4080e7          	jalr	420(ra) # ffffffffc00068fc <__udivdi3>
ffffffffc0003760:	00050a93          	mv	s5,a0
ffffffffc0003764:	00098593          	mv	a1,s3
ffffffffc0003768:	00004097          	auipc	ra,0x4
ffffffffc000376c:	b40080e7          	jalr	-1216(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0003770:	40ab0cb3          	sub	s9,s6,a0
ffffffffc0003774:	000c8513          	mv	a0,s9
ffffffffc0003778:	000a0593          	mv	a1,s4
ffffffffc000377c:	00003097          	auipc	ra,0x3
ffffffffc0003780:	180080e7          	jalr	384(ra) # ffffffffc00068fc <__udivdi3>
ffffffffc0003784:	01bc04b3          	add	s1,s8,s11
ffffffffc0003788:	00151593          	slli	a1,a0,0x1
ffffffffc000378c:	00bb85b3          	add	a1,s7,a1
ffffffffc0003790:	0005c603          	lbu	a2,0(a1)
ffffffffc0003794:	00158583          	lb	a1,1(a1)
ffffffffc0003798:	02b48223          	sb	a1,36(s1)
ffffffffc000379c:	02c481a3          	sb	a2,35(s1)
ffffffffc00037a0:	000a0593          	mv	a1,s4
ffffffffc00037a4:	00004097          	auipc	ra,0x4
ffffffffc00037a8:	b04080e7          	jalr	-1276(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc00037ac:	40ac8533          	sub	a0,s9,a0
ffffffffc00037b0:	00151513          	slli	a0,a0,0x1
ffffffffc00037b4:	00ab8533          	add	a0,s7,a0
ffffffffc00037b8:	00054583          	lbu	a1,0(a0) # 5f5e000 <XLENb+0x5f5dfc0>
ffffffffc00037bc:	00150503          	lb	a0,1(a0)
ffffffffc00037c0:	02a48323          	sb	a0,38(s1)
ffffffffc00037c4:	02b482a3          	sb	a1,37(s1)
ffffffffc00037c8:	ffcd8d93          	addi	s11,s11,-4
ffffffffc00037cc:	f96d60e3          	bltu	s10,s6,ffffffffc000374c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17hd554b4b903dfd3b3E+0x74>
ffffffffc00037d0:	027d8493          	addi	s1,s11,39
ffffffffc00037d4:	06300513          	li	a0,99
ffffffffc00037d8:	05556263          	bltu	a0,s5,ffffffffc000381c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17hd554b4b903dfd3b3E+0x144>
ffffffffc00037dc:	000a8993          	mv	s3,s5
ffffffffc00037e0:	00900513          	li	a0,9
ffffffffc00037e4:	09355e63          	bge	a0,s3,ffffffffc0003880 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17hd554b4b903dfd3b3E+0x1a8>
ffffffffc00037e8:	00199513          	slli	a0,s3,0x1
ffffffffc00037ec:	00ab85b3          	add	a1,s7,a0
ffffffffc00037f0:	ffe48513          	addi	a0,s1,-2
ffffffffc00037f4:	f7140613          	addi	a2,s0,-143
ffffffffc00037f8:	00a60633          	add	a2,a2,a0
ffffffffc00037fc:	0005c683          	lbu	a3,0(a1)
ffffffffc0003800:	00158583          	lb	a1,1(a1)
ffffffffc0003804:	00b600a3          	sb	a1,1(a2)
ffffffffc0003808:	00d60023          	sb	a3,0(a2)
ffffffffc000380c:	0880006f          	j	ffffffffc0003894 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17hd554b4b903dfd3b3E+0x1bc>
ffffffffc0003810:	02700493          	li	s1,39
ffffffffc0003814:	06300513          	li	a0,99
ffffffffc0003818:	fd5572e3          	bgeu	a0,s5,ffffffffc00037dc <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17hd554b4b903dfd3b3E+0x104>
ffffffffc000381c:	00010b37          	lui	s6,0x10
ffffffffc0003820:	fffb051b          	addiw	a0,s6,-1
ffffffffc0003824:	00aaf533          	and	a0,s5,a0
ffffffffc0003828:	06400a13          	li	s4,100
ffffffffc000382c:	000a0593          	mv	a1,s4
ffffffffc0003830:	00003097          	auipc	ra,0x3
ffffffffc0003834:	0cc080e7          	jalr	204(ra) # ffffffffc00068fc <__udivdi3>
ffffffffc0003838:	00050993          	mv	s3,a0
ffffffffc000383c:	000a0593          	mv	a1,s4
ffffffffc0003840:	00004097          	auipc	ra,0x4
ffffffffc0003844:	a68080e7          	jalr	-1432(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0003848:	40aa8533          	sub	a0,s5,a0
ffffffffc000384c:	00151513          	slli	a0,a0,0x1
ffffffffc0003850:	ffeb059b          	addiw	a1,s6,-2
ffffffffc0003854:	00b57533          	and	a0,a0,a1
ffffffffc0003858:	00ab8533          	add	a0,s7,a0
ffffffffc000385c:	ffe48493          	addi	s1,s1,-2
ffffffffc0003860:	f7140593          	addi	a1,s0,-143
ffffffffc0003864:	009585b3          	add	a1,a1,s1
ffffffffc0003868:	00054603          	lbu	a2,0(a0)
ffffffffc000386c:	00150503          	lb	a0,1(a0)
ffffffffc0003870:	00a580a3          	sb	a0,1(a1)
ffffffffc0003874:	00c58023          	sb	a2,0(a1)
ffffffffc0003878:	00900513          	li	a0,9
ffffffffc000387c:	f73546e3          	blt	a0,s3,ffffffffc00037e8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u16$GT$3fmt17hd554b4b903dfd3b3E+0x110>
ffffffffc0003880:	fff48513          	addi	a0,s1,-1
ffffffffc0003884:	f7140593          	addi	a1,s0,-143
ffffffffc0003888:	00a585b3          	add	a1,a1,a0
ffffffffc000388c:	03098613          	addi	a2,s3,48
ffffffffc0003890:	00c58023          	sb	a2,0(a1)
ffffffffc0003894:	f7140593          	addi	a1,s0,-143
ffffffffc0003898:	00a58733          	add	a4,a1,a0
ffffffffc000389c:	02700593          	li	a1,39
ffffffffc00038a0:	40a587b3          	sub	a5,a1,a0
ffffffffc00038a4:	c0009537          	lui	a0,0xc0009
ffffffffc00038a8:	70050613          	addi	a2,a0,1792 # ffffffffc0009700 <.Lanon.17b8001241bf42806d94414b82e2ff68.3>
ffffffffc00038ac:	00100593          	li	a1,1
ffffffffc00038b0:	00090513          	mv	a0,s2
ffffffffc00038b4:	00000693          	li	a3,0
ffffffffc00038b8:	00001097          	auipc	ra,0x1
ffffffffc00038bc:	6cc080e7          	jalr	1740(ra) # ffffffffc0004f84 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>
ffffffffc00038c0:	02813d83          	ld	s11,40(sp)
ffffffffc00038c4:	03013d03          	ld	s10,48(sp)
ffffffffc00038c8:	03813c83          	ld	s9,56(sp)
ffffffffc00038cc:	04013c03          	ld	s8,64(sp)
ffffffffc00038d0:	04813b83          	ld	s7,72(sp)
ffffffffc00038d4:	05013b03          	ld	s6,80(sp)
ffffffffc00038d8:	05813a83          	ld	s5,88(sp)
ffffffffc00038dc:	06013a03          	ld	s4,96(sp)
ffffffffc00038e0:	06813983          	ld	s3,104(sp)
ffffffffc00038e4:	07013903          	ld	s2,112(sp)
ffffffffc00038e8:	07813483          	ld	s1,120(sp)
ffffffffc00038ec:	08013403          	ld	s0,128(sp)
ffffffffc00038f0:	08813083          	ld	ra,136(sp)
ffffffffc00038f4:	09010113          	addi	sp,sp,144
ffffffffc00038f8:	00008067          	ret

ffffffffc00038fc <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE>:
ffffffffc00038fc:	f6010113          	addi	sp,sp,-160
ffffffffc0003900:	08113c23          	sd	ra,152(sp)
ffffffffc0003904:	08813823          	sd	s0,144(sp)
ffffffffc0003908:	08913423          	sd	s1,136(sp)
ffffffffc000390c:	09213023          	sd	s2,128(sp)
ffffffffc0003910:	07313c23          	sd	s3,120(sp)
ffffffffc0003914:	07413823          	sd	s4,112(sp)
ffffffffc0003918:	07513423          	sd	s5,104(sp)
ffffffffc000391c:	07613023          	sd	s6,96(sp)
ffffffffc0003920:	05713c23          	sd	s7,88(sp)
ffffffffc0003924:	05813823          	sd	s8,80(sp)
ffffffffc0003928:	05913423          	sd	s9,72(sp)
ffffffffc000392c:	05a13023          	sd	s10,64(sp)
ffffffffc0003930:	03b13c23          	sd	s11,56(sp)
ffffffffc0003934:	0a010413          	addi	s0,sp,160
ffffffffc0003938:	00058b13          	mv	s6,a1
ffffffffc000393c:	00052b83          	lw	s7,0(a0)
ffffffffc0003940:	43fbd513          	srai	a0,s7,0x3f
ffffffffc0003944:	00ab85b3          	add	a1,s7,a0
ffffffffc0003948:	00a5cab3          	xor	s5,a1,a0
ffffffffc000394c:	c0009537          	lui	a0,0xc0009
ffffffffc0003950:	6f053c03          	ld	s8,1776(a0) # ffffffffc00096f0 <_ZN4core3fmt3num14DEC_DIGITS_LUT17hefb44f08c26e5f71E>
ffffffffc0003954:	004ad513          	srli	a0,s5,0x4
ffffffffc0003958:	27100593          	li	a1,625
ffffffffc000395c:	0eb56663          	bltu	a0,a1,ffffffffc0003a48 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE+0x14c>
ffffffffc0003960:	f7643423          	sd	s6,-152(s0)
ffffffffc0003964:	00002537          	lui	a0,0x2
ffffffffc0003968:	7105099b          	addiw	s3,a0,1808
ffffffffc000396c:	06400a13          	li	s4,100
ffffffffc0003970:	f7140c93          	addi	s9,s0,-143
ffffffffc0003974:	05f5e537          	lui	a0,0x5f5e
ffffffffc0003978:	0ff50d9b          	addiw	s11,a0,255
ffffffffc000397c:	00000493          	li	s1,0
ffffffffc0003980:	000a8b13          	mv	s6,s5
ffffffffc0003984:	000a8513          	mv	a0,s5
ffffffffc0003988:	00098593          	mv	a1,s3
ffffffffc000398c:	00003097          	auipc	ra,0x3
ffffffffc0003990:	f70080e7          	jalr	-144(ra) # ffffffffc00068fc <__udivdi3>
ffffffffc0003994:	00050a93          	mv	s5,a0
ffffffffc0003998:	00098593          	mv	a1,s3
ffffffffc000399c:	00004097          	auipc	ra,0x4
ffffffffc00039a0:	90c080e7          	jalr	-1780(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc00039a4:	40ab0d33          	sub	s10,s6,a0
ffffffffc00039a8:	000d0513          	mv	a0,s10
ffffffffc00039ac:	000a0593          	mv	a1,s4
ffffffffc00039b0:	00003097          	auipc	ra,0x3
ffffffffc00039b4:	f4c080e7          	jalr	-180(ra) # ffffffffc00068fc <__udivdi3>
ffffffffc00039b8:	009c8933          	add	s2,s9,s1
ffffffffc00039bc:	00151593          	slli	a1,a0,0x1
ffffffffc00039c0:	00bc05b3          	add	a1,s8,a1
ffffffffc00039c4:	0005c603          	lbu	a2,0(a1)
ffffffffc00039c8:	00158583          	lb	a1,1(a1)
ffffffffc00039cc:	02b90223          	sb	a1,36(s2)
ffffffffc00039d0:	02c901a3          	sb	a2,35(s2)
ffffffffc00039d4:	000a0593          	mv	a1,s4
ffffffffc00039d8:	00004097          	auipc	ra,0x4
ffffffffc00039dc:	8d0080e7          	jalr	-1840(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc00039e0:	40ad0533          	sub	a0,s10,a0
ffffffffc00039e4:	00151513          	slli	a0,a0,0x1
ffffffffc00039e8:	00ac0533          	add	a0,s8,a0
ffffffffc00039ec:	00054583          	lbu	a1,0(a0) # 5f5e000 <XLENb+0x5f5dfc0>
ffffffffc00039f0:	00150503          	lb	a0,1(a0)
ffffffffc00039f4:	02a90323          	sb	a0,38(s2)
ffffffffc00039f8:	02b902a3          	sb	a1,37(s2)
ffffffffc00039fc:	ffc48493          	addi	s1,s1,-4
ffffffffc0003a00:	f96de0e3          	bltu	s11,s6,ffffffffc0003980 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE+0x84>
ffffffffc0003a04:	02748493          	addi	s1,s1,39
ffffffffc0003a08:	f6843b03          	ld	s6,-152(s0)
ffffffffc0003a0c:	06300513          	li	a0,99
ffffffffc0003a10:	05556263          	bltu	a0,s5,ffffffffc0003a54 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE+0x158>
ffffffffc0003a14:	000a8993          	mv	s3,s5
ffffffffc0003a18:	00900513          	li	a0,9
ffffffffc0003a1c:	09355e63          	bge	a0,s3,ffffffffc0003ab8 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE+0x1bc>
ffffffffc0003a20:	00199513          	slli	a0,s3,0x1
ffffffffc0003a24:	00ac05b3          	add	a1,s8,a0
ffffffffc0003a28:	ffe48513          	addi	a0,s1,-2
ffffffffc0003a2c:	f7140613          	addi	a2,s0,-143
ffffffffc0003a30:	00a60633          	add	a2,a2,a0
ffffffffc0003a34:	0005c683          	lbu	a3,0(a1)
ffffffffc0003a38:	00158583          	lb	a1,1(a1)
ffffffffc0003a3c:	00b600a3          	sb	a1,1(a2)
ffffffffc0003a40:	00d60023          	sb	a3,0(a2)
ffffffffc0003a44:	0880006f          	j	ffffffffc0003acc <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE+0x1d0>
ffffffffc0003a48:	02700493          	li	s1,39
ffffffffc0003a4c:	06300513          	li	a0,99
ffffffffc0003a50:	fd5572e3          	bgeu	a0,s5,ffffffffc0003a14 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE+0x118>
ffffffffc0003a54:	00010937          	lui	s2,0x10
ffffffffc0003a58:	fff9051b          	addiw	a0,s2,-1
ffffffffc0003a5c:	00aaf533          	and	a0,s5,a0
ffffffffc0003a60:	06400a13          	li	s4,100
ffffffffc0003a64:	000a0593          	mv	a1,s4
ffffffffc0003a68:	00003097          	auipc	ra,0x3
ffffffffc0003a6c:	e94080e7          	jalr	-364(ra) # ffffffffc00068fc <__udivdi3>
ffffffffc0003a70:	00050993          	mv	s3,a0
ffffffffc0003a74:	000a0593          	mv	a1,s4
ffffffffc0003a78:	00004097          	auipc	ra,0x4
ffffffffc0003a7c:	830080e7          	jalr	-2000(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0003a80:	40aa8533          	sub	a0,s5,a0
ffffffffc0003a84:	00151513          	slli	a0,a0,0x1
ffffffffc0003a88:	ffe9059b          	addiw	a1,s2,-2
ffffffffc0003a8c:	00b57533          	and	a0,a0,a1
ffffffffc0003a90:	00ac0533          	add	a0,s8,a0
ffffffffc0003a94:	ffe48493          	addi	s1,s1,-2
ffffffffc0003a98:	f7140593          	addi	a1,s0,-143
ffffffffc0003a9c:	009585b3          	add	a1,a1,s1
ffffffffc0003aa0:	00054603          	lbu	a2,0(a0)
ffffffffc0003aa4:	00150503          	lb	a0,1(a0)
ffffffffc0003aa8:	00a580a3          	sb	a0,1(a1)
ffffffffc0003aac:	00c58023          	sb	a2,0(a1)
ffffffffc0003ab0:	00900513          	li	a0,9
ffffffffc0003ab4:	f73546e3          	blt	a0,s3,ffffffffc0003a20 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$i32$GT$3fmt17h5455fc1a9a4424daE+0x124>
ffffffffc0003ab8:	fff48513          	addi	a0,s1,-1
ffffffffc0003abc:	f7140593          	addi	a1,s0,-143
ffffffffc0003ac0:	00a585b3          	add	a1,a1,a0
ffffffffc0003ac4:	03098613          	addi	a2,s3,48
ffffffffc0003ac8:	00c58023          	sb	a2,0(a1)
ffffffffc0003acc:	fff00593          	li	a1,-1
ffffffffc0003ad0:	0175a5b3          	slt	a1,a1,s7
ffffffffc0003ad4:	f7140613          	addi	a2,s0,-143
ffffffffc0003ad8:	00a60733          	add	a4,a2,a0
ffffffffc0003adc:	02700613          	li	a2,39
ffffffffc0003ae0:	40a607b3          	sub	a5,a2,a0
ffffffffc0003ae4:	c0009537          	lui	a0,0xc0009
ffffffffc0003ae8:	70050613          	addi	a2,a0,1792 # ffffffffc0009700 <.Lanon.17b8001241bf42806d94414b82e2ff68.3>
ffffffffc0003aec:	000b0513          	mv	a0,s6
ffffffffc0003af0:	00000693          	li	a3,0
ffffffffc0003af4:	00001097          	auipc	ra,0x1
ffffffffc0003af8:	490080e7          	jalr	1168(ra) # ffffffffc0004f84 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>
ffffffffc0003afc:	03813d83          	ld	s11,56(sp)
ffffffffc0003b00:	04013d03          	ld	s10,64(sp)
ffffffffc0003b04:	04813c83          	ld	s9,72(sp)
ffffffffc0003b08:	05013c03          	ld	s8,80(sp)
ffffffffc0003b0c:	05813b83          	ld	s7,88(sp)
ffffffffc0003b10:	06013b03          	ld	s6,96(sp)
ffffffffc0003b14:	06813a83          	ld	s5,104(sp)
ffffffffc0003b18:	07013a03          	ld	s4,112(sp)
ffffffffc0003b1c:	07813983          	ld	s3,120(sp)
ffffffffc0003b20:	08013903          	ld	s2,128(sp)
ffffffffc0003b24:	08813483          	ld	s1,136(sp)
ffffffffc0003b28:	09013403          	ld	s0,144(sp)
ffffffffc0003b2c:	09813083          	ld	ra,152(sp)
ffffffffc0003b30:	0a010113          	addi	sp,sp,160
ffffffffc0003b34:	00008067          	ret

ffffffffc0003b38 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E>:
ffffffffc0003b38:	f7010113          	addi	sp,sp,-144
ffffffffc0003b3c:	08113423          	sd	ra,136(sp)
ffffffffc0003b40:	08813023          	sd	s0,128(sp)
ffffffffc0003b44:	06913c23          	sd	s1,120(sp)
ffffffffc0003b48:	07213823          	sd	s2,112(sp)
ffffffffc0003b4c:	07313423          	sd	s3,104(sp)
ffffffffc0003b50:	07413023          	sd	s4,96(sp)
ffffffffc0003b54:	05513c23          	sd	s5,88(sp)
ffffffffc0003b58:	05613823          	sd	s6,80(sp)
ffffffffc0003b5c:	05713423          	sd	s7,72(sp)
ffffffffc0003b60:	05813023          	sd	s8,64(sp)
ffffffffc0003b64:	03913c23          	sd	s9,56(sp)
ffffffffc0003b68:	03a13823          	sd	s10,48(sp)
ffffffffc0003b6c:	03b13423          	sd	s11,40(sp)
ffffffffc0003b70:	09010413          	addi	s0,sp,144
ffffffffc0003b74:	00058913          	mv	s2,a1
ffffffffc0003b78:	00056a83          	lwu	s5,0(a0)
ffffffffc0003b7c:	c0009537          	lui	a0,0xc0009
ffffffffc0003b80:	6f053b83          	ld	s7,1776(a0) # ffffffffc00096f0 <_ZN4core3fmt3num14DEC_DIGITS_LUT17hefb44f08c26e5f71E>
ffffffffc0003b84:	004ad513          	srli	a0,s5,0x4
ffffffffc0003b88:	27100593          	li	a1,625
ffffffffc0003b8c:	0eb56263          	bltu	a0,a1,ffffffffc0003c70 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E+0x138>
ffffffffc0003b90:	00002537          	lui	a0,0x2
ffffffffc0003b94:	7105099b          	addiw	s3,a0,1808
ffffffffc0003b98:	06400a13          	li	s4,100
ffffffffc0003b9c:	f7140c13          	addi	s8,s0,-143
ffffffffc0003ba0:	05f5e537          	lui	a0,0x5f5e
ffffffffc0003ba4:	0ff50d1b          	addiw	s10,a0,255
ffffffffc0003ba8:	00000d93          	li	s11,0
ffffffffc0003bac:	000a8b13          	mv	s6,s5
ffffffffc0003bb0:	000a8513          	mv	a0,s5
ffffffffc0003bb4:	00098593          	mv	a1,s3
ffffffffc0003bb8:	00003097          	auipc	ra,0x3
ffffffffc0003bbc:	d44080e7          	jalr	-700(ra) # ffffffffc00068fc <__udivdi3>
ffffffffc0003bc0:	00050a93          	mv	s5,a0
ffffffffc0003bc4:	00098593          	mv	a1,s3
ffffffffc0003bc8:	00003097          	auipc	ra,0x3
ffffffffc0003bcc:	6e0080e7          	jalr	1760(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0003bd0:	40ab0cb3          	sub	s9,s6,a0
ffffffffc0003bd4:	000c8513          	mv	a0,s9
ffffffffc0003bd8:	000a0593          	mv	a1,s4
ffffffffc0003bdc:	00003097          	auipc	ra,0x3
ffffffffc0003be0:	d20080e7          	jalr	-736(ra) # ffffffffc00068fc <__udivdi3>
ffffffffc0003be4:	01bc04b3          	add	s1,s8,s11
ffffffffc0003be8:	00151593          	slli	a1,a0,0x1
ffffffffc0003bec:	00bb85b3          	add	a1,s7,a1
ffffffffc0003bf0:	0005c603          	lbu	a2,0(a1)
ffffffffc0003bf4:	00158583          	lb	a1,1(a1)
ffffffffc0003bf8:	02b48223          	sb	a1,36(s1)
ffffffffc0003bfc:	02c481a3          	sb	a2,35(s1)
ffffffffc0003c00:	000a0593          	mv	a1,s4
ffffffffc0003c04:	00003097          	auipc	ra,0x3
ffffffffc0003c08:	6a4080e7          	jalr	1700(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0003c0c:	40ac8533          	sub	a0,s9,a0
ffffffffc0003c10:	00151513          	slli	a0,a0,0x1
ffffffffc0003c14:	00ab8533          	add	a0,s7,a0
ffffffffc0003c18:	00054583          	lbu	a1,0(a0) # 5f5e000 <XLENb+0x5f5dfc0>
ffffffffc0003c1c:	00150503          	lb	a0,1(a0)
ffffffffc0003c20:	02a48323          	sb	a0,38(s1)
ffffffffc0003c24:	02b482a3          	sb	a1,37(s1)
ffffffffc0003c28:	ffcd8d93          	addi	s11,s11,-4
ffffffffc0003c2c:	f96d60e3          	bltu	s10,s6,ffffffffc0003bac <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E+0x74>
ffffffffc0003c30:	027d8493          	addi	s1,s11,39
ffffffffc0003c34:	06300513          	li	a0,99
ffffffffc0003c38:	05556263          	bltu	a0,s5,ffffffffc0003c7c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E+0x144>
ffffffffc0003c3c:	000a8993          	mv	s3,s5
ffffffffc0003c40:	00900513          	li	a0,9
ffffffffc0003c44:	09355e63          	bge	a0,s3,ffffffffc0003ce0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E+0x1a8>
ffffffffc0003c48:	00199513          	slli	a0,s3,0x1
ffffffffc0003c4c:	00ab85b3          	add	a1,s7,a0
ffffffffc0003c50:	ffe48513          	addi	a0,s1,-2
ffffffffc0003c54:	f7140613          	addi	a2,s0,-143
ffffffffc0003c58:	00a60633          	add	a2,a2,a0
ffffffffc0003c5c:	0005c683          	lbu	a3,0(a1)
ffffffffc0003c60:	00158583          	lb	a1,1(a1)
ffffffffc0003c64:	00b600a3          	sb	a1,1(a2)
ffffffffc0003c68:	00d60023          	sb	a3,0(a2)
ffffffffc0003c6c:	0880006f          	j	ffffffffc0003cf4 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E+0x1bc>
ffffffffc0003c70:	02700493          	li	s1,39
ffffffffc0003c74:	06300513          	li	a0,99
ffffffffc0003c78:	fd5572e3          	bgeu	a0,s5,ffffffffc0003c3c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E+0x104>
ffffffffc0003c7c:	00010b37          	lui	s6,0x10
ffffffffc0003c80:	fffb051b          	addiw	a0,s6,-1
ffffffffc0003c84:	00aaf533          	and	a0,s5,a0
ffffffffc0003c88:	06400a13          	li	s4,100
ffffffffc0003c8c:	000a0593          	mv	a1,s4
ffffffffc0003c90:	00003097          	auipc	ra,0x3
ffffffffc0003c94:	c6c080e7          	jalr	-916(ra) # ffffffffc00068fc <__udivdi3>
ffffffffc0003c98:	00050993          	mv	s3,a0
ffffffffc0003c9c:	000a0593          	mv	a1,s4
ffffffffc0003ca0:	00003097          	auipc	ra,0x3
ffffffffc0003ca4:	608080e7          	jalr	1544(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0003ca8:	40aa8533          	sub	a0,s5,a0
ffffffffc0003cac:	00151513          	slli	a0,a0,0x1
ffffffffc0003cb0:	ffeb059b          	addiw	a1,s6,-2
ffffffffc0003cb4:	00b57533          	and	a0,a0,a1
ffffffffc0003cb8:	00ab8533          	add	a0,s7,a0
ffffffffc0003cbc:	ffe48493          	addi	s1,s1,-2
ffffffffc0003cc0:	f7140593          	addi	a1,s0,-143
ffffffffc0003cc4:	009585b3          	add	a1,a1,s1
ffffffffc0003cc8:	00054603          	lbu	a2,0(a0)
ffffffffc0003ccc:	00150503          	lb	a0,1(a0)
ffffffffc0003cd0:	00a580a3          	sb	a0,1(a1)
ffffffffc0003cd4:	00c58023          	sb	a2,0(a1)
ffffffffc0003cd8:	00900513          	li	a0,9
ffffffffc0003cdc:	f73546e3          	blt	a0,s3,ffffffffc0003c48 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E+0x110>
ffffffffc0003ce0:	fff48513          	addi	a0,s1,-1
ffffffffc0003ce4:	f7140593          	addi	a1,s0,-143
ffffffffc0003ce8:	00a585b3          	add	a1,a1,a0
ffffffffc0003cec:	03098613          	addi	a2,s3,48
ffffffffc0003cf0:	00c58023          	sb	a2,0(a1)
ffffffffc0003cf4:	f7140593          	addi	a1,s0,-143
ffffffffc0003cf8:	00a58733          	add	a4,a1,a0
ffffffffc0003cfc:	02700593          	li	a1,39
ffffffffc0003d00:	40a587b3          	sub	a5,a1,a0
ffffffffc0003d04:	c0009537          	lui	a0,0xc0009
ffffffffc0003d08:	70050613          	addi	a2,a0,1792 # ffffffffc0009700 <.Lanon.17b8001241bf42806d94414b82e2ff68.3>
ffffffffc0003d0c:	00100593          	li	a1,1
ffffffffc0003d10:	00090513          	mv	a0,s2
ffffffffc0003d14:	00000693          	li	a3,0
ffffffffc0003d18:	00001097          	auipc	ra,0x1
ffffffffc0003d1c:	26c080e7          	jalr	620(ra) # ffffffffc0004f84 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>
ffffffffc0003d20:	02813d83          	ld	s11,40(sp)
ffffffffc0003d24:	03013d03          	ld	s10,48(sp)
ffffffffc0003d28:	03813c83          	ld	s9,56(sp)
ffffffffc0003d2c:	04013c03          	ld	s8,64(sp)
ffffffffc0003d30:	04813b83          	ld	s7,72(sp)
ffffffffc0003d34:	05013b03          	ld	s6,80(sp)
ffffffffc0003d38:	05813a83          	ld	s5,88(sp)
ffffffffc0003d3c:	06013a03          	ld	s4,96(sp)
ffffffffc0003d40:	06813983          	ld	s3,104(sp)
ffffffffc0003d44:	07013903          	ld	s2,112(sp)
ffffffffc0003d48:	07813483          	ld	s1,120(sp)
ffffffffc0003d4c:	08013403          	ld	s0,128(sp)
ffffffffc0003d50:	08813083          	ld	ra,136(sp)
ffffffffc0003d54:	09010113          	addi	sp,sp,144
ffffffffc0003d58:	00008067          	ret

ffffffffc0003d5c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>:
ffffffffc0003d5c:	f7010113          	addi	sp,sp,-144
ffffffffc0003d60:	08113423          	sd	ra,136(sp)
ffffffffc0003d64:	08813023          	sd	s0,128(sp)
ffffffffc0003d68:	06913c23          	sd	s1,120(sp)
ffffffffc0003d6c:	07213823          	sd	s2,112(sp)
ffffffffc0003d70:	07313423          	sd	s3,104(sp)
ffffffffc0003d74:	07413023          	sd	s4,96(sp)
ffffffffc0003d78:	05513c23          	sd	s5,88(sp)
ffffffffc0003d7c:	05613823          	sd	s6,80(sp)
ffffffffc0003d80:	05713423          	sd	s7,72(sp)
ffffffffc0003d84:	05813023          	sd	s8,64(sp)
ffffffffc0003d88:	03913c23          	sd	s9,56(sp)
ffffffffc0003d8c:	03a13823          	sd	s10,48(sp)
ffffffffc0003d90:	03b13423          	sd	s11,40(sp)
ffffffffc0003d94:	09010413          	addi	s0,sp,144
ffffffffc0003d98:	00058913          	mv	s2,a1
ffffffffc0003d9c:	00053a83          	ld	s5,0(a0)
ffffffffc0003da0:	c0009537          	lui	a0,0xc0009
ffffffffc0003da4:	6f053b83          	ld	s7,1776(a0) # ffffffffc00096f0 <_ZN4core3fmt3num14DEC_DIGITS_LUT17hefb44f08c26e5f71E>
ffffffffc0003da8:	004ad513          	srli	a0,s5,0x4
ffffffffc0003dac:	27100593          	li	a1,625
ffffffffc0003db0:	0eb56263          	bltu	a0,a1,ffffffffc0003e94 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE+0x138>
ffffffffc0003db4:	00002537          	lui	a0,0x2
ffffffffc0003db8:	7105099b          	addiw	s3,a0,1808
ffffffffc0003dbc:	06400a13          	li	s4,100
ffffffffc0003dc0:	f7140c13          	addi	s8,s0,-143
ffffffffc0003dc4:	05f5e537          	lui	a0,0x5f5e
ffffffffc0003dc8:	0ff50d1b          	addiw	s10,a0,255
ffffffffc0003dcc:	00000d93          	li	s11,0
ffffffffc0003dd0:	000a8b13          	mv	s6,s5
ffffffffc0003dd4:	000a8513          	mv	a0,s5
ffffffffc0003dd8:	00098593          	mv	a1,s3
ffffffffc0003ddc:	00003097          	auipc	ra,0x3
ffffffffc0003de0:	b20080e7          	jalr	-1248(ra) # ffffffffc00068fc <__udivdi3>
ffffffffc0003de4:	00050a93          	mv	s5,a0
ffffffffc0003de8:	00098593          	mv	a1,s3
ffffffffc0003dec:	00003097          	auipc	ra,0x3
ffffffffc0003df0:	4bc080e7          	jalr	1212(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0003df4:	40ab0cb3          	sub	s9,s6,a0
ffffffffc0003df8:	000c8513          	mv	a0,s9
ffffffffc0003dfc:	000a0593          	mv	a1,s4
ffffffffc0003e00:	00003097          	auipc	ra,0x3
ffffffffc0003e04:	afc080e7          	jalr	-1284(ra) # ffffffffc00068fc <__udivdi3>
ffffffffc0003e08:	01bc04b3          	add	s1,s8,s11
ffffffffc0003e0c:	00151593          	slli	a1,a0,0x1
ffffffffc0003e10:	00bb85b3          	add	a1,s7,a1
ffffffffc0003e14:	0005c603          	lbu	a2,0(a1)
ffffffffc0003e18:	00158583          	lb	a1,1(a1)
ffffffffc0003e1c:	02b48223          	sb	a1,36(s1)
ffffffffc0003e20:	02c481a3          	sb	a2,35(s1)
ffffffffc0003e24:	000a0593          	mv	a1,s4
ffffffffc0003e28:	00003097          	auipc	ra,0x3
ffffffffc0003e2c:	480080e7          	jalr	1152(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0003e30:	40ac8533          	sub	a0,s9,a0
ffffffffc0003e34:	00151513          	slli	a0,a0,0x1
ffffffffc0003e38:	00ab8533          	add	a0,s7,a0
ffffffffc0003e3c:	00054583          	lbu	a1,0(a0) # 5f5e000 <XLENb+0x5f5dfc0>
ffffffffc0003e40:	00150503          	lb	a0,1(a0)
ffffffffc0003e44:	02a48323          	sb	a0,38(s1)
ffffffffc0003e48:	02b482a3          	sb	a1,37(s1)
ffffffffc0003e4c:	ffcd8d93          	addi	s11,s11,-4
ffffffffc0003e50:	f96d60e3          	bltu	s10,s6,ffffffffc0003dd0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE+0x74>
ffffffffc0003e54:	027d8493          	addi	s1,s11,39
ffffffffc0003e58:	06300513          	li	a0,99
ffffffffc0003e5c:	05554263          	blt	a0,s5,ffffffffc0003ea0 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE+0x144>
ffffffffc0003e60:	000a8993          	mv	s3,s5
ffffffffc0003e64:	00900513          	li	a0,9
ffffffffc0003e68:	09355e63          	bge	a0,s3,ffffffffc0003f04 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE+0x1a8>
ffffffffc0003e6c:	00199513          	slli	a0,s3,0x1
ffffffffc0003e70:	00ab85b3          	add	a1,s7,a0
ffffffffc0003e74:	ffe48513          	addi	a0,s1,-2
ffffffffc0003e78:	f7140613          	addi	a2,s0,-143
ffffffffc0003e7c:	00a60633          	add	a2,a2,a0
ffffffffc0003e80:	0005c683          	lbu	a3,0(a1)
ffffffffc0003e84:	00158583          	lb	a1,1(a1)
ffffffffc0003e88:	00b600a3          	sb	a1,1(a2)
ffffffffc0003e8c:	00d60023          	sb	a3,0(a2)
ffffffffc0003e90:	0880006f          	j	ffffffffc0003f18 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE+0x1bc>
ffffffffc0003e94:	02700493          	li	s1,39
ffffffffc0003e98:	06300513          	li	a0,99
ffffffffc0003e9c:	fd5552e3          	bge	a0,s5,ffffffffc0003e60 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE+0x104>
ffffffffc0003ea0:	00010b37          	lui	s6,0x10
ffffffffc0003ea4:	fffb051b          	addiw	a0,s6,-1
ffffffffc0003ea8:	00aaf533          	and	a0,s5,a0
ffffffffc0003eac:	06400a13          	li	s4,100
ffffffffc0003eb0:	000a0593          	mv	a1,s4
ffffffffc0003eb4:	00003097          	auipc	ra,0x3
ffffffffc0003eb8:	a48080e7          	jalr	-1464(ra) # ffffffffc00068fc <__udivdi3>
ffffffffc0003ebc:	00050993          	mv	s3,a0
ffffffffc0003ec0:	000a0593          	mv	a1,s4
ffffffffc0003ec4:	00003097          	auipc	ra,0x3
ffffffffc0003ec8:	3e4080e7          	jalr	996(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0003ecc:	40aa8533          	sub	a0,s5,a0
ffffffffc0003ed0:	00151513          	slli	a0,a0,0x1
ffffffffc0003ed4:	ffeb059b          	addiw	a1,s6,-2
ffffffffc0003ed8:	00b57533          	and	a0,a0,a1
ffffffffc0003edc:	00ab8533          	add	a0,s7,a0
ffffffffc0003ee0:	ffe48493          	addi	s1,s1,-2
ffffffffc0003ee4:	f7140593          	addi	a1,s0,-143
ffffffffc0003ee8:	009585b3          	add	a1,a1,s1
ffffffffc0003eec:	00054603          	lbu	a2,0(a0)
ffffffffc0003ef0:	00150503          	lb	a0,1(a0)
ffffffffc0003ef4:	00a580a3          	sb	a0,1(a1)
ffffffffc0003ef8:	00c58023          	sb	a2,0(a1)
ffffffffc0003efc:	00900513          	li	a0,9
ffffffffc0003f00:	f73546e3          	blt	a0,s3,ffffffffc0003e6c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE+0x110>
ffffffffc0003f04:	fff48513          	addi	a0,s1,-1
ffffffffc0003f08:	f7140593          	addi	a1,s0,-143
ffffffffc0003f0c:	00a585b3          	add	a1,a1,a0
ffffffffc0003f10:	03098613          	addi	a2,s3,48
ffffffffc0003f14:	00c58023          	sb	a2,0(a1)
ffffffffc0003f18:	f7140593          	addi	a1,s0,-143
ffffffffc0003f1c:	00a58733          	add	a4,a1,a0
ffffffffc0003f20:	02700593          	li	a1,39
ffffffffc0003f24:	40a587b3          	sub	a5,a1,a0
ffffffffc0003f28:	c0009537          	lui	a0,0xc0009
ffffffffc0003f2c:	70050613          	addi	a2,a0,1792 # ffffffffc0009700 <.Lanon.17b8001241bf42806d94414b82e2ff68.3>
ffffffffc0003f30:	00100593          	li	a1,1
ffffffffc0003f34:	00090513          	mv	a0,s2
ffffffffc0003f38:	00000693          	li	a3,0
ffffffffc0003f3c:	00001097          	auipc	ra,0x1
ffffffffc0003f40:	048080e7          	jalr	72(ra) # ffffffffc0004f84 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>
ffffffffc0003f44:	02813d83          	ld	s11,40(sp)
ffffffffc0003f48:	03013d03          	ld	s10,48(sp)
ffffffffc0003f4c:	03813c83          	ld	s9,56(sp)
ffffffffc0003f50:	04013c03          	ld	s8,64(sp)
ffffffffc0003f54:	04813b83          	ld	s7,72(sp)
ffffffffc0003f58:	05013b03          	ld	s6,80(sp)
ffffffffc0003f5c:	05813a83          	ld	s5,88(sp)
ffffffffc0003f60:	06013a03          	ld	s4,96(sp)
ffffffffc0003f64:	06813983          	ld	s3,104(sp)
ffffffffc0003f68:	07013903          	ld	s2,112(sp)
ffffffffc0003f6c:	07813483          	ld	s1,120(sp)
ffffffffc0003f70:	08013403          	ld	s0,128(sp)
ffffffffc0003f74:	08813083          	ld	ra,136(sp)
ffffffffc0003f78:	09010113          	addi	sp,sp,144
ffffffffc0003f7c:	00008067          	ret

ffffffffc0003f80 <_ZN4core3ptr18real_drop_in_place17h74025c06c408c630E>:
ffffffffc0003f80:	ff010113          	addi	sp,sp,-16
ffffffffc0003f84:	00113423          	sd	ra,8(sp)
ffffffffc0003f88:	00813023          	sd	s0,0(sp)
ffffffffc0003f8c:	01010413          	addi	s0,sp,16
ffffffffc0003f90:	00013403          	ld	s0,0(sp)
ffffffffc0003f94:	00813083          	ld	ra,8(sp)
ffffffffc0003f98:	01010113          	addi	sp,sp,16
ffffffffc0003f9c:	00008067          	ret

ffffffffc0003fa0 <_ZN36_$LT$T$u20$as$u20$core..any..Any$GT$7type_id17h04a6df3736df35c1E>:
ffffffffc0003fa0:	ff010113          	addi	sp,sp,-16
ffffffffc0003fa4:	00113423          	sd	ra,8(sp)
ffffffffc0003fa8:	00813023          	sd	s0,0(sp)
ffffffffc0003fac:	01010413          	addi	s0,sp,16
ffffffffc0003fb0:	002ed537          	lui	a0,0x2ed
ffffffffc0003fb4:	2eb5051b          	addiw	a0,a0,747
ffffffffc0003fb8:	00c51513          	slli	a0,a0,0xc
ffffffffc0003fbc:	82150513          	addi	a0,a0,-2015 # 2ec821 <XLENb+0x2ec7e1>
ffffffffc0003fc0:	00c51513          	slli	a0,a0,0xc
ffffffffc0003fc4:	04350513          	addi	a0,a0,67
ffffffffc0003fc8:	00c51513          	slli	a0,a0,0xc
ffffffffc0003fcc:	79a50513          	addi	a0,a0,1946
ffffffffc0003fd0:	00013403          	ld	s0,0(sp)
ffffffffc0003fd4:	00813083          	ld	ra,8(sp)
ffffffffc0003fd8:	01010113          	addi	sp,sp,16
ffffffffc0003fdc:	00008067          	ret

ffffffffc0003fe0 <_ZN75_$LT$core..panic..PanicInfo$LT$$u27$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hcacd4d94b13e8d6fE>:
ffffffffc0003fe0:	f6010113          	addi	sp,sp,-160
ffffffffc0003fe4:	08113c23          	sd	ra,152(sp)
ffffffffc0003fe8:	08813823          	sd	s0,144(sp)
ffffffffc0003fec:	08913423          	sd	s1,136(sp)
ffffffffc0003ff0:	09213023          	sd	s2,128(sp)
ffffffffc0003ff4:	07313c23          	sd	s3,120(sp)
ffffffffc0003ff8:	07413823          	sd	s4,112(sp)
ffffffffc0003ffc:	0a010413          	addi	s0,sp,160
ffffffffc0004000:	00058493          	mv	s1,a1
ffffffffc0004004:	00050913          	mv	s2,a0
ffffffffc0004008:	0205b503          	ld	a0,32(a1)
ffffffffc000400c:	0285b583          	ld	a1,40(a1)
ffffffffc0004010:	0185b683          	ld	a3,24(a1)
ffffffffc0004014:	c00095b7          	lui	a1,0xc0009
ffffffffc0004018:	7e058593          	addi	a1,a1,2016 # ffffffffc00097e0 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.5>
ffffffffc000401c:	00c00613          	li	a2,12
ffffffffc0004020:	000680e7          	jalr	a3
ffffffffc0004024:	00100993          	li	s3,1
ffffffffc0004028:	10051e63          	bnez	a0,ffffffffc0004144 <_ZN75_$LT$core..panic..PanicInfo$LT$$u27$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hcacd4d94b13e8d6fE+0x164>
ffffffffc000402c:	01093503          	ld	a0,16(s2) # 10010 <XLENb+0xffd0>
ffffffffc0004030:	00050a63          	beqz	a0,ffffffffc0004044 <_ZN75_$LT$core..panic..PanicInfo$LT$$u27$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hcacd4d94b13e8d6fE+0x64>
ffffffffc0004034:	f6a43423          	sd	a0,-152(s0)
ffffffffc0004038:	c0006537          	lui	a0,0xc0006
ffffffffc000403c:	d5450513          	addi	a0,a0,-684 # ffffffffc0005d54 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36d96680293b17a0E>
ffffffffc0004040:	0480006f          	j	ffffffffc0004088 <_ZN75_$LT$core..panic..PanicInfo$LT$$u27$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hcacd4d94b13e8d6fE+0xa8>
ffffffffc0004044:	00093a03          	ld	s4,0(s2)
ffffffffc0004048:	00893503          	ld	a0,8(s2)
ffffffffc000404c:	01853583          	ld	a1,24(a0)
ffffffffc0004050:	000a0513          	mv	a0,s4
ffffffffc0004054:	000580e7          	jalr	a1
ffffffffc0004058:	008885b7          	lui	a1,0x888
ffffffffc000405c:	4a75859b          	addiw	a1,a1,1191
ffffffffc0004060:	00d59593          	slli	a1,a1,0xd
ffffffffc0004064:	97158593          	addi	a1,a1,-1679 # 887971 <XLENb+0x887931>
ffffffffc0004068:	00c59593          	slli	a1,a1,0xc
ffffffffc000406c:	b0958593          	addi	a1,a1,-1271
ffffffffc0004070:	00c59593          	slli	a1,a1,0xc
ffffffffc0004074:	76458593          	addi	a1,a1,1892
ffffffffc0004078:	04b51e63          	bne	a0,a1,ffffffffc00040d4 <_ZN75_$LT$core..panic..PanicInfo$LT$$u27$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hcacd4d94b13e8d6fE+0xf4>
ffffffffc000407c:	f7443423          	sd	s4,-152(s0)
ffffffffc0004080:	c0006537          	lui	a0,0xc0006
ffffffffc0004084:	dc450513          	addi	a0,a0,-572 # ffffffffc0005dc4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f0c1b3cb995c3c1E>
ffffffffc0004088:	f6a43c23          	sd	a0,-136(s0)
ffffffffc000408c:	f6840513          	addi	a0,s0,-152
ffffffffc0004090:	f6a43823          	sd	a0,-144(s0)
ffffffffc0004094:	0284b583          	ld	a1,40(s1)
ffffffffc0004098:	0204b503          	ld	a0,32(s1)
ffffffffc000409c:	00100613          	li	a2,1
ffffffffc00040a0:	fcc43423          	sd	a2,-56(s0)
ffffffffc00040a4:	f7040613          	addi	a2,s0,-144
ffffffffc00040a8:	fcc43023          	sd	a2,-64(s0)
ffffffffc00040ac:	00200613          	li	a2,2
ffffffffc00040b0:	fac43423          	sd	a2,-88(s0)
ffffffffc00040b4:	c0009637          	lui	a2,0xc0009
ffffffffc00040b8:	7f060613          	addi	a2,a2,2032 # ffffffffc00097f0 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.8>
ffffffffc00040bc:	fac43023          	sd	a2,-96(s0)
ffffffffc00040c0:	fa043823          	sd	zero,-80(s0)
ffffffffc00040c4:	fa040613          	addi	a2,s0,-96
ffffffffc00040c8:	00001097          	auipc	ra,0x1
ffffffffc00040cc:	b24080e7          	jalr	-1244(ra) # ffffffffc0004bec <_ZN4core3fmt5write17h62151e7ab9dfc071E>
ffffffffc00040d0:	06051a63          	bnez	a0,ffffffffc0004144 <_ZN75_$LT$core..panic..PanicInfo$LT$$u27$_$GT$$u20$as$u20$core..fmt..Display$GT$3fmt17hcacd4d94b13e8d6fE+0x164>
ffffffffc00040d4:	02c90513          	addi	a0,s2,44
ffffffffc00040d8:	f8a43823          	sd	a0,-112(s0)
ffffffffc00040dc:	c0004537          	lui	a0,0xc0004
ffffffffc00040e0:	b3850513          	addi	a0,a0,-1224 # ffffffffc0003b38 <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u32$GT$3fmt17h2dc41b69ae7fe957E>
ffffffffc00040e4:	f8a43c23          	sd	a0,-104(s0)
ffffffffc00040e8:	f8a43423          	sd	a0,-120(s0)
ffffffffc00040ec:	02890513          	addi	a0,s2,40
ffffffffc00040f0:	f8a43023          	sd	a0,-128(s0)
ffffffffc00040f4:	c0006537          	lui	a0,0xc0006
ffffffffc00040f8:	dfc50513          	addi	a0,a0,-516 # ffffffffc0005dfc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h949cc7e59610bfd8E>
ffffffffc00040fc:	f6a43c23          	sd	a0,-136(s0)
ffffffffc0004100:	01890513          	addi	a0,s2,24
ffffffffc0004104:	f6a43823          	sd	a0,-144(s0)
ffffffffc0004108:	0284b583          	ld	a1,40(s1)
ffffffffc000410c:	0204b503          	ld	a0,32(s1)
ffffffffc0004110:	f7040613          	addi	a2,s0,-144
ffffffffc0004114:	fcc43023          	sd	a2,-64(s0)
ffffffffc0004118:	fa043823          	sd	zero,-80(s0)
ffffffffc000411c:	00300613          	li	a2,3
ffffffffc0004120:	fcc43423          	sd	a2,-56(s0)
ffffffffc0004124:	fac43423          	sd	a2,-88(s0)
ffffffffc0004128:	c000a637          	lui	a2,0xc000a
ffffffffc000412c:	81860613          	addi	a2,a2,-2024 # ffffffffc0009818 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.10>
ffffffffc0004130:	fac43023          	sd	a2,-96(s0)
ffffffffc0004134:	fa040613          	addi	a2,s0,-96
ffffffffc0004138:	00001097          	auipc	ra,0x1
ffffffffc000413c:	ab4080e7          	jalr	-1356(ra) # ffffffffc0004bec <_ZN4core3fmt5write17h62151e7ab9dfc071E>
ffffffffc0004140:	00050993          	mv	s3,a0
ffffffffc0004144:	00098513          	mv	a0,s3
ffffffffc0004148:	07013a03          	ld	s4,112(sp)
ffffffffc000414c:	07813983          	ld	s3,120(sp)
ffffffffc0004150:	08013903          	ld	s2,128(sp)
ffffffffc0004154:	08813483          	ld	s1,136(sp)
ffffffffc0004158:	09013403          	ld	s0,144(sp)
ffffffffc000415c:	09813083          	ld	ra,152(sp)
ffffffffc0004160:	0a010113          	addi	sp,sp,160
ffffffffc0004164:	00008067          	ret

ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>:
ffffffffc0004168:	f9010113          	addi	sp,sp,-112
ffffffffc000416c:	06113423          	sd	ra,104(sp)
ffffffffc0004170:	06813023          	sd	s0,96(sp)
ffffffffc0004174:	07010413          	addi	s0,sp,112
ffffffffc0004178:	01053583          	ld	a1,16(a0)
ffffffffc000417c:	01853603          	ld	a2,24(a0)
ffffffffc0004180:	02053683          	ld	a3,32(a0)
ffffffffc0004184:	00053703          	ld	a4,0(a0)
ffffffffc0004188:	00853503          	ld	a0,8(a0)
ffffffffc000418c:	fca43823          	sd	a0,-48(s0)
ffffffffc0004190:	fce43423          	sd	a4,-56(s0)
ffffffffc0004194:	c0009537          	lui	a0,0xc0009
ffffffffc0004198:	7c050513          	addi	a0,a0,1984 # ffffffffc00097c0 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.4>
ffffffffc000419c:	faa43c23          	sd	a0,-72(s0)
ffffffffc00041a0:	fc043023          	sd	zero,-64(s0)
ffffffffc00041a4:	fa043423          	sd	zero,-88(s0)
ffffffffc00041a8:	00100513          	li	a0,1
ffffffffc00041ac:	faa43023          	sd	a0,-96(s0)
ffffffffc00041b0:	fc840513          	addi	a0,s0,-56
ffffffffc00041b4:	f8a43c23          	sd	a0,-104(s0)
ffffffffc00041b8:	fed43423          	sd	a3,-24(s0)
ffffffffc00041bc:	fec43023          	sd	a2,-32(s0)
ffffffffc00041c0:	fcb43c23          	sd	a1,-40(s0)
ffffffffc00041c4:	f9840513          	addi	a0,s0,-104
ffffffffc00041c8:	fd840593          	addi	a1,s0,-40
ffffffffc00041cc:	00000097          	auipc	ra,0x0
ffffffffc00041d0:	088080e7          	jalr	136(ra) # ffffffffc0004254 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>
ffffffffc00041d4:	ffffd097          	auipc	ra,0xffffd
ffffffffc00041d8:	ebc080e7          	jalr	-324(ra) # ffffffffc0001090 <abort>

ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>:
ffffffffc00041dc:	f9010113          	addi	sp,sp,-112
ffffffffc00041e0:	06113423          	sd	ra,104(sp)
ffffffffc00041e4:	06813023          	sd	s0,96(sp)
ffffffffc00041e8:	07010413          	addi	s0,sp,112
ffffffffc00041ec:	00050693          	mv	a3,a0
ffffffffc00041f0:	f8c43c23          	sd	a2,-104(s0)
ffffffffc00041f4:	f8b43823          	sd	a1,-112(s0)
ffffffffc00041f8:	f9040513          	addi	a0,s0,-112
ffffffffc00041fc:	fea43023          	sd	a0,-32(s0)
ffffffffc0004200:	c0004537          	lui	a0,0xc0004
ffffffffc0004204:	d5c50513          	addi	a0,a0,-676 # ffffffffc0003d5c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>
ffffffffc0004208:	fea43423          	sd	a0,-24(s0)
ffffffffc000420c:	fca43c23          	sd	a0,-40(s0)
ffffffffc0004210:	f9840513          	addi	a0,s0,-104
ffffffffc0004214:	fca43823          	sd	a0,-48(s0)
ffffffffc0004218:	fd040513          	addi	a0,s0,-48
ffffffffc000421c:	fca43023          	sd	a0,-64(s0)
ffffffffc0004220:	fa043823          	sd	zero,-80(s0)
ffffffffc0004224:	00200513          	li	a0,2
ffffffffc0004228:	fca43423          	sd	a0,-56(s0)
ffffffffc000422c:	faa43423          	sd	a0,-88(s0)
ffffffffc0004230:	c000a537          	lui	a0,0xc000a
ffffffffc0004234:	86050513          	addi	a0,a0,-1952 # ffffffffc0009860 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.13>
ffffffffc0004238:	faa43023          	sd	a0,-96(s0)
ffffffffc000423c:	fa040513          	addi	a0,s0,-96
ffffffffc0004240:	00068593          	mv	a1,a3
ffffffffc0004244:	00000097          	auipc	ra,0x0
ffffffffc0004248:	010080e7          	jalr	16(ra) # ffffffffc0004254 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>
ffffffffc000424c:	ffffd097          	auipc	ra,0xffffd
ffffffffc0004250:	e44080e7          	jalr	-444(ra) # ffffffffc0001090 <abort>

ffffffffc0004254 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>:
ffffffffc0004254:	fc010113          	addi	sp,sp,-64
ffffffffc0004258:	02113c23          	sd	ra,56(sp)
ffffffffc000425c:	02813823          	sd	s0,48(sp)
ffffffffc0004260:	04010413          	addi	s0,sp,64
ffffffffc0004264:	0005b603          	ld	a2,0(a1)
ffffffffc0004268:	0085b683          	ld	a3,8(a1)
ffffffffc000426c:	0105b583          	ld	a1,16(a1)
ffffffffc0004270:	feb43423          	sd	a1,-24(s0)
ffffffffc0004274:	fed43023          	sd	a3,-32(s0)
ffffffffc0004278:	fcc43c23          	sd	a2,-40(s0)
ffffffffc000427c:	fca43823          	sd	a0,-48(s0)
ffffffffc0004280:	c0009537          	lui	a0,0xc0009
ffffffffc0004284:	7c050513          	addi	a0,a0,1984 # ffffffffc00097c0 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.4>
ffffffffc0004288:	fca43423          	sd	a0,-56(s0)
ffffffffc000428c:	c0009537          	lui	a0,0xc0009
ffffffffc0004290:	7c050513          	addi	a0,a0,1984 # ffffffffc00097c0 <.Lanon.4f78b72708e4af6429bf3eb02c8a6362.4>
ffffffffc0004294:	fca43023          	sd	a0,-64(s0)
ffffffffc0004298:	fc040513          	addi	a0,s0,-64
ffffffffc000429c:	ffffc097          	auipc	ra,0xffffc
ffffffffc00042a0:	194080e7          	jalr	404(ra) # ffffffffc0000430 <rust_begin_unwind>
ffffffffc00042a4:	ffffd097          	auipc	ra,0xffffd
ffffffffc00042a8:	dec080e7          	jalr	-532(ra) # ffffffffc0001090 <abort>

ffffffffc00042ac <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E>:
ffffffffc00042ac:	fd010113          	addi	sp,sp,-48
ffffffffc00042b0:	02113423          	sd	ra,40(sp)
ffffffffc00042b4:	02813023          	sd	s0,32(sp)
ffffffffc00042b8:	00913c23          	sd	s1,24(sp)
ffffffffc00042bc:	01213823          	sd	s2,16(sp)
ffffffffc00042c0:	01313423          	sd	s3,8(sp)
ffffffffc00042c4:	01413023          	sd	s4,0(sp)
ffffffffc00042c8:	03010413          	addi	s0,sp,48
ffffffffc00042cc:	00060913          	mv	s2,a2
ffffffffc00042d0:	00058993          	mv	s3,a1
ffffffffc00042d4:	0075f593          	andi	a1,a1,7
ffffffffc00042d8:	00000a13          	li	s4,0
ffffffffc00042dc:	0c058c63          	beqz	a1,ffffffffc00043b4 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x108>
ffffffffc00042e0:	00800613          	li	a2,8
ffffffffc00042e4:	40b605b3          	sub	a1,a2,a1
ffffffffc00042e8:	0c058663          	beqz	a1,ffffffffc00043b4 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x108>
ffffffffc00042ec:	00090a13          	mv	s4,s2
ffffffffc00042f0:	00b96463          	bltu	s2,a1,ffffffffc00042f8 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x4c>
ffffffffc00042f4:	00058a13          	mv	s4,a1
ffffffffc00042f8:	014988b3          	add	a7,s3,s4
ffffffffc00042fc:	00300813          	li	a6,3
ffffffffc0004300:	0ff57613          	andi	a2,a0,255
ffffffffc0004304:	000a0693          	mv	a3,s4
ffffffffc0004308:	00098713          	mv	a4,s3
ffffffffc000430c:	00000593          	li	a1,0
ffffffffc0004310:	40e884b3          	sub	s1,a7,a4
ffffffffc0004314:	06987063          	bgeu	a6,s1,ffffffffc0004374 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0xc8>
ffffffffc0004318:	00074483          	lbu	s1,0(a4)
ffffffffc000431c:	00c4c7b3          	xor	a5,s1,a2
ffffffffc0004320:	00f037b3          	snez	a5,a5
ffffffffc0004324:	00f585b3          	add	a1,a1,a5
ffffffffc0004328:	08c48263          	beq	s1,a2,ffffffffc00043ac <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x100>
ffffffffc000432c:	00174783          	lbu	a5,1(a4)
ffffffffc0004330:	00c7c4b3          	xor	s1,a5,a2
ffffffffc0004334:	009034b3          	snez	s1,s1
ffffffffc0004338:	009585b3          	add	a1,a1,s1
ffffffffc000433c:	06c78863          	beq	a5,a2,ffffffffc00043ac <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x100>
ffffffffc0004340:	00274783          	lbu	a5,2(a4)
ffffffffc0004344:	00c7c4b3          	xor	s1,a5,a2
ffffffffc0004348:	009034b3          	snez	s1,s1
ffffffffc000434c:	009585b3          	add	a1,a1,s1
ffffffffc0004350:	04c78e63          	beq	a5,a2,ffffffffc00043ac <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x100>
ffffffffc0004354:	00374783          	lbu	a5,3(a4)
ffffffffc0004358:	00c7c4b3          	xor	s1,a5,a2
ffffffffc000435c:	009034b3          	snez	s1,s1
ffffffffc0004360:	009585b3          	add	a1,a1,s1
ffffffffc0004364:	ffc68693          	addi	a3,a3,-4
ffffffffc0004368:	00470713          	addi	a4,a4,4
ffffffffc000436c:	fac792e3          	bne	a5,a2,ffffffffc0004310 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x64>
ffffffffc0004370:	03c0006f          	j	ffffffffc00043ac <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x100>
ffffffffc0004374:	00000793          	li	a5,0
ffffffffc0004378:	02068e63          	beqz	a3,ffffffffc00043b4 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x108>
ffffffffc000437c:	00f704b3          	add	s1,a4,a5
ffffffffc0004380:	fff68693          	addi	a3,a3,-1
ffffffffc0004384:	00178793          	addi	a5,a5,1
ffffffffc0004388:	0004c483          	lbu	s1,0(s1)
ffffffffc000438c:	fec496e3          	bne	s1,a2,ffffffffc0004378 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0xcc>
ffffffffc0004390:	00c4c533          	xor	a0,s1,a2
ffffffffc0004394:	00153513          	seqz	a0,a0
ffffffffc0004398:	00150513          	addi	a0,a0,1
ffffffffc000439c:	00157513          	andi	a0,a0,1
ffffffffc00043a0:	00b50533          	add	a0,a0,a1
ffffffffc00043a4:	00f50533          	add	a0,a0,a5
ffffffffc00043a8:	fff50593          	addi	a1,a0,-1
ffffffffc00043ac:	00100513          	li	a0,1
ffffffffc00043b0:	1700006f          	j	ffffffffc0004520 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x274>
ffffffffc00043b4:	0ff57493          	andi	s1,a0,255
ffffffffc00043b8:	01010537          	lui	a0,0x1010
ffffffffc00043bc:	1015051b          	addiw	a0,a0,257
ffffffffc00043c0:	01051513          	slli	a0,a0,0x10
ffffffffc00043c4:	10150513          	addi	a0,a0,257 # 1010101 <XLENb+0x10100c1>
ffffffffc00043c8:	01051513          	slli	a0,a0,0x10
ffffffffc00043cc:	10150593          	addi	a1,a0,257
ffffffffc00043d0:	00048513          	mv	a0,s1
ffffffffc00043d4:	00003097          	auipc	ra,0x3
ffffffffc00043d8:	ed4080e7          	jalr	-300(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc00043dc:	01000593          	li	a1,16
ffffffffc00043e0:	08b96463          	bltu	s2,a1,ffffffffc0004468 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x1bc>
ffffffffc00043e4:	ff090813          	addi	a6,s2,-16
ffffffffc00043e8:	09486063          	bltu	a6,s4,ffffffffc0004468 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x1bc>
ffffffffc00043ec:	feff0637          	lui	a2,0xfeff0
ffffffffc00043f0:	eff6061b          	addiw	a2,a2,-257
ffffffffc00043f4:	01061613          	slli	a2,a2,0x10
ffffffffc00043f8:	eff60613          	addi	a2,a2,-257 # fffffffffefefeff <ebss+0x3eddce77>
ffffffffc00043fc:	01061613          	slli	a2,a2,0x10
ffffffffc0004400:	eff60613          	addi	a2,a2,-257
ffffffffc0004404:	ffff06b7          	lui	a3,0xffff0
ffffffffc0004408:	1016869b          	addiw	a3,a3,257
ffffffffc000440c:	01069693          	slli	a3,a3,0x10
ffffffffc0004410:	10168693          	addi	a3,a3,257 # ffffffffffff0101 <ebss+0x3fddd079>
ffffffffc0004414:	01069693          	slli	a3,a3,0x10
ffffffffc0004418:	10168693          	addi	a3,a3,257
ffffffffc000441c:	00f69693          	slli	a3,a3,0xf
ffffffffc0004420:	08068693          	addi	a3,a3,128
ffffffffc0004424:	01498733          	add	a4,s3,s4
ffffffffc0004428:	00073783          	ld	a5,0(a4)
ffffffffc000442c:	00a7c7b3          	xor	a5,a5,a0
ffffffffc0004430:	00c785b3          	add	a1,a5,a2
ffffffffc0004434:	fff7c793          	not	a5,a5
ffffffffc0004438:	00b7f5b3          	and	a1,a5,a1
ffffffffc000443c:	00873703          	ld	a4,8(a4)
ffffffffc0004440:	00a74733          	xor	a4,a4,a0
ffffffffc0004444:	00c707b3          	add	a5,a4,a2
ffffffffc0004448:	fff74713          	not	a4,a4
ffffffffc000444c:	00f77733          	and	a4,a4,a5
ffffffffc0004450:	00b765b3          	or	a1,a4,a1
ffffffffc0004454:	00d5f5b3          	and	a1,a1,a3
ffffffffc0004458:	00059663          	bnez	a1,ffffffffc0004464 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x1b8>
ffffffffc000445c:	010a0a13          	addi	s4,s4,16
ffffffffc0004460:	fd4872e3          	bgeu	a6,s4,ffffffffc0004424 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x178>
ffffffffc0004464:	0f496663          	bltu	s2,s4,ffffffffc0004550 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x2a4>
ffffffffc0004468:	41490533          	sub	a0,s2,s4
ffffffffc000446c:	012986b3          	add	a3,s3,s2
ffffffffc0004470:	01498633          	add	a2,s3,s4
ffffffffc0004474:	00300813          	li	a6,3
ffffffffc0004478:	00000593          	li	a1,0
ffffffffc000447c:	40c687b3          	sub	a5,a3,a2
ffffffffc0004480:	06f87063          	bgeu	a6,a5,ffffffffc00044e0 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x234>
ffffffffc0004484:	00064783          	lbu	a5,0(a2)
ffffffffc0004488:	0097c733          	xor	a4,a5,s1
ffffffffc000448c:	00e03733          	snez	a4,a4
ffffffffc0004490:	00e585b3          	add	a1,a1,a4
ffffffffc0004494:	08978263          	beq	a5,s1,ffffffffc0004518 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x26c>
ffffffffc0004498:	00164703          	lbu	a4,1(a2)
ffffffffc000449c:	009747b3          	xor	a5,a4,s1
ffffffffc00044a0:	00f037b3          	snez	a5,a5
ffffffffc00044a4:	00f585b3          	add	a1,a1,a5
ffffffffc00044a8:	06970863          	beq	a4,s1,ffffffffc0004518 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x26c>
ffffffffc00044ac:	00264703          	lbu	a4,2(a2)
ffffffffc00044b0:	009747b3          	xor	a5,a4,s1
ffffffffc00044b4:	00f037b3          	snez	a5,a5
ffffffffc00044b8:	00f585b3          	add	a1,a1,a5
ffffffffc00044bc:	04970e63          	beq	a4,s1,ffffffffc0004518 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x26c>
ffffffffc00044c0:	00364703          	lbu	a4,3(a2)
ffffffffc00044c4:	009747b3          	xor	a5,a4,s1
ffffffffc00044c8:	00f037b3          	snez	a5,a5
ffffffffc00044cc:	00f585b3          	add	a1,a1,a5
ffffffffc00044d0:	ffc50513          	addi	a0,a0,-4
ffffffffc00044d4:	00460613          	addi	a2,a2,4
ffffffffc00044d8:	fa9712e3          	bne	a4,s1,ffffffffc000447c <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x1d0>
ffffffffc00044dc:	03c0006f          	j	ffffffffc0004518 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x26c>
ffffffffc00044e0:	00000693          	li	a3,0
ffffffffc00044e4:	04050e63          	beqz	a0,ffffffffc0004540 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x294>
ffffffffc00044e8:	00d60733          	add	a4,a2,a3
ffffffffc00044ec:	fff50513          	addi	a0,a0,-1
ffffffffc00044f0:	00168693          	addi	a3,a3,1
ffffffffc00044f4:	00074703          	lbu	a4,0(a4)
ffffffffc00044f8:	fe9716e3          	bne	a4,s1,ffffffffc00044e4 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x238>
ffffffffc00044fc:	00974533          	xor	a0,a4,s1
ffffffffc0004500:	00153513          	seqz	a0,a0
ffffffffc0004504:	00150513          	addi	a0,a0,1
ffffffffc0004508:	00157513          	andi	a0,a0,1
ffffffffc000450c:	00b50533          	add	a0,a0,a1
ffffffffc0004510:	00d50533          	add	a0,a0,a3
ffffffffc0004514:	fff50593          	addi	a1,a0,-1
ffffffffc0004518:	00100513          	li	a0,1
ffffffffc000451c:	014585b3          	add	a1,a1,s4
ffffffffc0004520:	00013a03          	ld	s4,0(sp)
ffffffffc0004524:	00813983          	ld	s3,8(sp)
ffffffffc0004528:	01013903          	ld	s2,16(sp)
ffffffffc000452c:	01813483          	ld	s1,24(sp)
ffffffffc0004530:	02013403          	ld	s0,32(sp)
ffffffffc0004534:	02813083          	ld	ra,40(sp)
ffffffffc0004538:	03010113          	addi	sp,sp,48
ffffffffc000453c:	00008067          	ret
ffffffffc0004540:	00d58533          	add	a0,a1,a3
ffffffffc0004544:	014505b3          	add	a1,a0,s4
ffffffffc0004548:	00000513          	li	a0,0
ffffffffc000454c:	fd5ff06f          	j	ffffffffc0004520 <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E+0x274>
ffffffffc0004550:	000a0513          	mv	a0,s4
ffffffffc0004554:	00090593          	mv	a1,s2
ffffffffc0004558:	00000097          	auipc	ra,0x0
ffffffffc000455c:	5d8080e7          	jalr	1496(ra) # ffffffffc0004b30 <_ZN4core5slice22slice_index_order_fail17h2c29e16eca0878c2E>
ffffffffc0004560:	ffffd097          	auipc	ra,0xffffd
ffffffffc0004564:	b30080e7          	jalr	-1232(ra) # ffffffffc0001090 <abort>

ffffffffc0004568 <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623>:
ffffffffc0004568:	ff010113          	addi	sp,sp,-16
ffffffffc000456c:	00113423          	sd	ra,8(sp)
ffffffffc0004570:	00813023          	sd	s0,0(sp)
ffffffffc0004574:	01010413          	addi	s0,sp,16
ffffffffc0004578:	000102b7          	lui	t0,0x10
ffffffffc000457c:	06060663          	beqz	a2,ffffffffc00045e8 <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0x80>
ffffffffc0004580:	00161613          	slli	a2,a2,0x1
ffffffffc0004584:	00c58333          	add	t1,a1,a2
ffffffffc0004588:	f002861b          	addiw	a2,t0,-256
ffffffffc000458c:	00c57633          	and	a2,a0,a2
ffffffffc0004590:	00865393          	srli	t2,a2,0x8
ffffffffc0004594:	0ff57f13          	andi	t5,a0,255
ffffffffc0004598:	00000e13          	li	t3,0
ffffffffc000459c:	0015c603          	lbu	a2,1(a1)
ffffffffc00045a0:	00ce08b3          	add	a7,t3,a2
ffffffffc00045a4:	00258e93          	addi	t4,a1,2
ffffffffc00045a8:	0005c583          	lbu	a1,0(a1)
ffffffffc00045ac:	02759663          	bne	a1,t2,ffffffffc00045d8 <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0x70>
ffffffffc00045b0:	0dc8ec63          	bltu	a7,t3,ffffffffc0004688 <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0x120>
ffffffffc00045b4:	0f176663          	bltu	a4,a7,ffffffffc00046a0 <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0x138>
ffffffffc00045b8:	01c685b3          	add	a1,a3,t3
ffffffffc00045bc:	02060063          	beqz	a2,ffffffffc00045dc <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0x74>
ffffffffc00045c0:	fff60613          	addi	a2,a2,-1
ffffffffc00045c4:	00158e13          	addi	t3,a1,1
ffffffffc00045c8:	0005cf83          	lbu	t6,0(a1)
ffffffffc00045cc:	000e0593          	mv	a1,t3
ffffffffc00045d0:	ffef96e3          	bne	t6,t5,ffffffffc00045bc <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0x54>
ffffffffc00045d4:	07c0006f          	j	ffffffffc0004650 <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0xe8>
ffffffffc00045d8:	00b3e863          	bltu	t2,a1,ffffffffc00045e8 <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0x80>
ffffffffc00045dc:	00088e13          	mv	t3,a7
ffffffffc00045e0:	000e8593          	mv	a1,t4
ffffffffc00045e4:	fa6e9ce3          	bne	t4,t1,ffffffffc000459c <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0x34>
ffffffffc00045e8:	06080863          	beqz	a6,ffffffffc0004658 <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0xf0>
ffffffffc00045ec:	010785b3          	add	a1,a5,a6
ffffffffc00045f0:	fff2861b          	addiw	a2,t0,-1
ffffffffc00045f4:	00c57633          	and	a2,a0,a2
ffffffffc00045f8:	00100513          	li	a0,1
ffffffffc00045fc:	00178713          	addi	a4,a5,1
ffffffffc0004600:	fff00813          	li	a6,-1
ffffffffc0004604:	00078683          	lb	a3,0(a5)
ffffffffc0004608:	02d85263          	bge	a6,a3,ffffffffc000462c <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0xc4>
ffffffffc000460c:	0ff6f693          	andi	a3,a3,255
ffffffffc0004610:	00070793          	mv	a5,a4
ffffffffc0004614:	40d6063b          	subw	a2,a2,a3
ffffffffc0004618:	04064263          	bltz	a2,ffffffffc000465c <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0xf4>
ffffffffc000461c:	00178713          	addi	a4,a5,1
ffffffffc0004620:	00154513          	xori	a0,a0,1
ffffffffc0004624:	feb790e3          	bne	a5,a1,ffffffffc0004604 <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0x9c>
ffffffffc0004628:	0340006f          	j	ffffffffc000465c <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0xf4>
ffffffffc000462c:	04b70263          	beq	a4,a1,ffffffffc0004670 <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0x108>
ffffffffc0004630:	07f6f693          	andi	a3,a3,127
ffffffffc0004634:	00869693          	slli	a3,a3,0x8
ffffffffc0004638:	00074783          	lbu	a5,0(a4)
ffffffffc000463c:	00f6e6b3          	or	a3,a3,a5
ffffffffc0004640:	00170793          	addi	a5,a4,1
ffffffffc0004644:	40d6063b          	subw	a2,a2,a3
ffffffffc0004648:	fc065ae3          	bgez	a2,ffffffffc000461c <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0xb4>
ffffffffc000464c:	0100006f          	j	ffffffffc000465c <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0xf4>
ffffffffc0004650:	00000513          	li	a0,0
ffffffffc0004654:	0080006f          	j	ffffffffc000465c <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623+0xf4>
ffffffffc0004658:	00100513          	li	a0,1
ffffffffc000465c:	00157513          	andi	a0,a0,1
ffffffffc0004660:	00013403          	ld	s0,0(sp)
ffffffffc0004664:	00813083          	ld	ra,8(sp)
ffffffffc0004668:	01010113          	addi	sp,sp,16
ffffffffc000466c:	00008067          	ret
ffffffffc0004670:	c000a537          	lui	a0,0xc000a
ffffffffc0004674:	53850513          	addi	a0,a0,1336 # ffffffffc000a538 <.Lanon.2e8fa9aa478d4b91b8d1906fc2b44d59.13>
ffffffffc0004678:	00000097          	auipc	ra,0x0
ffffffffc000467c:	af0080e7          	jalr	-1296(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0004680:	ffffd097          	auipc	ra,0xffffd
ffffffffc0004684:	a10080e7          	jalr	-1520(ra) # ffffffffc0001090 <abort>
ffffffffc0004688:	000e0513          	mv	a0,t3
ffffffffc000468c:	00088593          	mv	a1,a7
ffffffffc0004690:	00000097          	auipc	ra,0x0
ffffffffc0004694:	4a0080e7          	jalr	1184(ra) # ffffffffc0004b30 <_ZN4core5slice22slice_index_order_fail17h2c29e16eca0878c2E>
ffffffffc0004698:	ffffd097          	auipc	ra,0xffffd
ffffffffc000469c:	9f8080e7          	jalr	-1544(ra) # ffffffffc0001090 <abort>
ffffffffc00046a0:	00088513          	mv	a0,a7
ffffffffc00046a4:	00070593          	mv	a1,a4
ffffffffc00046a8:	00000097          	auipc	ra,0x0
ffffffffc00046ac:	410080e7          	jalr	1040(ra) # ffffffffc0004ab8 <_ZN4core5slice20slice_index_len_fail17h00876028ef412882E>
ffffffffc00046b0:	ffffd097          	auipc	ra,0xffffd
ffffffffc00046b4:	9e0080e7          	jalr	-1568(ra) # ffffffffc0001090 <abort>

ffffffffc00046b8 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E>:
ffffffffc00046b8:	f2010113          	addi	sp,sp,-224
ffffffffc00046bc:	0c113c23          	sd	ra,216(sp)
ffffffffc00046c0:	0c813823          	sd	s0,208(sp)
ffffffffc00046c4:	0e010413          	addi	s0,sp,224
ffffffffc00046c8:	f2d43423          	sd	a3,-216(s0)
ffffffffc00046cc:	f2c43023          	sd	a2,-224(s0)
ffffffffc00046d0:	10100713          	li	a4,257
ffffffffc00046d4:	02e5f263          	bgeu	a1,a4,ffffffffc00046f8 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x40>
ffffffffc00046d8:	00100893          	li	a7,1
ffffffffc00046dc:	00058393          	mv	t2,a1
ffffffffc00046e0:	04088e63          	beqz	a7,ffffffffc000473c <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x84>
ffffffffc00046e4:	c000b737          	lui	a4,0xc000b
ffffffffc00046e8:	b4570813          	addi	a6,a4,-1211 # ffffffffc000ab45 <.Lanon.a6c6970a6195885a2d31d2f1d9ea103b.21>
ffffffffc00046ec:	00000793          	li	a5,0
ffffffffc00046f0:	04088e63          	beqz	a7,ffffffffc000474c <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x94>
ffffffffc00046f4:	05c0006f          	j	ffffffffc0004750 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x98>
ffffffffc00046f8:	f0158313          	addi	t1,a1,-255
ffffffffc00046fc:	10050813          	addi	a6,a0,256
ffffffffc0004700:	fbf00893          	li	a7,-65
ffffffffc0004704:	f0100293          	li	t0,-255
ffffffffc0004708:	00000713          	li	a4,0
ffffffffc000470c:	00070793          	mv	a5,a4
ffffffffc0004710:	10070393          	addi	t2,a4,256
ffffffffc0004714:	00b3f863          	bgeu	t2,a1,ffffffffc0004724 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x6c>
ffffffffc0004718:	00f80733          	add	a4,a6,a5
ffffffffc000471c:	00070703          	lb	a4,0(a4)
ffffffffc0004720:	00e8ca63          	blt	a7,a4,ffffffffc0004734 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x7c>
ffffffffc0004724:	fff78713          	addi	a4,a5,-1
ffffffffc0004728:	00578463          	beq	a5,t0,ffffffffc0004730 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x78>
ffffffffc000472c:	fef310e3          	bne	t1,a5,ffffffffc000470c <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x54>
ffffffffc0004730:	10070393          	addi	t2,a4,256
ffffffffc0004734:	00000893          	li	a7,0
ffffffffc0004738:	fa0896e3          	bnez	a7,ffffffffc00046e4 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x2c>
ffffffffc000473c:	c000b737          	lui	a4,0xc000b
ffffffffc0004740:	b4070813          	addi	a6,a4,-1216 # ffffffffc000ab40 <.Lanon.a6c6970a6195885a2d31d2f1d9ea103b.19>
ffffffffc0004744:	00000793          	li	a5,0
ffffffffc0004748:	00089463          	bnez	a7,ffffffffc0004750 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x98>
ffffffffc000474c:	00500793          	li	a5,5
ffffffffc0004750:	f2743c23          	sd	t2,-200(s0)
ffffffffc0004754:	f2a43823          	sd	a0,-208(s0)
ffffffffc0004758:	f4f43423          	sd	a5,-184(s0)
ffffffffc000475c:	f5043023          	sd	a6,-192(s0)
ffffffffc0004760:	24c5ec63          	bltu	a1,a2,ffffffffc00049b8 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x300>
ffffffffc0004764:	24d5ea63          	bltu	a1,a3,ffffffffc00049b8 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x300>
ffffffffc0004768:	2cc6e863          	bltu	a3,a2,ffffffffc0004a38 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x380>
ffffffffc000476c:	00060e63          	beqz	a2,ffffffffc0004788 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0xd0>
ffffffffc0004770:	00c58c63          	beq	a1,a2,ffffffffc0004788 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0xd0>
ffffffffc0004774:	00b67c63          	bgeu	a2,a1,ffffffffc000478c <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0xd4>
ffffffffc0004778:	00c50733          	add	a4,a0,a2
ffffffffc000477c:	00070703          	lb	a4,0(a4)
ffffffffc0004780:	fc000793          	li	a5,-64
ffffffffc0004784:	00f74463          	blt	a4,a5,ffffffffc000478c <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0xd4>
ffffffffc0004788:	00068613          	mv	a2,a3
ffffffffc000478c:	f4c43823          	sd	a2,-176(s0)
ffffffffc0004790:	02060e63          	beqz	a2,ffffffffc00047cc <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x114>
ffffffffc0004794:	02b60c63          	beq	a2,a1,ffffffffc00047cc <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x114>
ffffffffc0004798:	00158693          	addi	a3,a1,1
ffffffffc000479c:	fc000813          	li	a6,-64
ffffffffc00047a0:	00100793          	li	a5,1
ffffffffc00047a4:	00060713          	mv	a4,a2
ffffffffc00047a8:	00b67863          	bgeu	a2,a1,ffffffffc00047b8 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x100>
ffffffffc00047ac:	00e50633          	add	a2,a0,a4
ffffffffc00047b0:	00060603          	lb	a2,0(a2)
ffffffffc00047b4:	01065a63          	bge	a2,a6,ffffffffc00047c8 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x110>
ffffffffc00047b8:	fff70613          	addi	a2,a4,-1
ffffffffc00047bc:	00f70863          	beq	a4,a5,ffffffffc00047cc <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x114>
ffffffffc00047c0:	fee692e3          	bne	a3,a4,ffffffffc00047a4 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0xec>
ffffffffc00047c4:	0080006f          	j	ffffffffc00047cc <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x114>
ffffffffc00047c8:	00070613          	mv	a2,a4
ffffffffc00047cc:	00b61e63          	bne	a2,a1,ffffffffc00047e8 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x130>
ffffffffc00047d0:	c000b537          	lui	a0,0xc000b
ffffffffc00047d4:	b1850513          	addi	a0,a0,-1256 # ffffffffc000ab18 <.Lanon.a6c6970a6195885a2d31d2f1d9ea103b.2>
ffffffffc00047d8:	00000097          	auipc	ra,0x0
ffffffffc00047dc:	990080e7          	jalr	-1648(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc00047e0:	ffffd097          	auipc	ra,0xffffd
ffffffffc00047e4:	8b0080e7          	jalr	-1872(ra) # ffffffffc0001090 <abort>
ffffffffc00047e8:	00c50733          	add	a4,a0,a2
ffffffffc00047ec:	00070783          	lb	a5,0(a4)
ffffffffc00047f0:	0ff7f693          	andi	a3,a5,255
ffffffffc00047f4:	0007c863          	bltz	a5,ffffffffc0004804 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x14c>
ffffffffc00047f8:	f4d42e23          	sw	a3,-164(s0)
ffffffffc00047fc:	00100513          	li	a0,1
ffffffffc0004800:	1100006f          	j	ffffffffc0004910 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x258>
ffffffffc0004804:	00b50533          	add	a0,a0,a1
ffffffffc0004808:	00170593          	addi	a1,a4,1
ffffffffc000480c:	02a59863          	bne	a1,a0,ffffffffc000483c <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x184>
ffffffffc0004810:	00050793          	mv	a5,a0
ffffffffc0004814:	00000713          	li	a4,0
ffffffffc0004818:	01f6f893          	andi	a7,a3,31
ffffffffc000481c:	0e000593          	li	a1,224
ffffffffc0004820:	02b6fa63          	bgeu	a3,a1,ffffffffc0004854 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x19c>
ffffffffc0004824:	00689513          	slli	a0,a7,0x6
ffffffffc0004828:	00a76533          	or	a0,a4,a0
ffffffffc000482c:	f4a42e23          	sw	a0,-164(s0)
ffffffffc0004830:	08000593          	li	a1,128
ffffffffc0004834:	0ab56863          	bltu	a0,a1,ffffffffc00048e4 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x22c>
ffffffffc0004838:	0b40006f          	j	ffffffffc00048ec <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x234>
ffffffffc000483c:	00270793          	addi	a5,a4,2
ffffffffc0004840:	00174583          	lbu	a1,1(a4)
ffffffffc0004844:	03f5f713          	andi	a4,a1,63
ffffffffc0004848:	01f6f893          	andi	a7,a3,31
ffffffffc000484c:	0e000593          	li	a1,224
ffffffffc0004850:	fcb6eae3          	bltu	a3,a1,ffffffffc0004824 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x16c>
ffffffffc0004854:	02a79a63          	bne	a5,a0,ffffffffc0004888 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x1d0>
ffffffffc0004858:	00050813          	mv	a6,a0
ffffffffc000485c:	00000793          	li	a5,0
ffffffffc0004860:	00671593          	slli	a1,a4,0x6
ffffffffc0004864:	00b7e733          	or	a4,a5,a1
ffffffffc0004868:	0f000593          	li	a1,240
ffffffffc000486c:	02b6fc63          	bgeu	a3,a1,ffffffffc00048a4 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x1ec>
ffffffffc0004870:	00c89513          	slli	a0,a7,0xc
ffffffffc0004874:	00a76533          	or	a0,a4,a0
ffffffffc0004878:	f4a42e23          	sw	a0,-164(s0)
ffffffffc000487c:	08000593          	li	a1,128
ffffffffc0004880:	06b56263          	bltu	a0,a1,ffffffffc00048e4 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x22c>
ffffffffc0004884:	0680006f          	j	ffffffffc00048ec <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x234>
ffffffffc0004888:	00178813          	addi	a6,a5,1
ffffffffc000488c:	0007c583          	lbu	a1,0(a5)
ffffffffc0004890:	03f5f793          	andi	a5,a1,63
ffffffffc0004894:	00671593          	slli	a1,a4,0x6
ffffffffc0004898:	00b7e733          	or	a4,a5,a1
ffffffffc000489c:	0f000593          	li	a1,240
ffffffffc00048a0:	fcb6e8e3          	bltu	a3,a1,ffffffffc0004870 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x1b8>
ffffffffc00048a4:	00a81663          	bne	a6,a0,ffffffffc00048b0 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x1f8>
ffffffffc00048a8:	00000513          	li	a0,0
ffffffffc00048ac:	00c0006f          	j	ffffffffc00048b8 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x200>
ffffffffc00048b0:	00084503          	lbu	a0,0(a6)
ffffffffc00048b4:	03f57513          	andi	a0,a0,63
ffffffffc00048b8:	01289593          	slli	a1,a7,0x12
ffffffffc00048bc:	001c06b7          	lui	a3,0x1c0
ffffffffc00048c0:	00d5f5b3          	and	a1,a1,a3
ffffffffc00048c4:	00671693          	slli	a3,a4,0x6
ffffffffc00048c8:	00b6e5b3          	or	a1,a3,a1
ffffffffc00048cc:	00a5e533          	or	a0,a1,a0
ffffffffc00048d0:	001105b7          	lui	a1,0x110
ffffffffc00048d4:	eeb50ee3          	beq	a0,a1,ffffffffc00047d0 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x118>
ffffffffc00048d8:	f4a42e23          	sw	a0,-164(s0)
ffffffffc00048dc:	08000593          	li	a1,128
ffffffffc00048e0:	00b57663          	bgeu	a0,a1,ffffffffc00048ec <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x234>
ffffffffc00048e4:	00100513          	li	a0,1
ffffffffc00048e8:	0280006f          	j	ffffffffc0004910 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x258>
ffffffffc00048ec:	00b55593          	srli	a1,a0,0xb
ffffffffc00048f0:	00059663          	bnez	a1,ffffffffc00048fc <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x244>
ffffffffc00048f4:	00200513          	li	a0,2
ffffffffc00048f8:	0180006f          	j	ffffffffc0004910 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x258>
ffffffffc00048fc:	01055513          	srli	a0,a0,0x10
ffffffffc0004900:	00050663          	beqz	a0,ffffffffc000490c <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x254>
ffffffffc0004904:	00400513          	li	a0,4
ffffffffc0004908:	0080006f          	j	ffffffffc0004910 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x258>
ffffffffc000490c:	00300513          	li	a0,3
ffffffffc0004910:	f6c43023          	sd	a2,-160(s0)
ffffffffc0004914:	00c50533          	add	a0,a0,a2
ffffffffc0004918:	f6a43423          	sd	a0,-152(s0)
ffffffffc000491c:	f4040513          	addi	a0,s0,-192
ffffffffc0004920:	fea43023          	sd	a0,-32(s0)
ffffffffc0004924:	c0006537          	lui	a0,0xc0006
ffffffffc0004928:	dfc50513          	addi	a0,a0,-516 # ffffffffc0005dfc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h949cc7e59610bfd8E>
ffffffffc000492c:	fea43423          	sd	a0,-24(s0)
ffffffffc0004930:	fca43c23          	sd	a0,-40(s0)
ffffffffc0004934:	f3040513          	addi	a0,s0,-208
ffffffffc0004938:	fca43823          	sd	a0,-48(s0)
ffffffffc000493c:	c0003537          	lui	a0,0xc0003
ffffffffc0004940:	4e850513          	addi	a0,a0,1256 # ffffffffc00034e8 <_ZN71_$LT$core..ops..range..Range$LT$Idx$GT$$u20$as$u20$core..fmt..Debug$GT$3fmt17h80950d3c25342576E>
ffffffffc0004944:	fca43423          	sd	a0,-56(s0)
ffffffffc0004948:	f6040513          	addi	a0,s0,-160
ffffffffc000494c:	fca43023          	sd	a0,-64(s0)
ffffffffc0004950:	c0006537          	lui	a0,0xc0006
ffffffffc0004954:	89050513          	addi	a0,a0,-1904 # ffffffffc0005890 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E>
ffffffffc0004958:	faa43c23          	sd	a0,-72(s0)
ffffffffc000495c:	f5c40513          	addi	a0,s0,-164
ffffffffc0004960:	faa43823          	sd	a0,-80(s0)
ffffffffc0004964:	c0004537          	lui	a0,0xc0004
ffffffffc0004968:	d5c50513          	addi	a0,a0,-676 # ffffffffc0003d5c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>
ffffffffc000496c:	faa43423          	sd	a0,-88(s0)
ffffffffc0004970:	f5040513          	addi	a0,s0,-176
ffffffffc0004974:	faa43023          	sd	a0,-96(s0)
ffffffffc0004978:	fa040513          	addi	a0,s0,-96
ffffffffc000497c:	f8a43823          	sd	a0,-112(s0)
ffffffffc0004980:	f8043023          	sd	zero,-128(s0)
ffffffffc0004984:	00500513          	li	a0,5
ffffffffc0004988:	f8a43c23          	sd	a0,-104(s0)
ffffffffc000498c:	f6a43c23          	sd	a0,-136(s0)
ffffffffc0004990:	c000b537          	lui	a0,0xc000b
ffffffffc0004994:	cc050513          	addi	a0,a0,-832 # ffffffffc000acc0 <.Lanon.a6c6970a6195885a2d31d2f1d9ea103b.35>
ffffffffc0004998:	f6a43823          	sd	a0,-144(s0)
ffffffffc000499c:	c000b537          	lui	a0,0xc000b
ffffffffc00049a0:	d1050593          	addi	a1,a0,-752 # ffffffffc000ad10 <.Lanon.a6c6970a6195885a2d31d2f1d9ea103b.36>
ffffffffc00049a4:	f7040513          	addi	a0,s0,-144
ffffffffc00049a8:	00000097          	auipc	ra,0x0
ffffffffc00049ac:	8ac080e7          	jalr	-1876(ra) # ffffffffc0004254 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>
ffffffffc00049b0:	ffffc097          	auipc	ra,0xffffc
ffffffffc00049b4:	6e0080e7          	jalr	1760(ra) # ffffffffc0001090 <abort>
ffffffffc00049b8:	00c5e463          	bltu	a1,a2,ffffffffc00049c0 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E+0x308>
ffffffffc00049bc:	00068613          	mv	a2,a3
ffffffffc00049c0:	f6c43023          	sd	a2,-160(s0)
ffffffffc00049c4:	f4040513          	addi	a0,s0,-192
ffffffffc00049c8:	fca43023          	sd	a0,-64(s0)
ffffffffc00049cc:	c0006537          	lui	a0,0xc0006
ffffffffc00049d0:	dfc50513          	addi	a0,a0,-516 # ffffffffc0005dfc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h949cc7e59610bfd8E>
ffffffffc00049d4:	fca43423          	sd	a0,-56(s0)
ffffffffc00049d8:	faa43c23          	sd	a0,-72(s0)
ffffffffc00049dc:	f3040513          	addi	a0,s0,-208
ffffffffc00049e0:	faa43823          	sd	a0,-80(s0)
ffffffffc00049e4:	c0004537          	lui	a0,0xc0004
ffffffffc00049e8:	d5c50513          	addi	a0,a0,-676 # ffffffffc0003d5c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>
ffffffffc00049ec:	faa43423          	sd	a0,-88(s0)
ffffffffc00049f0:	f6040513          	addi	a0,s0,-160
ffffffffc00049f4:	faa43023          	sd	a0,-96(s0)
ffffffffc00049f8:	fa040513          	addi	a0,s0,-96
ffffffffc00049fc:	f8a43823          	sd	a0,-112(s0)
ffffffffc0004a00:	f8043023          	sd	zero,-128(s0)
ffffffffc0004a04:	00300513          	li	a0,3
ffffffffc0004a08:	f8a43c23          	sd	a0,-104(s0)
ffffffffc0004a0c:	f6a43c23          	sd	a0,-136(s0)
ffffffffc0004a10:	c000b537          	lui	a0,0xc000b
ffffffffc0004a14:	b6850513          	addi	a0,a0,-1176 # ffffffffc000ab68 <.Lanon.a6c6970a6195885a2d31d2f1d9ea103b.24>
ffffffffc0004a18:	f6a43823          	sd	a0,-144(s0)
ffffffffc0004a1c:	c000b537          	lui	a0,0xc000b
ffffffffc0004a20:	c1050593          	addi	a1,a0,-1008 # ffffffffc000ac10 <.Lanon.a6c6970a6195885a2d31d2f1d9ea103b.26>
ffffffffc0004a24:	f7040513          	addi	a0,s0,-144
ffffffffc0004a28:	00000097          	auipc	ra,0x0
ffffffffc0004a2c:	82c080e7          	jalr	-2004(ra) # ffffffffc0004254 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>
ffffffffc0004a30:	ffffc097          	auipc	ra,0xffffc
ffffffffc0004a34:	660080e7          	jalr	1632(ra) # ffffffffc0001090 <abort>
ffffffffc0004a38:	f4040513          	addi	a0,s0,-192
ffffffffc0004a3c:	fca43823          	sd	a0,-48(s0)
ffffffffc0004a40:	c0006537          	lui	a0,0xc0006
ffffffffc0004a44:	dfc50513          	addi	a0,a0,-516 # ffffffffc0005dfc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h949cc7e59610bfd8E>
ffffffffc0004a48:	fca43c23          	sd	a0,-40(s0)
ffffffffc0004a4c:	fca43423          	sd	a0,-56(s0)
ffffffffc0004a50:	f3040513          	addi	a0,s0,-208
ffffffffc0004a54:	fca43023          	sd	a0,-64(s0)
ffffffffc0004a58:	f2840513          	addi	a0,s0,-216
ffffffffc0004a5c:	faa43823          	sd	a0,-80(s0)
ffffffffc0004a60:	c0004537          	lui	a0,0xc0004
ffffffffc0004a64:	d5c50513          	addi	a0,a0,-676 # ffffffffc0003d5c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>
ffffffffc0004a68:	faa43c23          	sd	a0,-72(s0)
ffffffffc0004a6c:	faa43423          	sd	a0,-88(s0)
ffffffffc0004a70:	f2040513          	addi	a0,s0,-224
ffffffffc0004a74:	faa43023          	sd	a0,-96(s0)
ffffffffc0004a78:	fa040513          	addi	a0,s0,-96
ffffffffc0004a7c:	f8a43823          	sd	a0,-112(s0)
ffffffffc0004a80:	f8043023          	sd	zero,-128(s0)
ffffffffc0004a84:	00400513          	li	a0,4
ffffffffc0004a88:	f8a43c23          	sd	a0,-104(s0)
ffffffffc0004a8c:	f6a43c23          	sd	a0,-136(s0)
ffffffffc0004a90:	c000b537          	lui	a0,0xc000b
ffffffffc0004a94:	c3850513          	addi	a0,a0,-968 # ffffffffc000ac38 <.Lanon.a6c6970a6195885a2d31d2f1d9ea103b.30>
ffffffffc0004a98:	f6a43823          	sd	a0,-144(s0)
ffffffffc0004a9c:	c000b537          	lui	a0,0xc000b
ffffffffc0004aa0:	c7850593          	addi	a1,a0,-904 # ffffffffc000ac78 <.Lanon.a6c6970a6195885a2d31d2f1d9ea103b.31>
ffffffffc0004aa4:	f7040513          	addi	a0,s0,-144
ffffffffc0004aa8:	fffff097          	auipc	ra,0xfffff
ffffffffc0004aac:	7ac080e7          	jalr	1964(ra) # ffffffffc0004254 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>
ffffffffc0004ab0:	ffffc097          	auipc	ra,0xffffc
ffffffffc0004ab4:	5e0080e7          	jalr	1504(ra) # ffffffffc0001090 <abort>

ffffffffc0004ab8 <_ZN4core5slice20slice_index_len_fail17h00876028ef412882E>:
ffffffffc0004ab8:	f9010113          	addi	sp,sp,-112
ffffffffc0004abc:	06113423          	sd	ra,104(sp)
ffffffffc0004ac0:	06813023          	sd	s0,96(sp)
ffffffffc0004ac4:	07010413          	addi	s0,sp,112
ffffffffc0004ac8:	f8b43c23          	sd	a1,-104(s0)
ffffffffc0004acc:	f8a43823          	sd	a0,-112(s0)
ffffffffc0004ad0:	f9840513          	addi	a0,s0,-104
ffffffffc0004ad4:	fea43023          	sd	a0,-32(s0)
ffffffffc0004ad8:	c0004537          	lui	a0,0xc0004
ffffffffc0004adc:	d5c50513          	addi	a0,a0,-676 # ffffffffc0003d5c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>
ffffffffc0004ae0:	fea43423          	sd	a0,-24(s0)
ffffffffc0004ae4:	fca43c23          	sd	a0,-40(s0)
ffffffffc0004ae8:	f9040513          	addi	a0,s0,-112
ffffffffc0004aec:	fca43823          	sd	a0,-48(s0)
ffffffffc0004af0:	fd040513          	addi	a0,s0,-48
ffffffffc0004af4:	fca43023          	sd	a0,-64(s0)
ffffffffc0004af8:	fa043823          	sd	zero,-80(s0)
ffffffffc0004afc:	00200513          	li	a0,2
ffffffffc0004b00:	fca43423          	sd	a0,-56(s0)
ffffffffc0004b04:	faa43423          	sd	a0,-88(s0)
ffffffffc0004b08:	c000b537          	lui	a0,0xc000b
ffffffffc0004b0c:	dc850513          	addi	a0,a0,-568 # ffffffffc000adc8 <.Lanon.95c827826308e5136436438cbae97c0b.53>
ffffffffc0004b10:	faa43023          	sd	a0,-96(s0)
ffffffffc0004b14:	c000b537          	lui	a0,0xc000b
ffffffffc0004b18:	de850593          	addi	a1,a0,-536 # ffffffffc000ade8 <.Lanon.95c827826308e5136436438cbae97c0b.54>
ffffffffc0004b1c:	fa040513          	addi	a0,s0,-96
ffffffffc0004b20:	fffff097          	auipc	ra,0xfffff
ffffffffc0004b24:	734080e7          	jalr	1844(ra) # ffffffffc0004254 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>
ffffffffc0004b28:	ffffc097          	auipc	ra,0xffffc
ffffffffc0004b2c:	568080e7          	jalr	1384(ra) # ffffffffc0001090 <abort>

ffffffffc0004b30 <_ZN4core5slice22slice_index_order_fail17h2c29e16eca0878c2E>:
ffffffffc0004b30:	f9010113          	addi	sp,sp,-112
ffffffffc0004b34:	06113423          	sd	ra,104(sp)
ffffffffc0004b38:	06813023          	sd	s0,96(sp)
ffffffffc0004b3c:	07010413          	addi	s0,sp,112
ffffffffc0004b40:	f8b43c23          	sd	a1,-104(s0)
ffffffffc0004b44:	f8a43823          	sd	a0,-112(s0)
ffffffffc0004b48:	f9840513          	addi	a0,s0,-104
ffffffffc0004b4c:	fea43023          	sd	a0,-32(s0)
ffffffffc0004b50:	c0004537          	lui	a0,0xc0004
ffffffffc0004b54:	d5c50513          	addi	a0,a0,-676 # ffffffffc0003d5c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>
ffffffffc0004b58:	fea43423          	sd	a0,-24(s0)
ffffffffc0004b5c:	fca43c23          	sd	a0,-40(s0)
ffffffffc0004b60:	f9040513          	addi	a0,s0,-112
ffffffffc0004b64:	fca43823          	sd	a0,-48(s0)
ffffffffc0004b68:	fd040513          	addi	a0,s0,-48
ffffffffc0004b6c:	fca43023          	sd	a0,-64(s0)
ffffffffc0004b70:	fa043823          	sd	zero,-80(s0)
ffffffffc0004b74:	00200513          	li	a0,2
ffffffffc0004b78:	fca43423          	sd	a0,-56(s0)
ffffffffc0004b7c:	faa43423          	sd	a0,-88(s0)
ffffffffc0004b80:	c000b537          	lui	a0,0xc000b
ffffffffc0004b84:	e2850513          	addi	a0,a0,-472 # ffffffffc000ae28 <.Lanon.95c827826308e5136436438cbae97c0b.57>
ffffffffc0004b88:	faa43023          	sd	a0,-96(s0)
ffffffffc0004b8c:	c000b537          	lui	a0,0xc000b
ffffffffc0004b90:	e4850593          	addi	a1,a0,-440 # ffffffffc000ae48 <.Lanon.95c827826308e5136436438cbae97c0b.58>
ffffffffc0004b94:	fa040513          	addi	a0,s0,-96
ffffffffc0004b98:	fffff097          	auipc	ra,0xfffff
ffffffffc0004b9c:	6bc080e7          	jalr	1724(ra) # ffffffffc0004254 <_ZN4core9panicking9panic_fmt17h3b5dd8d3bd5c5a1eE>
ffffffffc0004ba0:	ffffc097          	auipc	ra,0xffffc
ffffffffc0004ba4:	4f0080e7          	jalr	1264(ra) # ffffffffc0001090 <abort>

ffffffffc0004ba8 <_ZN4core3ptr18real_drop_in_place17hfe5616a219daf7b3E>:
ffffffffc0004ba8:	ff010113          	addi	sp,sp,-16
ffffffffc0004bac:	00113423          	sd	ra,8(sp)
ffffffffc0004bb0:	00813023          	sd	s0,0(sp)
ffffffffc0004bb4:	01010413          	addi	s0,sp,16
ffffffffc0004bb8:	00013403          	ld	s0,0(sp)
ffffffffc0004bbc:	00813083          	ld	ra,8(sp)
ffffffffc0004bc0:	01010113          	addi	sp,sp,16
ffffffffc0004bc4:	00008067          	ret

ffffffffc0004bc8 <_ZN4core3fmt10ArgumentV110show_usize17h0fc7316aa8f9cde8E.llvm.18115772582800530547>:
ffffffffc0004bc8:	ff010113          	addi	sp,sp,-16
ffffffffc0004bcc:	00113423          	sd	ra,8(sp)
ffffffffc0004bd0:	00813023          	sd	s0,0(sp)
ffffffffc0004bd4:	01010413          	addi	s0,sp,16
ffffffffc0004bd8:	00013403          	ld	s0,0(sp)
ffffffffc0004bdc:	00813083          	ld	ra,8(sp)
ffffffffc0004be0:	01010113          	addi	sp,sp,16
ffffffffc0004be4:	fffff317          	auipc	t1,0xfffff
ffffffffc0004be8:	17830067          	jr	376(t1) # ffffffffc0003d5c <_ZN4core3fmt3num3imp52_$LT$impl$u20$core..fmt..Display$u20$for$u20$u64$GT$3fmt17hb8206167231c062eE>

ffffffffc0004bec <_ZN4core3fmt5write17h62151e7ab9dfc071E>:
ffffffffc0004bec:	f3010113          	addi	sp,sp,-208
ffffffffc0004bf0:	0c113423          	sd	ra,200(sp)
ffffffffc0004bf4:	0c813023          	sd	s0,192(sp)
ffffffffc0004bf8:	0a913c23          	sd	s1,184(sp)
ffffffffc0004bfc:	0b213823          	sd	s2,176(sp)
ffffffffc0004c00:	0b313423          	sd	s3,168(sp)
ffffffffc0004c04:	0b413023          	sd	s4,160(sp)
ffffffffc0004c08:	09513c23          	sd	s5,152(sp)
ffffffffc0004c0c:	09613823          	sd	s6,144(sp)
ffffffffc0004c10:	09713423          	sd	s7,136(sp)
ffffffffc0004c14:	09813023          	sd	s8,128(sp)
ffffffffc0004c18:	07913c23          	sd	s9,120(sp)
ffffffffc0004c1c:	07a13823          	sd	s10,112(sp)
ffffffffc0004c20:	07b13423          	sd	s11,104(sp)
ffffffffc0004c24:	0d010413          	addi	s0,sp,208
ffffffffc0004c28:	02063b83          	ld	s7,32(a2)
ffffffffc0004c2c:	02863683          	ld	a3,40(a2)
ffffffffc0004c30:	00300a93          	li	s5,3
ffffffffc0004c34:	f9540823          	sb	s5,-112(s0)
ffffffffc0004c38:	00100b13          	li	s6,1
ffffffffc0004c3c:	025b1713          	slli	a4,s6,0x25
ffffffffc0004c40:	f8e43423          	sd	a4,-120(s0)
ffffffffc0004c44:	f6b43023          	sd	a1,-160(s0)
ffffffffc0004c48:	f4a43c23          	sd	a0,-168(s0)
ffffffffc0004c4c:	00469713          	slli	a4,a3,0x4
ffffffffc0004c50:	00eb8733          	add	a4,s7,a4
ffffffffc0004c54:	f6e43823          	sd	a4,-144(s0)
ffffffffc0004c58:	f8d43023          	sd	a3,-128(s0)
ffffffffc0004c5c:	f7743c23          	sd	s7,-136(s0)
ffffffffc0004c60:	f7743423          	sd	s7,-152(s0)
ffffffffc0004c64:	f4043423          	sd	zero,-184(s0)
ffffffffc0004c68:	f2043c23          	sd	zero,-200(s0)
ffffffffc0004c6c:	01063483          	ld	s1,16(a2)
ffffffffc0004c70:	1c048c63          	beqz	s1,ffffffffc0004e48 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x25c>
ffffffffc0004c74:	03ab1693          	slli	a3,s6,0x3a
ffffffffc0004c78:	fff68693          	addi	a3,a3,-1 # 1bffff <XLENb+0x1bffbf>
ffffffffc0004c7c:	01863703          	ld	a4,24(a2)
ffffffffc0004c80:	00d776b3          	and	a3,a4,a3
ffffffffc0004c84:	00863903          	ld	s2,8(a2)
ffffffffc0004c88:	00090b93          	mv	s7,s2
ffffffffc0004c8c:	00d96463          	bltu	s2,a3,ffffffffc0004c94 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0xa8>
ffffffffc0004c90:	00068b93          	mv	s7,a3
ffffffffc0004c94:	00063983          	ld	s3,0(a2)
ffffffffc0004c98:	220b8863          	beqz	s7,ffffffffc0004ec8 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x2dc>
ffffffffc0004c9c:	0185b683          	ld	a3,24(a1) # 110018 <XLENb+0x10ffd8>
ffffffffc0004ca0:	0089b603          	ld	a2,8(s3)
ffffffffc0004ca4:	0009b583          	ld	a1,0(s3)
ffffffffc0004ca8:	000680e7          	jalr	a3
ffffffffc0004cac:	24051463          	bnez	a0,ffffffffc0004ef4 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x308>
ffffffffc0004cb0:	01898c13          	addi	s8,s3,24
ffffffffc0004cb4:	02048493          	addi	s1,s1,32
ffffffffc0004cb8:	c0005537          	lui	a0,0xc0005
ffffffffc0004cbc:	bc850d13          	addi	s10,a0,-1080 # ffffffffc0004bc8 <_ZN4core3fmt10ArgumentV110show_usize17h0fc7316aa8f9cde8E.llvm.18115772582800530547>
ffffffffc0004cc0:	f3840a13          	addi	s4,s0,-200
ffffffffc0004cc4:	00200d93          	li	s11,2
ffffffffc0004cc8:	000b0c93          	mv	s9,s6
ffffffffc0004ccc:	0104a503          	lw	a0,16(s1)
ffffffffc0004cd0:	f8a42623          	sw	a0,-116(s0)
ffffffffc0004cd4:	01848503          	lb	a0,24(s1)
ffffffffc0004cd8:	f8a40823          	sb	a0,-112(s0)
ffffffffc0004cdc:	0144a503          	lw	a0,20(s1)
ffffffffc0004ce0:	f8a42423          	sw	a0,-120(s0)
ffffffffc0004ce4:	0084b583          	ld	a1,8(s1)
ffffffffc0004ce8:	0004b503          	ld	a0,0(s1)
ffffffffc0004cec:	03650a63          	beq	a0,s6,ffffffffc0004d20 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x134>
ffffffffc0004cf0:	01b50663          	beq	a0,s11,ffffffffc0004cfc <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x110>
ffffffffc0004cf4:	03550263          	beq	a0,s5,ffffffffc0004d18 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x12c>
ffffffffc0004cf8:	04c0006f          	j	ffffffffc0004d44 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x158>
ffffffffc0004cfc:	f6843503          	ld	a0,-152(s0)
ffffffffc0004d00:	f7043583          	ld	a1,-144(s0)
ffffffffc0004d04:	00b50a63          	beq	a0,a1,ffffffffc0004d18 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x12c>
ffffffffc0004d08:	01050593          	addi	a1,a0,16
ffffffffc0004d0c:	f6b43423          	sd	a1,-152(s0)
ffffffffc0004d10:	00853583          	ld	a1,8(a0)
ffffffffc0004d14:	03a58463          	beq	a1,s10,ffffffffc0004d3c <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x150>
ffffffffc0004d18:	00000513          	li	a0,0
ffffffffc0004d1c:	02c0006f          	j	ffffffffc0004d48 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x15c>
ffffffffc0004d20:	f8043603          	ld	a2,-128(s0)
ffffffffc0004d24:	22c5f863          	bgeu	a1,a2,ffffffffc0004f54 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x368>
ffffffffc0004d28:	00459513          	slli	a0,a1,0x4
ffffffffc0004d2c:	f7843583          	ld	a1,-136(s0)
ffffffffc0004d30:	00a58533          	add	a0,a1,a0
ffffffffc0004d34:	00853583          	ld	a1,8(a0)
ffffffffc0004d38:	ffa590e3          	bne	a1,s10,ffffffffc0004d18 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x12c>
ffffffffc0004d3c:	00053503          	ld	a0,0(a0)
ffffffffc0004d40:	00053583          	ld	a1,0(a0)
ffffffffc0004d44:	000b0513          	mv	a0,s6
ffffffffc0004d48:	f4b43023          	sd	a1,-192(s0)
ffffffffc0004d4c:	f2a43c23          	sd	a0,-200(s0)
ffffffffc0004d50:	ff84b583          	ld	a1,-8(s1)
ffffffffc0004d54:	ff04b503          	ld	a0,-16(s1)
ffffffffc0004d58:	05650e63          	beq	a0,s6,ffffffffc0004db4 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x1c8>
ffffffffc0004d5c:	01b50663          	beq	a0,s11,ffffffffc0004d68 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x17c>
ffffffffc0004d60:	03550263          	beq	a0,s5,ffffffffc0004d84 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x198>
ffffffffc0004d64:	0740006f          	j	ffffffffc0004dd8 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x1ec>
ffffffffc0004d68:	f6843503          	ld	a0,-152(s0)
ffffffffc0004d6c:	f7043583          	ld	a1,-144(s0)
ffffffffc0004d70:	00b50a63          	beq	a0,a1,ffffffffc0004d84 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x198>
ffffffffc0004d74:	01050593          	addi	a1,a0,16
ffffffffc0004d78:	f6b43423          	sd	a1,-152(s0)
ffffffffc0004d7c:	00853583          	ld	a1,8(a0)
ffffffffc0004d80:	05a58863          	beq	a1,s10,ffffffffc0004dd0 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x1e4>
ffffffffc0004d84:	00000513          	li	a0,0
ffffffffc0004d88:	f4b43823          	sd	a1,-176(s0)
ffffffffc0004d8c:	f4a43423          	sd	a0,-184(s0)
ffffffffc0004d90:	fe04b503          	ld	a0,-32(s1)
ffffffffc0004d94:	05651c63          	bne	a0,s6,ffffffffc0004dec <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x200>
ffffffffc0004d98:	fe84b583          	ld	a1,-24(s1)
ffffffffc0004d9c:	f8043603          	ld	a2,-128(s0)
ffffffffc0004da0:	18c5fe63          	bgeu	a1,a2,ffffffffc0004f3c <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x350>
ffffffffc0004da4:	00459513          	slli	a0,a1,0x4
ffffffffc0004da8:	f7843583          	ld	a1,-136(s0)
ffffffffc0004dac:	00a58533          	add	a0,a1,a0
ffffffffc0004db0:	0500006f          	j	ffffffffc0004e00 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x214>
ffffffffc0004db4:	f8043603          	ld	a2,-128(s0)
ffffffffc0004db8:	18c5fe63          	bgeu	a1,a2,ffffffffc0004f54 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x368>
ffffffffc0004dbc:	00459513          	slli	a0,a1,0x4
ffffffffc0004dc0:	f7843583          	ld	a1,-136(s0)
ffffffffc0004dc4:	00a58533          	add	a0,a1,a0
ffffffffc0004dc8:	00853583          	ld	a1,8(a0)
ffffffffc0004dcc:	fba59ce3          	bne	a1,s10,ffffffffc0004d84 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x198>
ffffffffc0004dd0:	00053503          	ld	a0,0(a0)
ffffffffc0004dd4:	00053583          	ld	a1,0(a0)
ffffffffc0004dd8:	000b0513          	mv	a0,s6
ffffffffc0004ddc:	f4b43823          	sd	a1,-176(s0)
ffffffffc0004de0:	f4a43423          	sd	a0,-184(s0)
ffffffffc0004de4:	fe04b503          	ld	a0,-32(s1)
ffffffffc0004de8:	fb6508e3          	beq	a0,s6,ffffffffc0004d98 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x1ac>
ffffffffc0004dec:	f6843503          	ld	a0,-152(s0)
ffffffffc0004df0:	f7043583          	ld	a1,-144(s0)
ffffffffc0004df4:	16b50c63          	beq	a0,a1,ffffffffc0004f6c <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x380>
ffffffffc0004df8:	01050593          	addi	a1,a0,16
ffffffffc0004dfc:	f6b43423          	sd	a1,-152(s0)
ffffffffc0004e00:	00850593          	addi	a1,a0,8
ffffffffc0004e04:	0005b603          	ld	a2,0(a1)
ffffffffc0004e08:	00053503          	ld	a0,0(a0)
ffffffffc0004e0c:	000a0593          	mv	a1,s4
ffffffffc0004e10:	000600e7          	jalr	a2
ffffffffc0004e14:	0e051063          	bnez	a0,ffffffffc0004ef4 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x308>
ffffffffc0004e18:	0b7cfa63          	bgeu	s9,s7,ffffffffc0004ecc <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x2e0>
ffffffffc0004e1c:	f6043503          	ld	a0,-160(s0)
ffffffffc0004e20:	01853683          	ld	a3,24(a0)
ffffffffc0004e24:	000c3603          	ld	a2,0(s8)
ffffffffc0004e28:	ff8c3583          	ld	a1,-8(s8)
ffffffffc0004e2c:	f5843503          	ld	a0,-168(s0)
ffffffffc0004e30:	000680e7          	jalr	a3
ffffffffc0004e34:	010c0c13          	addi	s8,s8,16
ffffffffc0004e38:	04048493          	addi	s1,s1,64
ffffffffc0004e3c:	001c8c93          	addi	s9,s9,1
ffffffffc0004e40:	e80506e3          	beqz	a0,ffffffffc0004ccc <_ZN4core3fmt5write17h62151e7ab9dfc071E+0xe0>
ffffffffc0004e44:	0b00006f          	j	ffffffffc0004ef4 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x308>
ffffffffc0004e48:	00863903          	ld	s2,8(a2)
ffffffffc0004e4c:	00090a93          	mv	s5,s2
ffffffffc0004e50:	00d96463          	bltu	s2,a3,ffffffffc0004e58 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x26c>
ffffffffc0004e54:	00068a93          	mv	s5,a3
ffffffffc0004e58:	00063983          	ld	s3,0(a2)
ffffffffc0004e5c:	060a8663          	beqz	s5,ffffffffc0004ec8 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x2dc>
ffffffffc0004e60:	0185b683          	ld	a3,24(a1)
ffffffffc0004e64:	0089b603          	ld	a2,8(s3)
ffffffffc0004e68:	0009b583          	ld	a1,0(s3)
ffffffffc0004e6c:	000680e7          	jalr	a3
ffffffffc0004e70:	08051263          	bnez	a0,ffffffffc0004ef4 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x308>
ffffffffc0004e74:	00100c93          	li	s9,1
ffffffffc0004e78:	f3840a13          	addi	s4,s0,-200
ffffffffc0004e7c:	00000493          	li	s1,0
ffffffffc0004e80:	009b85b3          	add	a1,s7,s1
ffffffffc0004e84:	0005b503          	ld	a0,0(a1)
ffffffffc0004e88:	0085b603          	ld	a2,8(a1)
ffffffffc0004e8c:	000a0593          	mv	a1,s4
ffffffffc0004e90:	000600e7          	jalr	a2
ffffffffc0004e94:	06051063          	bnez	a0,ffffffffc0004ef4 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x308>
ffffffffc0004e98:	035cfa63          	bgeu	s9,s5,ffffffffc0004ecc <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x2e0>
ffffffffc0004e9c:	00998533          	add	a0,s3,s1
ffffffffc0004ea0:	01853603          	ld	a2,24(a0)
ffffffffc0004ea4:	01053583          	ld	a1,16(a0)
ffffffffc0004ea8:	f6043503          	ld	a0,-160(s0)
ffffffffc0004eac:	01853683          	ld	a3,24(a0)
ffffffffc0004eb0:	f5843503          	ld	a0,-168(s0)
ffffffffc0004eb4:	000680e7          	jalr	a3
ffffffffc0004eb8:	01048493          	addi	s1,s1,16
ffffffffc0004ebc:	001c8c93          	addi	s9,s9,1
ffffffffc0004ec0:	fc0500e3          	beqz	a0,ffffffffc0004e80 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x294>
ffffffffc0004ec4:	0300006f          	j	ffffffffc0004ef4 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x308>
ffffffffc0004ec8:	00000c93          	li	s9,0
ffffffffc0004ecc:	032cf863          	bgeu	s9,s2,ffffffffc0004efc <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x310>
ffffffffc0004ed0:	004c9513          	slli	a0,s9,0x4
ffffffffc0004ed4:	00a98533          	add	a0,s3,a0
ffffffffc0004ed8:	00853603          	ld	a2,8(a0)
ffffffffc0004edc:	00053583          	ld	a1,0(a0)
ffffffffc0004ee0:	f6043503          	ld	a0,-160(s0)
ffffffffc0004ee4:	01853683          	ld	a3,24(a0)
ffffffffc0004ee8:	f5843503          	ld	a0,-168(s0)
ffffffffc0004eec:	000680e7          	jalr	a3
ffffffffc0004ef0:	00050663          	beqz	a0,ffffffffc0004efc <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x310>
ffffffffc0004ef4:	00100513          	li	a0,1
ffffffffc0004ef8:	0080006f          	j	ffffffffc0004f00 <_ZN4core3fmt5write17h62151e7ab9dfc071E+0x314>
ffffffffc0004efc:	00000513          	li	a0,0
ffffffffc0004f00:	06813d83          	ld	s11,104(sp)
ffffffffc0004f04:	07013d03          	ld	s10,112(sp)
ffffffffc0004f08:	07813c83          	ld	s9,120(sp)
ffffffffc0004f0c:	08013c03          	ld	s8,128(sp)
ffffffffc0004f10:	08813b83          	ld	s7,136(sp)
ffffffffc0004f14:	09013b03          	ld	s6,144(sp)
ffffffffc0004f18:	09813a83          	ld	s5,152(sp)
ffffffffc0004f1c:	0a013a03          	ld	s4,160(sp)
ffffffffc0004f20:	0a813983          	ld	s3,168(sp)
ffffffffc0004f24:	0b013903          	ld	s2,176(sp)
ffffffffc0004f28:	0b813483          	ld	s1,184(sp)
ffffffffc0004f2c:	0c013403          	ld	s0,192(sp)
ffffffffc0004f30:	0c813083          	ld	ra,200(sp)
ffffffffc0004f34:	0d010113          	addi	sp,sp,208
ffffffffc0004f38:	00008067          	ret
ffffffffc0004f3c:	c000b537          	lui	a0,0xc000b
ffffffffc0004f40:	fd850513          	addi	a0,a0,-40 # ffffffffc000afd8 <.Lanon.48f9e11bbce1b892091ea8507ea176ad.10>
ffffffffc0004f44:	fffff097          	auipc	ra,0xfffff
ffffffffc0004f48:	298080e7          	jalr	664(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0004f4c:	ffffc097          	auipc	ra,0xffffc
ffffffffc0004f50:	144080e7          	jalr	324(ra) # ffffffffc0001090 <abort>
ffffffffc0004f54:	c000b537          	lui	a0,0xc000b
ffffffffc0004f58:	ff050513          	addi	a0,a0,-16 # ffffffffc000aff0 <.Lanon.48f9e11bbce1b892091ea8507ea176ad.11>
ffffffffc0004f5c:	fffff097          	auipc	ra,0xfffff
ffffffffc0004f60:	280080e7          	jalr	640(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0004f64:	ffffc097          	auipc	ra,0xffffc
ffffffffc0004f68:	12c080e7          	jalr	300(ra) # ffffffffc0001090 <abort>
ffffffffc0004f6c:	c000b537          	lui	a0,0xc000b
ffffffffc0004f70:	f0050513          	addi	a0,a0,-256 # ffffffffc000af00 <.Lanon.48f9e11bbce1b892091ea8507ea176ad.8>
ffffffffc0004f74:	fffff097          	auipc	ra,0xfffff
ffffffffc0004f78:	1f4080e7          	jalr	500(ra) # ffffffffc0004168 <_ZN4core9panicking5panic17hd2bd6502c4755698E>
ffffffffc0004f7c:	ffffc097          	auipc	ra,0xffffc
ffffffffc0004f80:	114080e7          	jalr	276(ra) # ffffffffc0001090 <abort>

ffffffffc0004f84 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE>:
ffffffffc0004f84:	fa010113          	addi	sp,sp,-96
ffffffffc0004f88:	04113c23          	sd	ra,88(sp)
ffffffffc0004f8c:	04813823          	sd	s0,80(sp)
ffffffffc0004f90:	04913423          	sd	s1,72(sp)
ffffffffc0004f94:	05213023          	sd	s2,64(sp)
ffffffffc0004f98:	03313c23          	sd	s3,56(sp)
ffffffffc0004f9c:	03413823          	sd	s4,48(sp)
ffffffffc0004fa0:	03513423          	sd	s5,40(sp)
ffffffffc0004fa4:	03613023          	sd	s6,32(sp)
ffffffffc0004fa8:	01713c23          	sd	s7,24(sp)
ffffffffc0004fac:	01813823          	sd	s8,16(sp)
ffffffffc0004fb0:	01913423          	sd	s9,8(sp)
ffffffffc0004fb4:	01a13023          	sd	s10,0(sp)
ffffffffc0004fb8:	06010413          	addi	s0,sp,96
ffffffffc0004fbc:	00078913          	mv	s2,a5
ffffffffc0004fc0:	00070993          	mv	s3,a4
ffffffffc0004fc4:	00068a93          	mv	s5,a3
ffffffffc0004fc8:	00060b13          	mv	s6,a2
ffffffffc0004fcc:	00050d13          	mv	s10,a0
ffffffffc0004fd0:	04058c63          	beqz	a1,ffffffffc0005028 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0xa4>
ffffffffc0004fd4:	050d6503          	lwu	a0,80(s10) # 100050 <XLENb+0x100010>
ffffffffc0004fd8:	00157593          	andi	a1,a0,1
ffffffffc0004fdc:	0a058663          	beqz	a1,ffffffffc0005088 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x104>
ffffffffc0004fe0:	02b00b93          	li	s7,43
ffffffffc0004fe4:	01258c33          	add	s8,a1,s2
ffffffffc0004fe8:	00457593          	andi	a1,a0,4
ffffffffc0004fec:	04058863          	beqz	a1,ffffffffc000503c <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0xb8>
ffffffffc0004ff0:	0a0a8663          	beqz	s5,ffffffffc000509c <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x118>
ffffffffc0004ff4:	08000613          	li	a2,128
ffffffffc0004ff8:	000a8693          	mv	a3,s5
ffffffffc0004ffc:	00000593          	li	a1,0
ffffffffc0005000:	000b0713          	mv	a4,s6
ffffffffc0005004:	00074783          	lbu	a5,0(a4)
ffffffffc0005008:	0c07f793          	andi	a5,a5,192
ffffffffc000500c:	00c7c7b3          	xor	a5,a5,a2
ffffffffc0005010:	0017b793          	seqz	a5,a5
ffffffffc0005014:	00f585b3          	add	a1,a1,a5
ffffffffc0005018:	00170713          	addi	a4,a4,1
ffffffffc000501c:	fff68693          	addi	a3,a3,-1
ffffffffc0005020:	fe0692e3          	bnez	a3,ffffffffc0005004 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x80>
ffffffffc0005024:	07c0006f          	j	ffffffffc00050a0 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x11c>
ffffffffc0005028:	02d00b93          	li	s7,45
ffffffffc000502c:	050d6503          	lwu	a0,80(s10)
ffffffffc0005030:	00190c13          	addi	s8,s2,1
ffffffffc0005034:	00457593          	andi	a1,a0,4
ffffffffc0005038:	fa059ce3          	bnez	a1,ffffffffc0004ff0 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x6c>
ffffffffc000503c:	00000b13          	li	s6,0
ffffffffc0005040:	000d3583          	ld	a1,0(s10)
ffffffffc0005044:	00100a13          	li	s4,1
ffffffffc0005048:	07459663          	bne	a1,s4,ffffffffc00050b4 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x130>
ffffffffc000504c:	008d3c83          	ld	s9,8(s10)
ffffffffc0005050:	079c7263          	bgeu	s8,s9,ffffffffc00050b4 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x130>
ffffffffc0005054:	00857513          	andi	a0,a0,8
ffffffffc0005058:	0c051863          	bnez	a0,ffffffffc0005128 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x1a4>
ffffffffc000505c:	058d4503          	lbu	a0,88(s10)
ffffffffc0005060:	00300593          	li	a1,3
ffffffffc0005064:	00b51463          	bne	a0,a1,ffffffffc000506c <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0xe8>
ffffffffc0005068:	00100513          	li	a0,1
ffffffffc000506c:	418c8c33          	sub	s8,s9,s8
ffffffffc0005070:	00357593          	andi	a1,a0,3
ffffffffc0005074:	10058663          	beqz	a1,ffffffffc0005180 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x1fc>
ffffffffc0005078:	00200593          	li	a1,2
ffffffffc000507c:	10b50863          	beq	a0,a1,ffffffffc000518c <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x208>
ffffffffc0005080:	00000c93          	li	s9,0
ffffffffc0005084:	1180006f          	j	ffffffffc000519c <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x218>
ffffffffc0005088:	00110bb7          	lui	s7,0x110
ffffffffc000508c:	01258c33          	add	s8,a1,s2
ffffffffc0005090:	00457593          	andi	a1,a0,4
ffffffffc0005094:	f4059ee3          	bnez	a1,ffffffffc0004ff0 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x6c>
ffffffffc0005098:	fa5ff06f          	j	ffffffffc000503c <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0xb8>
ffffffffc000509c:	00000593          	li	a1,0
ffffffffc00050a0:	015c0633          	add	a2,s8,s5
ffffffffc00050a4:	40b60c33          	sub	s8,a2,a1
ffffffffc00050a8:	000d3583          	ld	a1,0(s10)
ffffffffc00050ac:	00100a13          	li	s4,1
ffffffffc00050b0:	f9458ee3          	beq	a1,s4,ffffffffc000504c <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0xc8>
ffffffffc00050b4:	000d0513          	mv	a0,s10
ffffffffc00050b8:	000b8593          	mv	a1,s7
ffffffffc00050bc:	000b0613          	mv	a2,s6
ffffffffc00050c0:	000a8693          	mv	a3,s5
ffffffffc00050c4:	00000097          	auipc	ra,0x0
ffffffffc00050c8:	208080e7          	jalr	520(ra) # ffffffffc00052cc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E>
ffffffffc00050cc:	02051063          	bnez	a0,ffffffffc00050ec <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc00050d0:	020d3503          	ld	a0,32(s10)
ffffffffc00050d4:	028d3583          	ld	a1,40(s10)
ffffffffc00050d8:	0185b683          	ld	a3,24(a1)
ffffffffc00050dc:	00098593          	mv	a1,s3
ffffffffc00050e0:	00090613          	mv	a2,s2
ffffffffc00050e4:	000680e7          	jalr	a3
ffffffffc00050e8:	00050a13          	mv	s4,a0
ffffffffc00050ec:	000a0513          	mv	a0,s4
ffffffffc00050f0:	00013d03          	ld	s10,0(sp)
ffffffffc00050f4:	00813c83          	ld	s9,8(sp)
ffffffffc00050f8:	01013c03          	ld	s8,16(sp)
ffffffffc00050fc:	01813b83          	ld	s7,24(sp)
ffffffffc0005100:	02013b03          	ld	s6,32(sp)
ffffffffc0005104:	02813a83          	ld	s5,40(sp)
ffffffffc0005108:	03013a03          	ld	s4,48(sp)
ffffffffc000510c:	03813983          	ld	s3,56(sp)
ffffffffc0005110:	04013903          	ld	s2,64(sp)
ffffffffc0005114:	04813483          	ld	s1,72(sp)
ffffffffc0005118:	05013403          	ld	s0,80(sp)
ffffffffc000511c:	05813083          	ld	ra,88(sp)
ffffffffc0005120:	06010113          	addi	sp,sp,96
ffffffffc0005124:	00008067          	ret
ffffffffc0005128:	03000513          	li	a0,48
ffffffffc000512c:	04ad2a23          	sw	a0,84(s10)
ffffffffc0005130:	00100a13          	li	s4,1
ffffffffc0005134:	054d0c23          	sb	s4,88(s10)
ffffffffc0005138:	000d0513          	mv	a0,s10
ffffffffc000513c:	000b8593          	mv	a1,s7
ffffffffc0005140:	000b0613          	mv	a2,s6
ffffffffc0005144:	000a8693          	mv	a3,s5
ffffffffc0005148:	00000097          	auipc	ra,0x0
ffffffffc000514c:	184080e7          	jalr	388(ra) # ffffffffc00052cc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E>
ffffffffc0005150:	f8051ee3          	bnez	a0,ffffffffc00050ec <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc0005154:	058d4503          	lbu	a0,88(s10)
ffffffffc0005158:	00300593          	li	a1,3
ffffffffc000515c:	00b51463          	bne	a0,a1,ffffffffc0005164 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x1e0>
ffffffffc0005160:	00100513          	li	a0,1
ffffffffc0005164:	418c8ab3          	sub	s5,s9,s8
ffffffffc0005168:	00357593          	andi	a1,a0,3
ffffffffc000516c:	0c058263          	beqz	a1,ffffffffc0005230 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x2ac>
ffffffffc0005170:	00200593          	li	a1,2
ffffffffc0005174:	0cb50463          	beq	a0,a1,ffffffffc000523c <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x2b8>
ffffffffc0005178:	00000b13          	li	s6,0
ffffffffc000517c:	0d00006f          	j	ffffffffc000524c <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x2c8>
ffffffffc0005180:	000c0c93          	mv	s9,s8
ffffffffc0005184:	00000c13          	li	s8,0
ffffffffc0005188:	0140006f          	j	ffffffffc000519c <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x218>
ffffffffc000518c:	001c5513          	srli	a0,s8,0x1
ffffffffc0005190:	001c0593          	addi	a1,s8,1
ffffffffc0005194:	0015dc93          	srli	s9,a1,0x1
ffffffffc0005198:	00050c13          	mv	s8,a0
ffffffffc000519c:	fff00493          	li	s1,-1
ffffffffc00051a0:	00100a13          	li	s4,1
ffffffffc00051a4:	00148493          	addi	s1,s1,1
ffffffffc00051a8:	0384f063          	bgeu	s1,s8,ffffffffc00051c8 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x244>
ffffffffc00051ac:	054d2583          	lw	a1,84(s10)
ffffffffc00051b0:	020d3503          	ld	a0,32(s10)
ffffffffc00051b4:	028d3603          	ld	a2,40(s10)
ffffffffc00051b8:	02063603          	ld	a2,32(a2)
ffffffffc00051bc:	000600e7          	jalr	a2
ffffffffc00051c0:	fe0502e3          	beqz	a0,ffffffffc00051a4 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x220>
ffffffffc00051c4:	f29ff06f          	j	ffffffffc00050ec <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc00051c8:	054d6c03          	lwu	s8,84(s10)
ffffffffc00051cc:	000d0513          	mv	a0,s10
ffffffffc00051d0:	000b8593          	mv	a1,s7
ffffffffc00051d4:	000b0613          	mv	a2,s6
ffffffffc00051d8:	000a8693          	mv	a3,s5
ffffffffc00051dc:	00000097          	auipc	ra,0x0
ffffffffc00051e0:	0f0080e7          	jalr	240(ra) # ffffffffc00052cc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E>
ffffffffc00051e4:	f00514e3          	bnez	a0,ffffffffc00050ec <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc00051e8:	020d3503          	ld	a0,32(s10)
ffffffffc00051ec:	028d3583          	ld	a1,40(s10)
ffffffffc00051f0:	0185b683          	ld	a3,24(a1)
ffffffffc00051f4:	00098593          	mv	a1,s3
ffffffffc00051f8:	00090613          	mv	a2,s2
ffffffffc00051fc:	000680e7          	jalr	a3
ffffffffc0005200:	ee0516e3          	bnez	a0,ffffffffc00050ec <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc0005204:	fff00493          	li	s1,-1
ffffffffc0005208:	028d3983          	ld	s3,40(s10)
ffffffffc000520c:	020d3903          	ld	s2,32(s10)
ffffffffc0005210:	00148493          	addi	s1,s1,1
ffffffffc0005214:	0b94f863          	bgeu	s1,s9,ffffffffc00052c4 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x340>
ffffffffc0005218:	0209b603          	ld	a2,32(s3)
ffffffffc000521c:	00090513          	mv	a0,s2
ffffffffc0005220:	000c0593          	mv	a1,s8
ffffffffc0005224:	000600e7          	jalr	a2
ffffffffc0005228:	fe0504e3          	beqz	a0,ffffffffc0005210 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x28c>
ffffffffc000522c:	ec1ff06f          	j	ffffffffc00050ec <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc0005230:	000a8b13          	mv	s6,s5
ffffffffc0005234:	00000a93          	li	s5,0
ffffffffc0005238:	0140006f          	j	ffffffffc000524c <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x2c8>
ffffffffc000523c:	001ad513          	srli	a0,s5,0x1
ffffffffc0005240:	001a8593          	addi	a1,s5,1
ffffffffc0005244:	0015db13          	srli	s6,a1,0x1
ffffffffc0005248:	00050a93          	mv	s5,a0
ffffffffc000524c:	fff00493          	li	s1,-1
ffffffffc0005250:	00100a13          	li	s4,1
ffffffffc0005254:	00148493          	addi	s1,s1,1
ffffffffc0005258:	0354f063          	bgeu	s1,s5,ffffffffc0005278 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x2f4>
ffffffffc000525c:	054d2583          	lw	a1,84(s10)
ffffffffc0005260:	020d3503          	ld	a0,32(s10)
ffffffffc0005264:	028d3603          	ld	a2,40(s10)
ffffffffc0005268:	02063603          	ld	a2,32(a2)
ffffffffc000526c:	000600e7          	jalr	a2
ffffffffc0005270:	fe0502e3          	beqz	a0,ffffffffc0005254 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x2d0>
ffffffffc0005274:	e79ff06f          	j	ffffffffc00050ec <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc0005278:	054d6a83          	lwu	s5,84(s10)
ffffffffc000527c:	020d3503          	ld	a0,32(s10)
ffffffffc0005280:	028d3583          	ld	a1,40(s10)
ffffffffc0005284:	0185b683          	ld	a3,24(a1)
ffffffffc0005288:	00098593          	mv	a1,s3
ffffffffc000528c:	00090613          	mv	a2,s2
ffffffffc0005290:	000680e7          	jalr	a3
ffffffffc0005294:	e4051ce3          	bnez	a0,ffffffffc00050ec <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc0005298:	fff00493          	li	s1,-1
ffffffffc000529c:	028d3983          	ld	s3,40(s10)
ffffffffc00052a0:	020d3903          	ld	s2,32(s10)
ffffffffc00052a4:	00148493          	addi	s1,s1,1
ffffffffc00052a8:	0164fe63          	bgeu	s1,s6,ffffffffc00052c4 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x340>
ffffffffc00052ac:	0209b603          	ld	a2,32(s3)
ffffffffc00052b0:	00090513          	mv	a0,s2
ffffffffc00052b4:	000a8593          	mv	a1,s5
ffffffffc00052b8:	000600e7          	jalr	a2
ffffffffc00052bc:	fe0504e3          	beqz	a0,ffffffffc00052a4 <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x320>
ffffffffc00052c0:	e2dff06f          	j	ffffffffc00050ec <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>
ffffffffc00052c4:	00000a13          	li	s4,0
ffffffffc00052c8:	e25ff06f          	j	ffffffffc00050ec <_ZN4core3fmt9Formatter12pad_integral17h457343cb9adfd01bE+0x168>

ffffffffc00052cc <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E>:
ffffffffc00052cc:	fd010113          	addi	sp,sp,-48
ffffffffc00052d0:	02113423          	sd	ra,40(sp)
ffffffffc00052d4:	02813023          	sd	s0,32(sp)
ffffffffc00052d8:	00913c23          	sd	s1,24(sp)
ffffffffc00052dc:	01213823          	sd	s2,16(sp)
ffffffffc00052e0:	01313423          	sd	s3,8(sp)
ffffffffc00052e4:	03010413          	addi	s0,sp,48
ffffffffc00052e8:	00068913          	mv	s2,a3
ffffffffc00052ec:	00060993          	mv	s3,a2
ffffffffc00052f0:	00050493          	mv	s1,a0
ffffffffc00052f4:	02059513          	slli	a0,a1,0x20
ffffffffc00052f8:	02055513          	srli	a0,a0,0x20
ffffffffc00052fc:	00110637          	lui	a2,0x110
ffffffffc0005300:	02c50063          	beq	a0,a2,ffffffffc0005320 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E+0x54>
ffffffffc0005304:	0204b503          	ld	a0,32(s1)
ffffffffc0005308:	0284b603          	ld	a2,40(s1)
ffffffffc000530c:	02063603          	ld	a2,32(a2) # 110020 <XLENb+0x10ffe0>
ffffffffc0005310:	000600e7          	jalr	a2
ffffffffc0005314:	00050663          	beqz	a0,ffffffffc0005320 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E+0x54>
ffffffffc0005318:	00100513          	li	a0,1
ffffffffc000531c:	0280006f          	j	ffffffffc0005344 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E+0x78>
ffffffffc0005320:	02098063          	beqz	s3,ffffffffc0005340 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E+0x74>
ffffffffc0005324:	0204b503          	ld	a0,32(s1)
ffffffffc0005328:	0284b583          	ld	a1,40(s1)
ffffffffc000532c:	0185b683          	ld	a3,24(a1)
ffffffffc0005330:	00098593          	mv	a1,s3
ffffffffc0005334:	00090613          	mv	a2,s2
ffffffffc0005338:	000680e7          	jalr	a3
ffffffffc000533c:	0080006f          	j	ffffffffc0005344 <_ZN4core3fmt9Formatter12pad_integral12write_prefix17headef16ba912a032E+0x78>
ffffffffc0005340:	00000513          	li	a0,0
ffffffffc0005344:	00813983          	ld	s3,8(sp)
ffffffffc0005348:	01013903          	ld	s2,16(sp)
ffffffffc000534c:	01813483          	ld	s1,24(sp)
ffffffffc0005350:	02013403          	ld	s0,32(sp)
ffffffffc0005354:	02813083          	ld	ra,40(sp)
ffffffffc0005358:	03010113          	addi	sp,sp,48
ffffffffc000535c:	00008067          	ret

ffffffffc0005360 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E>:
ffffffffc0005360:	fb010113          	addi	sp,sp,-80
ffffffffc0005364:	04113423          	sd	ra,72(sp)
ffffffffc0005368:	04813023          	sd	s0,64(sp)
ffffffffc000536c:	02913c23          	sd	s1,56(sp)
ffffffffc0005370:	03213823          	sd	s2,48(sp)
ffffffffc0005374:	03313423          	sd	s3,40(sp)
ffffffffc0005378:	03413023          	sd	s4,32(sp)
ffffffffc000537c:	01513c23          	sd	s5,24(sp)
ffffffffc0005380:	01613823          	sd	s6,16(sp)
ffffffffc0005384:	01713423          	sd	s7,8(sp)
ffffffffc0005388:	05010413          	addi	s0,sp,80
ffffffffc000538c:	00060a13          	mv	s4,a2
ffffffffc0005390:	00058993          	mv	s3,a1
ffffffffc0005394:	00050b93          	mv	s7,a0
ffffffffc0005398:	01053503          	ld	a0,16(a0)
ffffffffc000539c:	000bb383          	ld	t2,0(s7) # 110000 <XLENb+0x10ffc0>
ffffffffc00053a0:	00100913          	li	s2,1
ffffffffc00053a4:	01239863          	bne	t2,s2,ffffffffc00053b4 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x54>
ffffffffc00053a8:	00100593          	li	a1,1
ffffffffc00053ac:	00b50663          	beq	a0,a1,ffffffffc00053b8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x58>
ffffffffc00053b0:	12c0006f          	j	ffffffffc00054dc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x17c>
ffffffffc00053b4:	25251263          	bne	a0,s2,ffffffffc00055f8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x298>
ffffffffc00053b8:	100a0c63          	beqz	s4,ffffffffc00054d0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x170>
ffffffffc00053bc:	014984b3          	add	s1,s3,s4
ffffffffc00053c0:	018bb603          	ld	a2,24(s7)
ffffffffc00053c4:	00198793          	addi	a5,s3,1
ffffffffc00053c8:	00098503          	lb	a0,0(s3)
ffffffffc00053cc:	1c054663          	bltz	a0,ffffffffc0005598 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x238>
ffffffffc00053d0:	20060263          	beqz	a2,ffffffffc00055d4 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x274>
ffffffffc00053d4:	41378533          	sub	a0,a5,s3
ffffffffc00053d8:	0e000313          	li	t1,224
ffffffffc00053dc:	0f000813          	li	a6,240
ffffffffc00053e0:	001c08b7          	lui	a7,0x1c0
ffffffffc00053e4:	001102b7          	lui	t0,0x110
ffffffffc00053e8:	20f48463          	beq	s1,a5,ffffffffc00055f0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x290>
ffffffffc00053ec:	00050713          	mv	a4,a0
ffffffffc00053f0:	00078693          	mv	a3,a5
ffffffffc00053f4:	00178793          	addi	a5,a5,1
ffffffffc00053f8:	00068503          	lb	a0,0(a3)
ffffffffc00053fc:	00054c63          	bltz	a0,ffffffffc0005414 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xb4>
ffffffffc0005400:	fff60613          	addi	a2,a2,-1
ffffffffc0005404:	40d70533          	sub	a0,a4,a3
ffffffffc0005408:	00f50533          	add	a0,a0,a5
ffffffffc000540c:	fc061ee3          	bnez	a2,ffffffffc00053e8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x88>
ffffffffc0005410:	0980006f          	j	ffffffffc00054a8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x148>
ffffffffc0005414:	0ff57513          	andi	a0,a0,255
ffffffffc0005418:	04978863          	beq	a5,s1,ffffffffc0005468 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x108>
ffffffffc000541c:	00268793          	addi	a5,a3,2
ffffffffc0005420:	0016c583          	lbu	a1,1(a3)
ffffffffc0005424:	03f5fe13          	andi	t3,a1,63
ffffffffc0005428:	00078593          	mv	a1,a5
ffffffffc000542c:	fc656ae3          	bltu	a0,t1,ffffffffc0005400 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xa0>
ffffffffc0005430:	04958463          	beq	a1,s1,ffffffffc0005478 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x118>
ffffffffc0005434:	00158793          	addi	a5,a1,1
ffffffffc0005438:	0005c583          	lbu	a1,0(a1)
ffffffffc000543c:	03f5fe93          	andi	t4,a1,63
ffffffffc0005440:	00078593          	mv	a1,a5
ffffffffc0005444:	fb056ee3          	bltu	a0,a6,ffffffffc0005400 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xa0>
ffffffffc0005448:	01f57f13          	andi	t5,a0,31
ffffffffc000544c:	006e1513          	slli	a0,t3,0x6
ffffffffc0005450:	00aeee33          	or	t3,t4,a0
ffffffffc0005454:	02958a63          	beq	a1,s1,ffffffffc0005488 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x128>
ffffffffc0005458:	00158793          	addi	a5,a1,1
ffffffffc000545c:	0005c503          	lbu	a0,0(a1)
ffffffffc0005460:	03f57e93          	andi	t4,a0,63
ffffffffc0005464:	0280006f          	j	ffffffffc000548c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x12c>
ffffffffc0005468:	00048593          	mv	a1,s1
ffffffffc000546c:	00000e13          	li	t3,0
ffffffffc0005470:	fc6570e3          	bgeu	a0,t1,ffffffffc0005430 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xd0>
ffffffffc0005474:	f8dff06f          	j	ffffffffc0005400 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xa0>
ffffffffc0005478:	00048593          	mv	a1,s1
ffffffffc000547c:	00000e93          	li	t4,0
ffffffffc0005480:	fd0574e3          	bgeu	a0,a6,ffffffffc0005448 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xe8>
ffffffffc0005484:	f7dff06f          	j	ffffffffc0005400 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xa0>
ffffffffc0005488:	00000e93          	li	t4,0
ffffffffc000548c:	012f1513          	slli	a0,t5,0x12
ffffffffc0005490:	01157533          	and	a0,a0,a7
ffffffffc0005494:	006e1593          	slli	a1,t3,0x6
ffffffffc0005498:	00a5e533          	or	a0,a1,a0
ffffffffc000549c:	01d56533          	or	a0,a0,t4
ffffffffc00054a0:	f65510e3          	bne	a0,t0,ffffffffc0005400 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0xa0>
ffffffffc00054a4:	14c0006f          	j	ffffffffc00055f0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x290>
ffffffffc00054a8:	12070a63          	beqz	a4,ffffffffc00055dc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x27c>
ffffffffc00054ac:	13470863          	beq	a4,s4,ffffffffc00055dc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x27c>
ffffffffc00054b0:	01477a63          	bgeu	a4,s4,ffffffffc00054c4 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x164>
ffffffffc00054b4:	00e98533          	add	a0,s3,a4
ffffffffc00054b8:	00050503          	lb	a0,0(a0)
ffffffffc00054bc:	fc000593          	li	a1,-64
ffffffffc00054c0:	10b55e63          	bge	a0,a1,ffffffffc00055dc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x27c>
ffffffffc00054c4:	00000513          	li	a0,0
ffffffffc00054c8:	10051e63          	bnez	a0,ffffffffc00055e4 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x284>
ffffffffc00054cc:	11c0006f          	j	ffffffffc00055e8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x288>
ffffffffc00054d0:	00000a13          	li	s4,0
ffffffffc00054d4:	00100513          	li	a0,1
ffffffffc00054d8:	12a39063          	bne	t2,a0,ffffffffc00055f8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x298>
ffffffffc00054dc:	0a0a0463          	beqz	s4,ffffffffc0005584 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x224>
ffffffffc00054e0:	08000593          	li	a1,128
ffffffffc00054e4:	000a0613          	mv	a2,s4
ffffffffc00054e8:	00000513          	li	a0,0
ffffffffc00054ec:	00098693          	mv	a3,s3
ffffffffc00054f0:	0006c703          	lbu	a4,0(a3)
ffffffffc00054f4:	0c077713          	andi	a4,a4,192
ffffffffc00054f8:	00b74733          	xor	a4,a4,a1
ffffffffc00054fc:	00173713          	seqz	a4,a4
ffffffffc0005500:	00e50533          	add	a0,a0,a4
ffffffffc0005504:	00168693          	addi	a3,a3,1
ffffffffc0005508:	fff60613          	addi	a2,a2,-1
ffffffffc000550c:	fe0612e3          	bnez	a2,ffffffffc00054f0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x190>
ffffffffc0005510:	40aa05b3          	sub	a1,s4,a0
ffffffffc0005514:	008bb503          	ld	a0,8(s7)
ffffffffc0005518:	0ea5f063          	bgeu	a1,a0,ffffffffc00055f8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x298>
ffffffffc000551c:	120a0463          	beqz	s4,ffffffffc0005644 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x2e4>
ffffffffc0005520:	08000613          	li	a2,128
ffffffffc0005524:	000a0693          	mv	a3,s4
ffffffffc0005528:	00000593          	li	a1,0
ffffffffc000552c:	00098713          	mv	a4,s3
ffffffffc0005530:	00074783          	lbu	a5,0(a4)
ffffffffc0005534:	0c07f793          	andi	a5,a5,192
ffffffffc0005538:	00c7c7b3          	xor	a5,a5,a2
ffffffffc000553c:	0017b793          	seqz	a5,a5
ffffffffc0005540:	00f585b3          	add	a1,a1,a5
ffffffffc0005544:	00170713          	addi	a4,a4,1
ffffffffc0005548:	fff68693          	addi	a3,a3,-1
ffffffffc000554c:	fe0692e3          	bnez	a3,ffffffffc0005530 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x1d0>
ffffffffc0005550:	058bc683          	lbu	a3,88(s7)
ffffffffc0005554:	00300713          	li	a4,3
ffffffffc0005558:	00000613          	li	a2,0
ffffffffc000555c:	00e68463          	beq	a3,a4,ffffffffc0005564 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x204>
ffffffffc0005560:	00068613          	mv	a2,a3
ffffffffc0005564:	414585b3          	sub	a1,a1,s4
ffffffffc0005568:	00a58ab3          	add	s5,a1,a0
ffffffffc000556c:	00367513          	andi	a0,a2,3
ffffffffc0005570:	0e050663          	beqz	a0,ffffffffc000565c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x2fc>
ffffffffc0005574:	00200513          	li	a0,2
ffffffffc0005578:	0ea60863          	beq	a2,a0,ffffffffc0005668 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x308>
ffffffffc000557c:	00000b13          	li	s6,0
ffffffffc0005580:	0f80006f          	j	ffffffffc0005678 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x318>
ffffffffc0005584:	00000513          	li	a0,0
ffffffffc0005588:	40aa05b3          	sub	a1,s4,a0
ffffffffc000558c:	008bb503          	ld	a0,8(s7)
ffffffffc0005590:	f8a5e6e3          	bltu	a1,a0,ffffffffc000551c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x1bc>
ffffffffc0005594:	0640006f          	j	ffffffffc00055f8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x298>
ffffffffc0005598:	0ff57693          	andi	a3,a0,255
ffffffffc000559c:	00100513          	li	a0,1
ffffffffc00055a0:	14aa1663          	bne	s4,a0,ffffffffc00056ec <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x38c>
ffffffffc00055a4:	00048593          	mv	a1,s1
ffffffffc00055a8:	00000513          	li	a0,0
ffffffffc00055ac:	0e000713          	li	a4,224
ffffffffc00055b0:	e2e6e0e3          	bltu	a3,a4,ffffffffc00053d0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x70>
ffffffffc00055b4:	14958e63          	beq	a1,s1,ffffffffc0005710 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x3b0>
ffffffffc00055b8:	00158793          	addi	a5,a1,1
ffffffffc00055bc:	0005c583          	lbu	a1,0(a1)
ffffffffc00055c0:	03f5f813          	andi	a6,a1,63
ffffffffc00055c4:	00078713          	mv	a4,a5
ffffffffc00055c8:	0f000593          	li	a1,240
ffffffffc00055cc:	14b6fa63          	bgeu	a3,a1,ffffffffc0005720 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x3c0>
ffffffffc00055d0:	e01ff06f          	j	ffffffffc00053d0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x70>
ffffffffc00055d4:	00000713          	li	a4,0
ffffffffc00055d8:	ec071ae3          	bnez	a4,ffffffffc00054ac <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x14c>
ffffffffc00055dc:	00098513          	mv	a0,s3
ffffffffc00055e0:	00050463          	beqz	a0,ffffffffc00055e8 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x288>
ffffffffc00055e4:	00070a13          	mv	s4,a4
ffffffffc00055e8:	00050463          	beqz	a0,ffffffffc00055f0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x290>
ffffffffc00055ec:	00050993          	mv	s3,a0
ffffffffc00055f0:	00100513          	li	a0,1
ffffffffc00055f4:	eea384e3          	beq	t2,a0,ffffffffc00054dc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x17c>
ffffffffc00055f8:	020bb503          	ld	a0,32(s7)
ffffffffc00055fc:	028bb583          	ld	a1,40(s7)
ffffffffc0005600:	0185b683          	ld	a3,24(a1)
ffffffffc0005604:	00098593          	mv	a1,s3
ffffffffc0005608:	000a0613          	mv	a2,s4
ffffffffc000560c:	000680e7          	jalr	a3
ffffffffc0005610:	00050913          	mv	s2,a0
ffffffffc0005614:	00090513          	mv	a0,s2
ffffffffc0005618:	00813b83          	ld	s7,8(sp)
ffffffffc000561c:	01013b03          	ld	s6,16(sp)
ffffffffc0005620:	01813a83          	ld	s5,24(sp)
ffffffffc0005624:	02013a03          	ld	s4,32(sp)
ffffffffc0005628:	02813983          	ld	s3,40(sp)
ffffffffc000562c:	03013903          	ld	s2,48(sp)
ffffffffc0005630:	03813483          	ld	s1,56(sp)
ffffffffc0005634:	04013403          	ld	s0,64(sp)
ffffffffc0005638:	04813083          	ld	ra,72(sp)
ffffffffc000563c:	05010113          	addi	sp,sp,80
ffffffffc0005640:	00008067          	ret
ffffffffc0005644:	00000593          	li	a1,0
ffffffffc0005648:	058bc683          	lbu	a3,88(s7)
ffffffffc000564c:	00300713          	li	a4,3
ffffffffc0005650:	00000613          	li	a2,0
ffffffffc0005654:	f0e696e3          	bne	a3,a4,ffffffffc0005560 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x200>
ffffffffc0005658:	f0dff06f          	j	ffffffffc0005564 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x204>
ffffffffc000565c:	000a8b13          	mv	s6,s5
ffffffffc0005660:	00000a93          	li	s5,0
ffffffffc0005664:	0140006f          	j	ffffffffc0005678 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x318>
ffffffffc0005668:	001ad513          	srli	a0,s5,0x1
ffffffffc000566c:	001a8593          	addi	a1,s5,1
ffffffffc0005670:	0015db13          	srli	s6,a1,0x1
ffffffffc0005674:	00050a93          	mv	s5,a0
ffffffffc0005678:	fff00493          	li	s1,-1
ffffffffc000567c:	00148493          	addi	s1,s1,1
ffffffffc0005680:	0354f063          	bgeu	s1,s5,ffffffffc00056a0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x340>
ffffffffc0005684:	054ba583          	lw	a1,84(s7)
ffffffffc0005688:	020bb503          	ld	a0,32(s7)
ffffffffc000568c:	028bb603          	ld	a2,40(s7)
ffffffffc0005690:	02063603          	ld	a2,32(a2)
ffffffffc0005694:	000600e7          	jalr	a2
ffffffffc0005698:	fe0502e3          	beqz	a0,ffffffffc000567c <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x31c>
ffffffffc000569c:	f79ff06f          	j	ffffffffc0005614 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x2b4>
ffffffffc00056a0:	054bea83          	lwu	s5,84(s7)
ffffffffc00056a4:	020bb503          	ld	a0,32(s7)
ffffffffc00056a8:	028bb583          	ld	a1,40(s7)
ffffffffc00056ac:	0185b683          	ld	a3,24(a1)
ffffffffc00056b0:	00098593          	mv	a1,s3
ffffffffc00056b4:	000a0613          	mv	a2,s4
ffffffffc00056b8:	000680e7          	jalr	a3
ffffffffc00056bc:	f4051ce3          	bnez	a0,ffffffffc0005614 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x2b4>
ffffffffc00056c0:	fff00493          	li	s1,-1
ffffffffc00056c4:	028bba03          	ld	s4,40(s7)
ffffffffc00056c8:	020bb983          	ld	s3,32(s7)
ffffffffc00056cc:	00148493          	addi	s1,s1,1
ffffffffc00056d0:	0364fc63          	bgeu	s1,s6,ffffffffc0005708 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x3a8>
ffffffffc00056d4:	020a3603          	ld	a2,32(s4)
ffffffffc00056d8:	00098513          	mv	a0,s3
ffffffffc00056dc:	000a8593          	mv	a1,s5
ffffffffc00056e0:	000600e7          	jalr	a2
ffffffffc00056e4:	fe0504e3          	beqz	a0,ffffffffc00056cc <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x36c>
ffffffffc00056e8:	f2dff06f          	j	ffffffffc0005614 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x2b4>
ffffffffc00056ec:	00298793          	addi	a5,s3,2
ffffffffc00056f0:	0019c503          	lbu	a0,1(s3)
ffffffffc00056f4:	03f57513          	andi	a0,a0,63
ffffffffc00056f8:	00078593          	mv	a1,a5
ffffffffc00056fc:	0e000713          	li	a4,224
ffffffffc0005700:	eae6fae3          	bgeu	a3,a4,ffffffffc00055b4 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x254>
ffffffffc0005704:	ccdff06f          	j	ffffffffc00053d0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x70>
ffffffffc0005708:	00000913          	li	s2,0
ffffffffc000570c:	f09ff06f          	j	ffffffffc0005614 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x2b4>
ffffffffc0005710:	00048713          	mv	a4,s1
ffffffffc0005714:	00000813          	li	a6,0
ffffffffc0005718:	0f000593          	li	a1,240
ffffffffc000571c:	cab6eae3          	bltu	a3,a1,ffffffffc00053d0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x70>
ffffffffc0005720:	01f6f693          	andi	a3,a3,31
ffffffffc0005724:	00651513          	slli	a0,a0,0x6
ffffffffc0005728:	00a86533          	or	a0,a6,a0
ffffffffc000572c:	00970a63          	beq	a4,s1,ffffffffc0005740 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x3e0>
ffffffffc0005730:	00170793          	addi	a5,a4,1
ffffffffc0005734:	00074583          	lbu	a1,0(a4)
ffffffffc0005738:	03f5f593          	andi	a1,a1,63
ffffffffc000573c:	0080006f          	j	ffffffffc0005744 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x3e4>
ffffffffc0005740:	00000593          	li	a1,0
ffffffffc0005744:	01269693          	slli	a3,a3,0x12
ffffffffc0005748:	001c0737          	lui	a4,0x1c0
ffffffffc000574c:	00e6f6b3          	and	a3,a3,a4
ffffffffc0005750:	00651513          	slli	a0,a0,0x6
ffffffffc0005754:	00d56533          	or	a0,a0,a3
ffffffffc0005758:	00b56533          	or	a0,a0,a1
ffffffffc000575c:	001105b7          	lui	a1,0x110
ffffffffc0005760:	e8b508e3          	beq	a0,a1,ffffffffc00055f0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x290>
ffffffffc0005764:	c6dff06f          	j	ffffffffc00053d0 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E+0x70>

ffffffffc0005768 <_ZN4core3fmt9Formatter9alternate17hdc33dae1f8ce40c8E>:
ffffffffc0005768:	ff010113          	addi	sp,sp,-16
ffffffffc000576c:	00113423          	sd	ra,8(sp)
ffffffffc0005770:	00813023          	sd	s0,0(sp)
ffffffffc0005774:	01010413          	addi	s0,sp,16
ffffffffc0005778:	05054503          	lbu	a0,80(a0)
ffffffffc000577c:	00457513          	andi	a0,a0,4
ffffffffc0005780:	00255513          	srli	a0,a0,0x2
ffffffffc0005784:	00013403          	ld	s0,0(sp)
ffffffffc0005788:	00813083          	ld	ra,8(sp)
ffffffffc000578c:	01010113          	addi	sp,sp,16
ffffffffc0005790:	00008067          	ret

ffffffffc0005794 <_ZN4core3fmt9Formatter15debug_lower_hex17h27c74650559ef4d8E>:
ffffffffc0005794:	ff010113          	addi	sp,sp,-16
ffffffffc0005798:	00113423          	sd	ra,8(sp)
ffffffffc000579c:	00813023          	sd	s0,0(sp)
ffffffffc00057a0:	01010413          	addi	s0,sp,16
ffffffffc00057a4:	05054503          	lbu	a0,80(a0)
ffffffffc00057a8:	01057513          	andi	a0,a0,16
ffffffffc00057ac:	00455513          	srli	a0,a0,0x4
ffffffffc00057b0:	00013403          	ld	s0,0(sp)
ffffffffc00057b4:	00813083          	ld	ra,8(sp)
ffffffffc00057b8:	01010113          	addi	sp,sp,16
ffffffffc00057bc:	00008067          	ret

ffffffffc00057c0 <_ZN4core3fmt9Formatter15debug_upper_hex17hf9c9ee08bbded667E>:
ffffffffc00057c0:	ff010113          	addi	sp,sp,-16
ffffffffc00057c4:	00113423          	sd	ra,8(sp)
ffffffffc00057c8:	00813023          	sd	s0,0(sp)
ffffffffc00057cc:	01010413          	addi	s0,sp,16
ffffffffc00057d0:	05054503          	lbu	a0,80(a0)
ffffffffc00057d4:	02057513          	andi	a0,a0,32
ffffffffc00057d8:	00555513          	srli	a0,a0,0x5
ffffffffc00057dc:	00013403          	ld	s0,0(sp)
ffffffffc00057e0:	00813083          	ld	ra,8(sp)
ffffffffc00057e4:	01010113          	addi	sp,sp,16
ffffffffc00057e8:	00008067          	ret

ffffffffc00057ec <_ZN4core3fmt9Formatter11debug_tuple17hf6f268c97d9e3639E>:
ffffffffc00057ec:	fd010113          	addi	sp,sp,-48
ffffffffc00057f0:	02113423          	sd	ra,40(sp)
ffffffffc00057f4:	02813023          	sd	s0,32(sp)
ffffffffc00057f8:	00913c23          	sd	s1,24(sp)
ffffffffc00057fc:	01213823          	sd	s2,16(sp)
ffffffffc0005800:	01313423          	sd	s3,8(sp)
ffffffffc0005804:	03010413          	addi	s0,sp,48
ffffffffc0005808:	00068913          	mv	s2,a3
ffffffffc000580c:	00058993          	mv	s3,a1
ffffffffc0005810:	00050493          	mv	s1,a0
ffffffffc0005814:	0285b503          	ld	a0,40(a1) # 110028 <XLENb+0x10ffe8>
ffffffffc0005818:	01853683          	ld	a3,24(a0)
ffffffffc000581c:	0205b503          	ld	a0,32(a1)
ffffffffc0005820:	00060593          	mv	a1,a2
ffffffffc0005824:	00090613          	mv	a2,s2
ffffffffc0005828:	000680e7          	jalr	a3
ffffffffc000582c:	00a48823          	sb	a0,16(s1)
ffffffffc0005830:	0134b023          	sd	s3,0(s1)
ffffffffc0005834:	00193513          	seqz	a0,s2
ffffffffc0005838:	00a488a3          	sb	a0,17(s1)
ffffffffc000583c:	0004b423          	sd	zero,8(s1)
ffffffffc0005840:	00813983          	ld	s3,8(sp)
ffffffffc0005844:	01013903          	ld	s2,16(sp)
ffffffffc0005848:	01813483          	ld	s1,24(sp)
ffffffffc000584c:	02013403          	ld	s0,32(sp)
ffffffffc0005850:	02813083          	ld	ra,40(sp)
ffffffffc0005854:	03010113          	addi	sp,sp,48
ffffffffc0005858:	00008067          	ret

ffffffffc000585c <_ZN42_$LT$str$u20$as$u20$core..fmt..Display$GT$3fmt17ha4db6e3e5fd36be8E>:
ffffffffc000585c:	ff010113          	addi	sp,sp,-16
ffffffffc0005860:	00113423          	sd	ra,8(sp)
ffffffffc0005864:	00813023          	sd	s0,0(sp)
ffffffffc0005868:	01010413          	addi	s0,sp,16
ffffffffc000586c:	00058693          	mv	a3,a1
ffffffffc0005870:	00050593          	mv	a1,a0
ffffffffc0005874:	00060513          	mv	a0,a2
ffffffffc0005878:	00068613          	mv	a2,a3
ffffffffc000587c:	00013403          	ld	s0,0(sp)
ffffffffc0005880:	00813083          	ld	ra,8(sp)
ffffffffc0005884:	01010113          	addi	sp,sp,16
ffffffffc0005888:	00000317          	auipc	t1,0x0
ffffffffc000588c:	ad830067          	jr	-1320(t1) # ffffffffc0005360 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E>

ffffffffc0005890 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E>:
ffffffffc0005890:	f9010113          	addi	sp,sp,-112
ffffffffc0005894:	06113423          	sd	ra,104(sp)
ffffffffc0005898:	06813023          	sd	s0,96(sp)
ffffffffc000589c:	04913c23          	sd	s1,88(sp)
ffffffffc00058a0:	05213823          	sd	s2,80(sp)
ffffffffc00058a4:	05313423          	sd	s3,72(sp)
ffffffffc00058a8:	05413023          	sd	s4,64(sp)
ffffffffc00058ac:	03513c23          	sd	s5,56(sp)
ffffffffc00058b0:	03613823          	sd	s6,48(sp)
ffffffffc00058b4:	03713423          	sd	s7,40(sp)
ffffffffc00058b8:	03813023          	sd	s8,32(sp)
ffffffffc00058bc:	01913c23          	sd	s9,24(sp)
ffffffffc00058c0:	01a13823          	sd	s10,16(sp)
ffffffffc00058c4:	01b13423          	sd	s11,8(sp)
ffffffffc00058c8:	07010413          	addi	s0,sp,112
ffffffffc00058cc:	00058993          	mv	s3,a1
ffffffffc00058d0:	00050493          	mv	s1,a0
ffffffffc00058d4:	0205b503          	ld	a0,32(a1)
ffffffffc00058d8:	0285b583          	ld	a1,40(a1)
ffffffffc00058dc:	0205b603          	ld	a2,32(a1)
ffffffffc00058e0:	02700a13          	li	s4,39
ffffffffc00058e4:	000a0593          	mv	a1,s4
ffffffffc00058e8:	000600e7          	jalr	a2
ffffffffc00058ec:	00050663          	beqz	a0,ffffffffc00058f8 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x68>
ffffffffc00058f0:	00100493          	li	s1,1
ffffffffc00058f4:	1980006f          	j	ffffffffc0005a8c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x1fc>
ffffffffc00058f8:	00200613          	li	a2,2
ffffffffc00058fc:	0004e903          	lwu	s2,0(s1)
ffffffffc0005900:	02100513          	li	a0,33
ffffffffc0005904:	03254263          	blt	a0,s2,ffffffffc0005928 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x98>
ffffffffc0005908:	00900513          	li	a0,9
ffffffffc000590c:	02a90c63          	beq	s2,a0,ffffffffc0005944 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0xb4>
ffffffffc0005910:	00a00513          	li	a0,10
ffffffffc0005914:	02a90c63          	beq	s2,a0,ffffffffc000594c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0xbc>
ffffffffc0005918:	00d00513          	li	a0,13
ffffffffc000591c:	1aa91863          	bne	s2,a0,ffffffffc0005acc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x23c>
ffffffffc0005920:	07200a13          	li	s4,114
ffffffffc0005924:	02c0006f          	j	ffffffffc0005950 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0xc0>
ffffffffc0005928:	02200513          	li	a0,34
ffffffffc000592c:	00a90863          	beq	s2,a0,ffffffffc000593c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0xac>
ffffffffc0005930:	01490663          	beq	s2,s4,ffffffffc000593c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0xac>
ffffffffc0005934:	05c00513          	li	a0,92
ffffffffc0005938:	18a91a63          	bne	s2,a0,ffffffffc0005acc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x23c>
ffffffffc000593c:	00090a13          	mv	s4,s2
ffffffffc0005940:	0100006f          	j	ffffffffc0005950 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0xc0>
ffffffffc0005944:	07400a13          	li	s4,116
ffffffffc0005948:	0080006f          	j	ffffffffc0005950 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0xc0>
ffffffffc000594c:	06e00a13          	li	s4,110
ffffffffc0005950:	00060d93          	mv	s11,a2
ffffffffc0005954:	00500a93          	li	s5,5
ffffffffc0005958:	05c00c13          	li	s8,92
ffffffffc000595c:	00100493          	li	s1,1
ffffffffc0005960:	020a1513          	slli	a0,s4,0x20
ffffffffc0005964:	02055c93          	srli	s9,a0,0x20
ffffffffc0005968:	00110d37          	lui	s10,0x110
ffffffffc000596c:	00300b13          	li	s6,3
ffffffffc0005970:	000a8b93          	mv	s7,s5
ffffffffc0005974:	020d9513          	slli	a0,s11,0x20
ffffffffc0005978:	02055513          	srli	a0,a0,0x20
ffffffffc000597c:	02950863          	beq	a0,s1,ffffffffc00059ac <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x11c>
ffffffffc0005980:	02c50e63          	beq	a0,a2,ffffffffc00059bc <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x12c>
ffffffffc0005984:	0f651863          	bne	a0,s6,ffffffffc0005a74 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x1e4>
ffffffffc0005988:	0ffbf513          	andi	a0,s7,255
ffffffffc000598c:	04a65a63          	bge	a2,a0,ffffffffc00059e0 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x150>
ffffffffc0005990:	0b650063          	beq	a0,s6,ffffffffc0005a30 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x1a0>
ffffffffc0005994:	00400b93          	li	s7,4
ffffffffc0005998:	0b750463          	beq	a0,s7,ffffffffc0005a40 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x1b0>
ffffffffc000599c:	000c0593          	mv	a1,s8
ffffffffc00059a0:	000b0d93          	mv	s11,s6
ffffffffc00059a4:	03550063          	beq	a0,s5,ffffffffc00059c4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x134>
ffffffffc00059a8:	0cc0006f          	j	ffffffffc0005a74 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x1e4>
ffffffffc00059ac:	0dac8463          	beq	s9,s10,ffffffffc0005a74 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x1e4>
ffffffffc00059b0:	000a0593          	mv	a1,s4
ffffffffc00059b4:	00000d93          	li	s11,0
ffffffffc00059b8:	00c0006f          	j	ffffffffc00059c4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x134>
ffffffffc00059bc:	000c0593          	mv	a1,s8
ffffffffc00059c0:	00048d93          	mv	s11,s1
ffffffffc00059c4:	0209b503          	ld	a0,32(s3)
ffffffffc00059c8:	0289b603          	ld	a2,40(s3)
ffffffffc00059cc:	02063603          	ld	a2,32(a2)
ffffffffc00059d0:	000600e7          	jalr	a2
ffffffffc00059d4:	00200613          	li	a2,2
ffffffffc00059d8:	f8050ee3          	beqz	a0,ffffffffc0005974 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0xe4>
ffffffffc00059dc:	0b00006f          	j	ffffffffc0005a8c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x1fc>
ffffffffc00059e0:	06950863          	beq	a0,s1,ffffffffc0005a50 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x1c0>
ffffffffc00059e4:	08c51863          	bne	a0,a2,ffffffffc0005a74 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x1e4>
ffffffffc00059e8:	f9043503          	ld	a0,-112(s0)
ffffffffc00059ec:	00251513          	slli	a0,a0,0x2
ffffffffc00059f0:	00a9553b          	srlw	a0,s2,a0
ffffffffc00059f4:	00f57513          	andi	a0,a0,15
ffffffffc00059f8:	00a00593          	li	a1,10
ffffffffc00059fc:	06b56263          	bltu	a0,a1,ffffffffc0005a60 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x1d0>
ffffffffc0005a00:	05750593          	addi	a1,a0,87
ffffffffc0005a04:	00048b93          	mv	s7,s1
ffffffffc0005a08:	f9043503          	ld	a0,-112(s0)
ffffffffc0005a0c:	00050463          	beqz	a0,ffffffffc0005a14 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x184>
ffffffffc0005a10:	00060b93          	mv	s7,a2
ffffffffc0005a14:	00000513          	li	a0,0
ffffffffc0005a18:	f9043603          	ld	a2,-112(s0)
ffffffffc0005a1c:	00060463          	beqz	a2,ffffffffc0005a24 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x194>
ffffffffc0005a20:	fff60513          	addi	a0,a2,-1
ffffffffc0005a24:	f8a43823          	sd	a0,-112(s0)
ffffffffc0005a28:	000b0d93          	mv	s11,s6
ffffffffc0005a2c:	f99ff06f          	j	ffffffffc00059c4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x134>
ffffffffc0005a30:	07b00593          	li	a1,123
ffffffffc0005a34:	00060b93          	mv	s7,a2
ffffffffc0005a38:	000b0d93          	mv	s11,s6
ffffffffc0005a3c:	f89ff06f          	j	ffffffffc00059c4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x134>
ffffffffc0005a40:	07500593          	li	a1,117
ffffffffc0005a44:	000b0b93          	mv	s7,s6
ffffffffc0005a48:	000b0d93          	mv	s11,s6
ffffffffc0005a4c:	f79ff06f          	j	ffffffffc00059c4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x134>
ffffffffc0005a50:	07d00593          	li	a1,125
ffffffffc0005a54:	00000b93          	li	s7,0
ffffffffc0005a58:	000b0d93          	mv	s11,s6
ffffffffc0005a5c:	f69ff06f          	j	ffffffffc00059c4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x134>
ffffffffc0005a60:	03056593          	ori	a1,a0,48
ffffffffc0005a64:	00048b93          	mv	s7,s1
ffffffffc0005a68:	f9043503          	ld	a0,-112(s0)
ffffffffc0005a6c:	fa0504e3          	beqz	a0,ffffffffc0005a14 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x184>
ffffffffc0005a70:	fa1ff06f          	j	ffffffffc0005a10 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x180>
ffffffffc0005a74:	0209b503          	ld	a0,32(s3)
ffffffffc0005a78:	0289b583          	ld	a1,40(s3)
ffffffffc0005a7c:	0205b603          	ld	a2,32(a1)
ffffffffc0005a80:	02700593          	li	a1,39
ffffffffc0005a84:	000600e7          	jalr	a2
ffffffffc0005a88:	00050493          	mv	s1,a0
ffffffffc0005a8c:	00048513          	mv	a0,s1
ffffffffc0005a90:	00813d83          	ld	s11,8(sp)
ffffffffc0005a94:	01013d03          	ld	s10,16(sp)
ffffffffc0005a98:	01813c83          	ld	s9,24(sp)
ffffffffc0005a9c:	02013c03          	ld	s8,32(sp)
ffffffffc0005aa0:	02813b83          	ld	s7,40(sp)
ffffffffc0005aa4:	03013b03          	ld	s6,48(sp)
ffffffffc0005aa8:	03813a83          	ld	s5,56(sp)
ffffffffc0005aac:	04013a03          	ld	s4,64(sp)
ffffffffc0005ab0:	04813983          	ld	s3,72(sp)
ffffffffc0005ab4:	05013903          	ld	s2,80(sp)
ffffffffc0005ab8:	05813483          	ld	s1,88(sp)
ffffffffc0005abc:	06013403          	ld	s0,96(sp)
ffffffffc0005ac0:	06813083          	ld	ra,104(sp)
ffffffffc0005ac4:	07010113          	addi	sp,sp,112
ffffffffc0005ac8:	00008067          	ret
ffffffffc0005acc:	c000a537          	lui	a0,0xc000a
ffffffffc0005ad0:	e8850513          	addi	a0,a0,-376 # ffffffffc0009e88 <anon.4f78b72708e4af6429bf3eb02c8a6362.36.llvm.9577958622567436274>
ffffffffc0005ad4:	00090593          	mv	a1,s2
ffffffffc0005ad8:	00000097          	auipc	ra,0x0
ffffffffc0005adc:	358080e7          	jalr	856(ra) # ffffffffc0005e30 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h122ea6955f42b44aE>
ffffffffc0005ae0:	10050263          	beqz	a0,ffffffffc0005be4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x354>
ffffffffc0005ae4:	00196513          	ori	a0,s2,1
ffffffffc0005ae8:	00155593          	srli	a1,a0,0x1
ffffffffc0005aec:	00b56533          	or	a0,a0,a1
ffffffffc0005af0:	00255593          	srli	a1,a0,0x2
ffffffffc0005af4:	00b56533          	or	a0,a0,a1
ffffffffc0005af8:	00455593          	srli	a1,a0,0x4
ffffffffc0005afc:	00b56533          	or	a0,a0,a1
ffffffffc0005b00:	00855593          	srli	a1,a0,0x8
ffffffffc0005b04:	00b56533          	or	a0,a0,a1
ffffffffc0005b08:	01055593          	srli	a1,a0,0x10
ffffffffc0005b0c:	00b56533          	or	a0,a0,a1
ffffffffc0005b10:	02055593          	srli	a1,a0,0x20
ffffffffc0005b14:	00b56533          	or	a0,a0,a1
ffffffffc0005b18:	055555b7          	lui	a1,0x5555
ffffffffc0005b1c:	5555859b          	addiw	a1,a1,1365
ffffffffc0005b20:	00c59593          	slli	a1,a1,0xc
ffffffffc0005b24:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0005b28:	00c59593          	slli	a1,a1,0xc
ffffffffc0005b2c:	55558593          	addi	a1,a1,1365
ffffffffc0005b30:	00c59593          	slli	a1,a1,0xc
ffffffffc0005b34:	55558593          	addi	a1,a1,1365
ffffffffc0005b38:	fff54513          	not	a0,a0
ffffffffc0005b3c:	00155613          	srli	a2,a0,0x1
ffffffffc0005b40:	00b675b3          	and	a1,a2,a1
ffffffffc0005b44:	40b50533          	sub	a0,a0,a1
ffffffffc0005b48:	033335b7          	lui	a1,0x3333
ffffffffc0005b4c:	3335859b          	addiw	a1,a1,819
ffffffffc0005b50:	00c59593          	slli	a1,a1,0xc
ffffffffc0005b54:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0005b58:	00c59593          	slli	a1,a1,0xc
ffffffffc0005b5c:	33358593          	addi	a1,a1,819
ffffffffc0005b60:	00c59593          	slli	a1,a1,0xc
ffffffffc0005b64:	33358593          	addi	a1,a1,819
ffffffffc0005b68:	00b57633          	and	a2,a0,a1
ffffffffc0005b6c:	00255513          	srli	a0,a0,0x2
ffffffffc0005b70:	00b57533          	and	a0,a0,a1
ffffffffc0005b74:	00a60533          	add	a0,a2,a0
ffffffffc0005b78:	00455593          	srli	a1,a0,0x4
ffffffffc0005b7c:	00b50533          	add	a0,a0,a1
ffffffffc0005b80:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0005b84:	0f15859b          	addiw	a1,a1,241
ffffffffc0005b88:	00c59593          	slli	a1,a1,0xc
ffffffffc0005b8c:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0005b90:	00c59593          	slli	a1,a1,0xc
ffffffffc0005b94:	0f158593          	addi	a1,a1,241
ffffffffc0005b98:	00c59593          	slli	a1,a1,0xc
ffffffffc0005b9c:	f0f58593          	addi	a1,a1,-241
ffffffffc0005ba0:	00b57533          	and	a0,a0,a1
ffffffffc0005ba4:	010105b7          	lui	a1,0x1010
ffffffffc0005ba8:	1015859b          	addiw	a1,a1,257
ffffffffc0005bac:	01059593          	slli	a1,a1,0x10
ffffffffc0005bb0:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0005bb4:	01059593          	slli	a1,a1,0x10
ffffffffc0005bb8:	10158593          	addi	a1,a1,257
ffffffffc0005bbc:	00001097          	auipc	ra,0x1
ffffffffc0005bc0:	6ec080e7          	jalr	1772(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0005bc4:	00300d93          	li	s11,3
ffffffffc0005bc8:	03855513          	srli	a0,a0,0x38
ffffffffc0005bcc:	fe050513          	addi	a0,a0,-32
ffffffffc0005bd0:	0025551b          	srliw	a0,a0,0x2
ffffffffc0005bd4:	00754513          	xori	a0,a0,7
ffffffffc0005bd8:	f8a43823          	sd	a0,-112(s0)
ffffffffc0005bdc:	00200613          	li	a2,2
ffffffffc0005be0:	d75ff06f          	j	ffffffffc0005954 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0xc4>
ffffffffc0005be4:	01095513          	srli	a0,s2,0x10
ffffffffc0005be8:	02051e63          	bnez	a0,ffffffffc0005c24 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x394>
ffffffffc0005bec:	c000a537          	lui	a0,0xc000a
ffffffffc0005bf0:	56050593          	addi	a1,a0,1376 # ffffffffc000a560 <anon.2e8fa9aa478d4b91b8d1906fc2b44d59.14.llvm.15276979352610672623>
ffffffffc0005bf4:	c000a537          	lui	a0,0xc000a
ffffffffc0005bf8:	5b050693          	addi	a3,a0,1456 # ffffffffc000a5b0 <anon.2e8fa9aa478d4b91b8d1906fc2b44d59.15.llvm.15276979352610672623>
ffffffffc0005bfc:	c000a537          	lui	a0,0xc000a
ffffffffc0005c00:	6df50793          	addi	a5,a0,1759 # ffffffffc000a6df <anon.2e8fa9aa478d4b91b8d1906fc2b44d59.16.llvm.15276979352610672623>
ffffffffc0005c04:	02800613          	li	a2,40
ffffffffc0005c08:	12f00713          	li	a4,303
ffffffffc0005c0c:	13c00813          	li	a6,316
ffffffffc0005c10:	00090513          	mv	a0,s2
ffffffffc0005c14:	fffff097          	auipc	ra,0xfffff
ffffffffc0005c18:	954080e7          	jalr	-1708(ra) # ffffffffc0004568 <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623>
ffffffffc0005c1c:	0e051863          	bnez	a0,ffffffffc0005d0c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x47c>
ffffffffc0005c20:	ec5ff06f          	j	ffffffffc0005ae4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x254>
ffffffffc0005c24:	01195513          	srli	a0,s2,0x11
ffffffffc0005c28:	02051e63          	bnez	a0,ffffffffc0005c64 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x3d4>
ffffffffc0005c2c:	c000b537          	lui	a0,0xc000b
ffffffffc0005c30:	81b50593          	addi	a1,a0,-2021 # ffffffffc000a81b <anon.2e8fa9aa478d4b91b8d1906fc2b44d59.17.llvm.15276979352610672623>
ffffffffc0005c34:	c000b537          	lui	a0,0xc000b
ffffffffc0005c38:	85d50693          	addi	a3,a0,-1955 # ffffffffc000a85d <anon.2e8fa9aa478d4b91b8d1906fc2b44d59.18.llvm.15276979352610672623>
ffffffffc0005c3c:	c000b537          	lui	a0,0xc000b
ffffffffc0005c40:	8fb50793          	addi	a5,a0,-1797 # ffffffffc000a8fb <anon.2e8fa9aa478d4b91b8d1906fc2b44d59.19.llvm.15276979352610672623>
ffffffffc0005c44:	02100613          	li	a2,33
ffffffffc0005c48:	09e00713          	li	a4,158
ffffffffc0005c4c:	17d00813          	li	a6,381
ffffffffc0005c50:	00090513          	mv	a0,s2
ffffffffc0005c54:	fffff097          	auipc	ra,0xfffff
ffffffffc0005c58:	914080e7          	jalr	-1772(ra) # ffffffffc0004568 <_ZN4core7unicode9printable5check17hfffbd4c837251f64E.llvm.15276979352610672623>
ffffffffc0005c5c:	e80504e3          	beqz	a0,ffffffffc0005ae4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x254>
ffffffffc0005c60:	0ac0006f          	j	ffffffffc0005d0c <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x47c>
ffffffffc0005c64:	0009051b          	sext.w	a0,s2
ffffffffc0005c68:	000e05b7          	lui	a1,0xe0
ffffffffc0005c6c:	1ef5859b          	addiw	a1,a1,495
ffffffffc0005c70:	e6a5eae3          	bltu	a1,a0,ffffffffc0005ae4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x254>
ffffffffc0005c74:	fffd0537          	lui	a0,0xfffd0
ffffffffc0005c78:	5e25051b          	addiw	a0,a0,1506
ffffffffc0005c7c:	00a90533          	add	a0,s2,a0
ffffffffc0005c80:	000b05b7          	lui	a1,0xb0
ffffffffc0005c84:	6e25859b          	addiw	a1,a1,1762
ffffffffc0005c88:	0005051b          	sext.w	a0,a0
ffffffffc0005c8c:	e4b56ce3          	bltu	a0,a1,ffffffffc0005ae4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x254>
ffffffffc0005c90:	fffd1537          	lui	a0,0xfffd1
ffffffffc0005c94:	41f5051b          	addiw	a0,a0,1055
ffffffffc0005c98:	00a90533          	add	a0,s2,a0
ffffffffc0005c9c:	000015b7          	lui	a1,0x1
ffffffffc0005ca0:	c1f5859b          	addiw	a1,a1,-993
ffffffffc0005ca4:	0005051b          	sext.w	a0,a0
ffffffffc0005ca8:	e2b56ee3          	bltu	a0,a1,ffffffffc0005ae4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x254>
ffffffffc0005cac:	fffd3537          	lui	a0,0xfffd3
ffffffffc0005cb0:	15e5051b          	addiw	a0,a0,350
ffffffffc0005cb4:	00a90533          	add	a0,s2,a0
ffffffffc0005cb8:	0005051b          	sext.w	a0,a0
ffffffffc0005cbc:	00e00593          	li	a1,14
ffffffffc0005cc0:	e2b562e3          	bltu	a0,a1,ffffffffc0005ae4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x254>
ffffffffc0005cc4:	00200537          	lui	a0,0x200
ffffffffc0005cc8:	ffe5051b          	addiw	a0,a0,-2
ffffffffc0005ccc:	00a97533          	and	a0,s2,a0
ffffffffc0005cd0:	0002c5b7          	lui	a1,0x2c
ffffffffc0005cd4:	81e5859b          	addiw	a1,a1,-2018
ffffffffc0005cd8:	e0b506e3          	beq	a0,a1,ffffffffc0005ae4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x254>
ffffffffc0005cdc:	fffd6537          	lui	a0,0xfffd6
ffffffffc0005ce0:	9295051b          	addiw	a0,a0,-1751
ffffffffc0005ce4:	00a90533          	add	a0,s2,a0
ffffffffc0005ce8:	0005051b          	sext.w	a0,a0
ffffffffc0005cec:	02900593          	li	a1,41
ffffffffc0005cf0:	deb56ae3          	bltu	a0,a1,ffffffffc0005ae4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x254>
ffffffffc0005cf4:	fffd5537          	lui	a0,0xfffd5
ffffffffc0005cf8:	8cb5051b          	addiw	a0,a0,-1845
ffffffffc0005cfc:	00a90533          	add	a0,s2,a0
ffffffffc0005d00:	0005051b          	sext.w	a0,a0
ffffffffc0005d04:	00a00593          	li	a1,10
ffffffffc0005d08:	dca5fee3          	bgeu	a1,a0,ffffffffc0005ae4 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0x254>
ffffffffc0005d0c:	00100d93          	li	s11,1
ffffffffc0005d10:	00090a13          	mv	s4,s2
ffffffffc0005d14:	00200613          	li	a2,2
ffffffffc0005d18:	c3dff06f          	j	ffffffffc0005954 <_ZN41_$LT$char$u20$as$u20$core..fmt..Debug$GT$3fmt17hb04d01b3ab330a75E+0xc4>

ffffffffc0005d1c <_ZN53_$LT$core..fmt..Error$u20$as$u20$core..fmt..Debug$GT$3fmt17hbda3aee8c603d282E>:
ffffffffc0005d1c:	ff010113          	addi	sp,sp,-16
ffffffffc0005d20:	00113423          	sd	ra,8(sp)
ffffffffc0005d24:	00813023          	sd	s0,0(sp)
ffffffffc0005d28:	01010413          	addi	s0,sp,16
ffffffffc0005d2c:	0205b503          	ld	a0,32(a1) # 2c020 <XLENb+0x2bfe0>
ffffffffc0005d30:	0285b583          	ld	a1,40(a1)
ffffffffc0005d34:	0185b783          	ld	a5,24(a1)
ffffffffc0005d38:	c000b5b7          	lui	a1,0xc000b
ffffffffc0005d3c:	00858593          	addi	a1,a1,8 # ffffffffc000b008 <.Lanon.48f9e11bbce1b892091ea8507ea176ad.22>
ffffffffc0005d40:	00500613          	li	a2,5
ffffffffc0005d44:	00013403          	ld	s0,0(sp)
ffffffffc0005d48:	00813083          	ld	ra,8(sp)
ffffffffc0005d4c:	01010113          	addi	sp,sp,16
ffffffffc0005d50:	00078067          	jr	a5

ffffffffc0005d54 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h36d96680293b17a0E>:
ffffffffc0005d54:	fc010113          	addi	sp,sp,-64
ffffffffc0005d58:	02113c23          	sd	ra,56(sp)
ffffffffc0005d5c:	02813823          	sd	s0,48(sp)
ffffffffc0005d60:	04010413          	addi	s0,sp,64
ffffffffc0005d64:	0285b683          	ld	a3,40(a1)
ffffffffc0005d68:	0205b583          	ld	a1,32(a1)
ffffffffc0005d6c:	00053503          	ld	a0,0(a0) # fffffffffffd5000 <ebss+0x3fdc1f78>
ffffffffc0005d70:	02853603          	ld	a2,40(a0)
ffffffffc0005d74:	fec43423          	sd	a2,-24(s0)
ffffffffc0005d78:	02053603          	ld	a2,32(a0)
ffffffffc0005d7c:	fec43023          	sd	a2,-32(s0)
ffffffffc0005d80:	01853603          	ld	a2,24(a0)
ffffffffc0005d84:	fcc43c23          	sd	a2,-40(s0)
ffffffffc0005d88:	01053603          	ld	a2,16(a0)
ffffffffc0005d8c:	fcc43823          	sd	a2,-48(s0)
ffffffffc0005d90:	00853603          	ld	a2,8(a0)
ffffffffc0005d94:	fcc43423          	sd	a2,-56(s0)
ffffffffc0005d98:	00053503          	ld	a0,0(a0)
ffffffffc0005d9c:	fca43023          	sd	a0,-64(s0)
ffffffffc0005da0:	fc040613          	addi	a2,s0,-64
ffffffffc0005da4:	00058513          	mv	a0,a1
ffffffffc0005da8:	00068593          	mv	a1,a3
ffffffffc0005dac:	fffff097          	auipc	ra,0xfffff
ffffffffc0005db0:	e40080e7          	jalr	-448(ra) # ffffffffc0004bec <_ZN4core3fmt5write17h62151e7ab9dfc071E>
ffffffffc0005db4:	03013403          	ld	s0,48(sp)
ffffffffc0005db8:	03813083          	ld	ra,56(sp)
ffffffffc0005dbc:	04010113          	addi	sp,sp,64
ffffffffc0005dc0:	00008067          	ret

ffffffffc0005dc4 <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h3f0c1b3cb995c3c1E>:
ffffffffc0005dc4:	ff010113          	addi	sp,sp,-16
ffffffffc0005dc8:	00113423          	sd	ra,8(sp)
ffffffffc0005dcc:	00813023          	sd	s0,0(sp)
ffffffffc0005dd0:	01010413          	addi	s0,sp,16
ffffffffc0005dd4:	00058693          	mv	a3,a1
ffffffffc0005dd8:	00053503          	ld	a0,0(a0)
ffffffffc0005ddc:	00853603          	ld	a2,8(a0)
ffffffffc0005de0:	00053583          	ld	a1,0(a0)
ffffffffc0005de4:	00068513          	mv	a0,a3
ffffffffc0005de8:	00013403          	ld	s0,0(sp)
ffffffffc0005dec:	00813083          	ld	ra,8(sp)
ffffffffc0005df0:	01010113          	addi	sp,sp,16
ffffffffc0005df4:	fffff317          	auipc	t1,0xfffff
ffffffffc0005df8:	56c30067          	jr	1388(t1) # ffffffffc0005360 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E>

ffffffffc0005dfc <_ZN44_$LT$$RF$T$u20$as$u20$core..fmt..Display$GT$3fmt17h949cc7e59610bfd8E>:
ffffffffc0005dfc:	ff010113          	addi	sp,sp,-16
ffffffffc0005e00:	00113423          	sd	ra,8(sp)
ffffffffc0005e04:	00813023          	sd	s0,0(sp)
ffffffffc0005e08:	01010413          	addi	s0,sp,16
ffffffffc0005e0c:	00058693          	mv	a3,a1
ffffffffc0005e10:	00853603          	ld	a2,8(a0)
ffffffffc0005e14:	00053583          	ld	a1,0(a0)
ffffffffc0005e18:	00068513          	mv	a0,a3
ffffffffc0005e1c:	00013403          	ld	s0,0(sp)
ffffffffc0005e20:	00813083          	ld	ra,8(sp)
ffffffffc0005e24:	01010113          	addi	sp,sp,16
ffffffffc0005e28:	fffff317          	auipc	t1,0xfffff
ffffffffc0005e2c:	53830067          	jr	1336(t1) # ffffffffc0005360 <_ZN4core3fmt9Formatter3pad17hf50001a4646626d6E>

ffffffffc0005e30 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h122ea6955f42b44aE>:
ffffffffc0005e30:	ff010113          	addi	sp,sp,-16
ffffffffc0005e34:	00113423          	sd	ra,8(sp)
ffffffffc0005e38:	00813023          	sd	s0,0(sp)
ffffffffc0005e3c:	01010413          	addi	s0,sp,16
ffffffffc0005e40:	00b5d61b          	srliw	a2,a1,0xb
ffffffffc0005e44:	00061e63          	bnez	a2,ffffffffc0005e60 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h122ea6955f42b44aE+0x30>
ffffffffc0005e48:	00100613          	li	a2,1
ffffffffc0005e4c:	02061613          	slli	a2,a2,0x20
ffffffffc0005e50:	fc060613          	addi	a2,a2,-64
ffffffffc0005e54:	00c5f633          	and	a2,a1,a2
ffffffffc0005e58:	00365613          	srli	a2,a2,0x3
ffffffffc0005e5c:	0840006f          	j	ffffffffc0005ee0 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h122ea6955f42b44aE+0xb0>
ffffffffc0005e60:	0105d61b          	srliw	a2,a1,0x10
ffffffffc0005e64:	02061863          	bnez	a2,ffffffffc0005e94 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h122ea6955f42b44aE+0x64>
ffffffffc0005e68:	0065d61b          	srliw	a2,a1,0x6
ffffffffc0005e6c:	fe060693          	addi	a3,a2,-32
ffffffffc0005e70:	3e000613          	li	a2,992
ffffffffc0005e74:	08c6fa63          	bgeu	a3,a2,ffffffffc0005f08 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h122ea6955f42b44aE+0xd8>
ffffffffc0005e78:	00d50633          	add	a2,a0,a3
ffffffffc0005e7c:	13064683          	lbu	a3,304(a2)
ffffffffc0005e80:	10853603          	ld	a2,264(a0)
ffffffffc0005e84:	0ac6f263          	bgeu	a3,a2,ffffffffc0005f28 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h122ea6955f42b44aE+0xf8>
ffffffffc0005e88:	00369613          	slli	a2,a3,0x3
ffffffffc0005e8c:	10053503          	ld	a0,256(a0)
ffffffffc0005e90:	0500006f          	j	ffffffffc0005ee0 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h122ea6955f42b44aE+0xb0>
ffffffffc0005e94:	00c5d61b          	srliw	a2,a1,0xc
ffffffffc0005e98:	ff060693          	addi	a3,a2,-16
ffffffffc0005e9c:	10000613          	li	a2,256
ffffffffc0005ea0:	0ac6f263          	bgeu	a3,a2,ffffffffc0005f44 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h122ea6955f42b44aE+0x114>
ffffffffc0005ea4:	00d50633          	add	a2,a0,a3
ffffffffc0005ea8:	51064603          	lbu	a2,1296(a2)
ffffffffc0005eac:	00661613          	slli	a2,a2,0x6
ffffffffc0005eb0:	0065d693          	srli	a3,a1,0x6
ffffffffc0005eb4:	03f6f693          	andi	a3,a3,63
ffffffffc0005eb8:	00d666b3          	or	a3,a2,a3
ffffffffc0005ebc:	11853603          	ld	a2,280(a0)
ffffffffc0005ec0:	0ac6f263          	bgeu	a3,a2,ffffffffc0005f64 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h122ea6955f42b44aE+0x134>
ffffffffc0005ec4:	11053603          	ld	a2,272(a0)
ffffffffc0005ec8:	00d60633          	add	a2,a2,a3
ffffffffc0005ecc:	00064683          	lbu	a3,0(a2)
ffffffffc0005ed0:	12853603          	ld	a2,296(a0)
ffffffffc0005ed4:	0ac6f663          	bgeu	a3,a2,ffffffffc0005f80 <_ZN4core7unicode9bool_trie8BoolTrie6lookup17h122ea6955f42b44aE+0x150>
ffffffffc0005ed8:	00369613          	slli	a2,a3,0x3
ffffffffc0005edc:	12053503          	ld	a0,288(a0)
ffffffffc0005ee0:	00c50533          	add	a0,a0,a2
ffffffffc0005ee4:	00100613          	li	a2,1
ffffffffc0005ee8:	00b615b3          	sll	a1,a2,a1
ffffffffc0005eec:	00053503          	ld	a0,0(a0)
ffffffffc0005ef0:	00b57533          	and	a0,a0,a1
ffffffffc0005ef4:	00a03533          	snez	a0,a0
ffffffffc0005ef8:	00013403          	ld	s0,0(sp)
ffffffffc0005efc:	00813083          	ld	ra,8(sp)
ffffffffc0005f00:	01010113          	addi	sp,sp,16
ffffffffc0005f04:	00008067          	ret
ffffffffc0005f08:	c000b537          	lui	a0,0xc000b
ffffffffc0005f0c:	09050513          	addi	a0,a0,144 # ffffffffc000b090 <anon.885534275fc8de3b740ce2c9a41eeacb.31.llvm.7224192088833490110>
ffffffffc0005f10:	3e000613          	li	a2,992
ffffffffc0005f14:	00068593          	mv	a1,a3
ffffffffc0005f18:	ffffe097          	auipc	ra,0xffffe
ffffffffc0005f1c:	2c4080e7          	jalr	708(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0005f20:	ffffb097          	auipc	ra,0xffffb
ffffffffc0005f24:	170080e7          	jalr	368(ra) # ffffffffc0001090 <abort>
ffffffffc0005f28:	c000b537          	lui	a0,0xc000b
ffffffffc0005f2c:	0a850513          	addi	a0,a0,168 # ffffffffc000b0a8 <anon.885534275fc8de3b740ce2c9a41eeacb.32.llvm.7224192088833490110>
ffffffffc0005f30:	00068593          	mv	a1,a3
ffffffffc0005f34:	ffffe097          	auipc	ra,0xffffe
ffffffffc0005f38:	2a8080e7          	jalr	680(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0005f3c:	ffffb097          	auipc	ra,0xffffb
ffffffffc0005f40:	154080e7          	jalr	340(ra) # ffffffffc0001090 <abort>
ffffffffc0005f44:	c000b537          	lui	a0,0xc000b
ffffffffc0005f48:	0c050513          	addi	a0,a0,192 # ffffffffc000b0c0 <anon.885534275fc8de3b740ce2c9a41eeacb.33.llvm.7224192088833490110>
ffffffffc0005f4c:	10000613          	li	a2,256
ffffffffc0005f50:	00068593          	mv	a1,a3
ffffffffc0005f54:	ffffe097          	auipc	ra,0xffffe
ffffffffc0005f58:	288080e7          	jalr	648(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0005f5c:	ffffb097          	auipc	ra,0xffffb
ffffffffc0005f60:	134080e7          	jalr	308(ra) # ffffffffc0001090 <abort>
ffffffffc0005f64:	c000b537          	lui	a0,0xc000b
ffffffffc0005f68:	0d850513          	addi	a0,a0,216 # ffffffffc000b0d8 <anon.885534275fc8de3b740ce2c9a41eeacb.34.llvm.7224192088833490110>
ffffffffc0005f6c:	00068593          	mv	a1,a3
ffffffffc0005f70:	ffffe097          	auipc	ra,0xffffe
ffffffffc0005f74:	26c080e7          	jalr	620(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0005f78:	ffffb097          	auipc	ra,0xffffb
ffffffffc0005f7c:	118080e7          	jalr	280(ra) # ffffffffc0001090 <abort>
ffffffffc0005f80:	c000b537          	lui	a0,0xc000b
ffffffffc0005f84:	0f050513          	addi	a0,a0,240 # ffffffffc000b0f0 <anon.885534275fc8de3b740ce2c9a41eeacb.35.llvm.7224192088833490110>
ffffffffc0005f88:	00068593          	mv	a1,a3
ffffffffc0005f8c:	ffffe097          	auipc	ra,0xffffe
ffffffffc0005f90:	250080e7          	jalr	592(ra) # ffffffffc00041dc <_ZN4core9panicking18panic_bounds_check17ha48d7bdaf08937f5E>
ffffffffc0005f94:	ffffb097          	auipc	ra,0xffffb
ffffffffc0005f98:	0fc080e7          	jalr	252(ra) # ffffffffc0001090 <abort>

ffffffffc0005f9c <_ZN4core3ptr18real_drop_in_place17h1c8931fe1ecb8556E>:
ffffffffc0005f9c:	ff010113          	addi	sp,sp,-16
ffffffffc0005fa0:	00113423          	sd	ra,8(sp)
ffffffffc0005fa4:	00813023          	sd	s0,0(sp)
ffffffffc0005fa8:	01010413          	addi	s0,sp,16
ffffffffc0005fac:	00013403          	ld	s0,0(sp)
ffffffffc0005fb0:	00813083          	ld	ra,8(sp)
ffffffffc0005fb4:	01010113          	addi	sp,sp,16
ffffffffc0005fb8:	00008067          	ret

ffffffffc0005fbc <_ZN4core3str6traits103_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index28_$u7b$$u7b$closure$u7d$$u7d$17h31838d08f8f53236E>:
ffffffffc0005fbc:	ff010113          	addi	sp,sp,-16
ffffffffc0005fc0:	00113423          	sd	ra,8(sp)
ffffffffc0005fc4:	00813023          	sd	s0,0(sp)
ffffffffc0005fc8:	01010413          	addi	s0,sp,16
ffffffffc0005fcc:	00058693          	mv	a3,a1
ffffffffc0005fd0:	00853583          	ld	a1,8(a0)
ffffffffc0005fd4:	00053503          	ld	a0,0(a0)
ffffffffc0005fd8:	00000613          	li	a2,0
ffffffffc0005fdc:	ffffe097          	auipc	ra,0xffffe
ffffffffc0005fe0:	6dc080e7          	jalr	1756(ra) # ffffffffc00046b8 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E>
ffffffffc0005fe4:	ffffb097          	auipc	ra,0xffffb
ffffffffc0005fe8:	0ac080e7          	jalr	172(ra) # ffffffffc0001090 <abort>

ffffffffc0005fec <_ZN4core3str6traits105_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index28_$u7b$$u7b$closure$u7d$$u7d$17h47d52c59cbc4fadcE>:
ffffffffc0005fec:	ff010113          	addi	sp,sp,-16
ffffffffc0005ff0:	00113423          	sd	ra,8(sp)
ffffffffc0005ff4:	00813023          	sd	s0,0(sp)
ffffffffc0005ff8:	01010413          	addi	s0,sp,16
ffffffffc0005ffc:	01053583          	ld	a1,16(a0)
ffffffffc0006000:	0005b683          	ld	a3,0(a1)
ffffffffc0006004:	00853583          	ld	a1,8(a0)
ffffffffc0006008:	0005b603          	ld	a2,0(a1)
ffffffffc000600c:	00053503          	ld	a0,0(a0)
ffffffffc0006010:	00853583          	ld	a1,8(a0)
ffffffffc0006014:	00053503          	ld	a0,0(a0)
ffffffffc0006018:	ffffe097          	auipc	ra,0xffffe
ffffffffc000601c:	6a0080e7          	jalr	1696(ra) # ffffffffc00046b8 <_ZN4core3str16slice_error_fail17h43b51014869d73d8E>
ffffffffc0006020:	ffffb097          	auipc	ra,0xffffb
ffffffffc0006024:	070080e7          	jalr	112(ra) # ffffffffc0001090 <abort>

ffffffffc0006028 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E>:
ffffffffc0006028:	f4010113          	addi	sp,sp,-192
ffffffffc000602c:	0a113c23          	sd	ra,184(sp)
ffffffffc0006030:	0a813823          	sd	s0,176(sp)
ffffffffc0006034:	0a913423          	sd	s1,168(sp)
ffffffffc0006038:	0b213023          	sd	s2,160(sp)
ffffffffc000603c:	09313c23          	sd	s3,152(sp)
ffffffffc0006040:	09413823          	sd	s4,144(sp)
ffffffffc0006044:	09513423          	sd	s5,136(sp)
ffffffffc0006048:	09613023          	sd	s6,128(sp)
ffffffffc000604c:	07713c23          	sd	s7,120(sp)
ffffffffc0006050:	07813823          	sd	s8,112(sp)
ffffffffc0006054:	07913423          	sd	s9,104(sp)
ffffffffc0006058:	07a13023          	sd	s10,96(sp)
ffffffffc000605c:	05b13c23          	sd	s11,88(sp)
ffffffffc0006060:	0c010413          	addi	s0,sp,192
ffffffffc0006064:	1a060c63          	beqz	a2,ffffffffc000621c <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x1f4>
ffffffffc0006068:	00060c93          	mv	s9,a2
ffffffffc000606c:	00058993          	mv	s3,a1
ffffffffc0006070:	00050a13          	mv	s4,a0
ffffffffc0006074:	f6840d13          	addi	s10,s0,-152
ffffffffc0006078:	02cd0a93          	addi	s5,s10,44 # 11002c <XLENb+0x10ffec>
ffffffffc000607c:	00500513          	li	a0,5
ffffffffc0006080:	02151513          	slli	a0,a0,0x21
ffffffffc0006084:	00a50c13          	addi	s8,a0,10
ffffffffc0006088:	00100913          	li	s2,1
ffffffffc000608c:	c0008537          	lui	a0,0xc0008
ffffffffc0006090:	13c50513          	addi	a0,a0,316 # ffffffffc000813c <.Lanon.c6760425b32964bdc9a41a8ad7c4a892.27+0x1c>
ffffffffc0006094:	f4a43023          	sd	a0,-192(s0)
ffffffffc0006098:	010a4503          	lbu	a0,16(s4)
ffffffffc000609c:	02050063          	beqz	a0,ffffffffc00060bc <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x94>
ffffffffc00060a0:	000a3503          	ld	a0,0(s4)
ffffffffc00060a4:	008a3583          	ld	a1,8(s4)
ffffffffc00060a8:	0185b683          	ld	a3,24(a1)
ffffffffc00060ac:	f4043583          	ld	a1,-192(s0)
ffffffffc00060b0:	00400613          	li	a2,4
ffffffffc00060b4:	000680e7          	jalr	a3
ffffffffc00060b8:	16051463          	bnez	a0,ffffffffc0006220 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x1f8>
ffffffffc00060bc:	f6043c23          	sd	zero,-136(s0)
ffffffffc00060c0:	f9843823          	sd	s8,-112(s0)
ffffffffc00060c4:	f9943023          	sd	s9,-128(s0)
ffffffffc00060c8:	f7943823          	sd	s9,-144(s0)
ffffffffc00060cc:	f7343423          	sd	s3,-152(s0)
ffffffffc00060d0:	f9243423          	sd	s2,-120(s0)
ffffffffc00060d4:	00a00513          	li	a0,10
ffffffffc00060d8:	00098593          	mv	a1,s3
ffffffffc00060dc:	000c8613          	mv	a2,s9
ffffffffc00060e0:	ffffe097          	auipc	ra,0xffffe
ffffffffc00060e4:	1cc080e7          	jalr	460(ra) # ffffffffc00042ac <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E>
ffffffffc00060e8:	03250463          	beq	a0,s2,ffffffffc0006110 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0xe8>
ffffffffc00060ec:	0900006f          	j	ffffffffc000617c <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x154>
ffffffffc00060f0:	f6843583          	ld	a1,-152(s0)
ffffffffc00060f4:	016585b3          	add	a1,a1,s6
ffffffffc00060f8:	41650633          	sub	a2,a0,s6
ffffffffc00060fc:	009d0533          	add	a0,s10,s1
ffffffffc0006100:	02b50503          	lb	a0,43(a0)
ffffffffc0006104:	ffffe097          	auipc	ra,0xffffe
ffffffffc0006108:	1a8080e7          	jalr	424(ra) # ffffffffc00042ac <_ZN4core5slice6memchr6memchr17hd5ab384cd583a119E>
ffffffffc000610c:	07251863          	bne	a0,s2,ffffffffc000617c <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x154>
ffffffffc0006110:	f7843503          	ld	a0,-136(s0)
ffffffffc0006114:	00a58533          	add	a0,a1,a0
ffffffffc0006118:	00150b13          	addi	s6,a0,1
ffffffffc000611c:	f7643c23          	sd	s6,-136(s0)
ffffffffc0006120:	f8843483          	ld	s1,-120(s0)
ffffffffc0006124:	009b7a63          	bgeu	s6,s1,ffffffffc0006138 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x110>
ffffffffc0006128:	f7043b83          	ld	s7,-144(s0)
ffffffffc000612c:	f8043503          	ld	a0,-128(s0)
ffffffffc0006130:	05657263          	bgeu	a0,s6,ffffffffc0006174 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x14c>
ffffffffc0006134:	0500006f          	j	ffffffffc0006184 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x15c>
ffffffffc0006138:	f7043b83          	ld	s7,-144(s0)
ffffffffc000613c:	036be863          	bltu	s7,s6,ffffffffc000616c <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x144>
ffffffffc0006140:	00500513          	li	a0,5
ffffffffc0006144:	10a4fe63          	bgeu	s1,a0,ffffffffc0006260 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x238>
ffffffffc0006148:	409b0db3          	sub	s11,s6,s1
ffffffffc000614c:	f6843503          	ld	a0,-152(s0)
ffffffffc0006150:	01b50533          	add	a0,a0,s11
ffffffffc0006154:	0b550e63          	beq	a0,s5,ffffffffc0006210 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x1e8>
ffffffffc0006158:	000a8593          	mv	a1,s5
ffffffffc000615c:	00048613          	mv	a2,s1
ffffffffc0006160:	00000097          	auipc	ra,0x0
ffffffffc0006164:	72c080e7          	jalr	1836(ra) # ffffffffc000688c <memcmp>
ffffffffc0006168:	0a050463          	beqz	a0,ffffffffc0006210 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x1e8>
ffffffffc000616c:	f8043503          	ld	a0,-128(s0)
ffffffffc0006170:	01656a63          	bltu	a0,s6,ffffffffc0006184 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x15c>
ffffffffc0006174:	f6abfee3          	bgeu	s7,a0,ffffffffc00060f0 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0xc8>
ffffffffc0006178:	00c0006f          	j	ffffffffc0006184 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x15c>
ffffffffc000617c:	f8043503          	ld	a0,-128(s0)
ffffffffc0006180:	f6a43c23          	sd	a0,-136(s0)
ffffffffc0006184:	000a0823          	sb	zero,16(s4)
ffffffffc0006188:	000c8493          	mv	s1,s9
ffffffffc000618c:	008a3583          	ld	a1,8(s4)
ffffffffc0006190:	000a3503          	ld	a0,0(s4)
ffffffffc0006194:	f7343423          	sd	s3,-152(s0)
ffffffffc0006198:	f7943823          	sd	s9,-144(s0)
ffffffffc000619c:	009cc633          	xor	a2,s9,s1
ffffffffc00061a0:	00163613          	seqz	a2,a2
ffffffffc00061a4:	0014b693          	seqz	a3,s1
ffffffffc00061a8:	00c6eb33          	or	s6,a3,a2
ffffffffc00061ac:	000b1c63          	bnez	s6,ffffffffc00061c4 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x19c>
ffffffffc00061b0:	0d94f463          	bgeu	s1,s9,ffffffffc0006278 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x250>
ffffffffc00061b4:	00998633          	add	a2,s3,s1
ffffffffc00061b8:	00060603          	lb	a2,0(a2)
ffffffffc00061bc:	fbf00693          	li	a3,-65
ffffffffc00061c0:	0ac6dc63          	bge	a3,a2,ffffffffc0006278 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x250>
ffffffffc00061c4:	0185b683          	ld	a3,24(a1)
ffffffffc00061c8:	00098593          	mv	a1,s3
ffffffffc00061cc:	00048613          	mv	a2,s1
ffffffffc00061d0:	000680e7          	jalr	a3
ffffffffc00061d4:	04051663          	bnez	a0,ffffffffc0006220 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x1f8>
ffffffffc00061d8:	f5343423          	sd	s3,-184(s0)
ffffffffc00061dc:	f5943823          	sd	s9,-176(s0)
ffffffffc00061e0:	f4943c23          	sd	s1,-168(s0)
ffffffffc00061e4:	f7943023          	sd	s9,-160(s0)
ffffffffc00061e8:	000b1c63          	bnez	s6,ffffffffc0006200 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x1d8>
ffffffffc00061ec:	0b94f263          	bgeu	s1,s9,ffffffffc0006290 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x268>
ffffffffc00061f0:	00998533          	add	a0,s3,s1
ffffffffc00061f4:	00050503          	lb	a0,0(a0)
ffffffffc00061f8:	fbf00593          	li	a1,-65
ffffffffc00061fc:	08a5da63          	bge	a1,a0,ffffffffc0006290 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x268>
ffffffffc0006200:	009989b3          	add	s3,s3,s1
ffffffffc0006204:	409c8cb3          	sub	s9,s9,s1
ffffffffc0006208:	e80c98e3          	bnez	s9,ffffffffc0006098 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x70>
ffffffffc000620c:	0100006f          	j	ffffffffc000621c <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x1f4>
ffffffffc0006210:	012a0823          	sb	s2,16(s4)
ffffffffc0006214:	001d8493          	addi	s1,s11,1
ffffffffc0006218:	f75ff06f          	j	ffffffffc000618c <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E+0x164>
ffffffffc000621c:	00000913          	li	s2,0
ffffffffc0006220:	00090513          	mv	a0,s2
ffffffffc0006224:	05813d83          	ld	s11,88(sp)
ffffffffc0006228:	06013d03          	ld	s10,96(sp)
ffffffffc000622c:	06813c83          	ld	s9,104(sp)
ffffffffc0006230:	07013c03          	ld	s8,112(sp)
ffffffffc0006234:	07813b83          	ld	s7,120(sp)
ffffffffc0006238:	08013b03          	ld	s6,128(sp)
ffffffffc000623c:	08813a83          	ld	s5,136(sp)
ffffffffc0006240:	09013a03          	ld	s4,144(sp)
ffffffffc0006244:	09813983          	ld	s3,152(sp)
ffffffffc0006248:	0a013903          	ld	s2,160(sp)
ffffffffc000624c:	0a813483          	ld	s1,168(sp)
ffffffffc0006250:	0b013403          	ld	s0,176(sp)
ffffffffc0006254:	0b813083          	ld	ra,184(sp)
ffffffffc0006258:	0c010113          	addi	sp,sp,192
ffffffffc000625c:	00008067          	ret
ffffffffc0006260:	00400593          	li	a1,4
ffffffffc0006264:	00048513          	mv	a0,s1
ffffffffc0006268:	fffff097          	auipc	ra,0xfffff
ffffffffc000626c:	850080e7          	jalr	-1968(ra) # ffffffffc0004ab8 <_ZN4core5slice20slice_index_len_fail17h00876028ef412882E>
ffffffffc0006270:	ffffb097          	auipc	ra,0xffffb
ffffffffc0006274:	e20080e7          	jalr	-480(ra) # ffffffffc0001090 <abort>
ffffffffc0006278:	f6840513          	addi	a0,s0,-152
ffffffffc000627c:	00048593          	mv	a1,s1
ffffffffc0006280:	00000097          	auipc	ra,0x0
ffffffffc0006284:	d3c080e7          	jalr	-708(ra) # ffffffffc0005fbc <_ZN4core3str6traits103_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeTo$LT$usize$GT$$GT$5index28_$u7b$$u7b$closure$u7d$$u7d$17h31838d08f8f53236E>
ffffffffc0006288:	ffffb097          	auipc	ra,0xffffb
ffffffffc000628c:	e08080e7          	jalr	-504(ra) # ffffffffc0001090 <abort>
ffffffffc0006290:	f6040513          	addi	a0,s0,-160
ffffffffc0006294:	f6a43c23          	sd	a0,-136(s0)
ffffffffc0006298:	f5840513          	addi	a0,s0,-168
ffffffffc000629c:	f6a43823          	sd	a0,-144(s0)
ffffffffc00062a0:	f4840513          	addi	a0,s0,-184
ffffffffc00062a4:	f6a43423          	sd	a0,-152(s0)
ffffffffc00062a8:	f6840513          	addi	a0,s0,-152
ffffffffc00062ac:	00000097          	auipc	ra,0x0
ffffffffc00062b0:	d40080e7          	jalr	-704(ra) # ffffffffc0005fec <_ZN4core3str6traits105_$LT$impl$u20$core..slice..SliceIndex$LT$str$GT$$u20$for$u20$core..ops..range..RangeFrom$LT$usize$GT$$GT$5index28_$u7b$$u7b$closure$u7d$$u7d$17h47d52c59cbc4fadcE>
ffffffffc00062b4:	ffffb097          	auipc	ra,0xffffb
ffffffffc00062b8:	ddc080e7          	jalr	-548(ra) # ffffffffc0001090 <abort>

ffffffffc00062bc <_ZN4core3fmt8builders10DebugTuple5field17h65f0aa5c6fd1e0b8E>:
ffffffffc00062bc:	f4010113          	addi	sp,sp,-192
ffffffffc00062c0:	0a113c23          	sd	ra,184(sp)
ffffffffc00062c4:	0a813823          	sd	s0,176(sp)
ffffffffc00062c8:	0a913423          	sd	s1,168(sp)
ffffffffc00062cc:	0b213023          	sd	s2,160(sp)
ffffffffc00062d0:	09313c23          	sd	s3,152(sp)
ffffffffc00062d4:	09413823          	sd	s4,144(sp)
ffffffffc00062d8:	09513423          	sd	s5,136(sp)
ffffffffc00062dc:	09613023          	sd	s6,128(sp)
ffffffffc00062e0:	0c010413          	addi	s0,sp,192
ffffffffc00062e4:	00050493          	mv	s1,a0
ffffffffc00062e8:	01054503          	lbu	a0,16(a0)
ffffffffc00062ec:	04050263          	beqz	a0,ffffffffc0006330 <_ZN4core3fmt8builders10DebugTuple5field17h65f0aa5c6fd1e0b8E+0x74>
ffffffffc00062f0:	00100a13          	li	s4,1
ffffffffc00062f4:	01448823          	sb	s4,16(s1)
ffffffffc00062f8:	0084b503          	ld	a0,8(s1)
ffffffffc00062fc:	00150513          	addi	a0,a0,1
ffffffffc0006300:	00a4b423          	sd	a0,8(s1)
ffffffffc0006304:	00048513          	mv	a0,s1
ffffffffc0006308:	08013b03          	ld	s6,128(sp)
ffffffffc000630c:	08813a83          	ld	s5,136(sp)
ffffffffc0006310:	09013a03          	ld	s4,144(sp)
ffffffffc0006314:	09813983          	ld	s3,152(sp)
ffffffffc0006318:	0a013903          	ld	s2,160(sp)
ffffffffc000631c:	0a813483          	ld	s1,168(sp)
ffffffffc0006320:	0b013403          	ld	s0,176(sp)
ffffffffc0006324:	0b813083          	ld	ra,184(sp)
ffffffffc0006328:	0c010113          	addi	sp,sp,192
ffffffffc000632c:	00008067          	ret
ffffffffc0006330:	00060993          	mv	s3,a2
ffffffffc0006334:	00058913          	mv	s2,a1
ffffffffc0006338:	0084bb03          	ld	s6,8(s1)
ffffffffc000633c:	0c0b0e63          	beqz	s6,ffffffffc0006418 <_ZN4core3fmt8builders10DebugTuple5field17h65f0aa5c6fd1e0b8E+0x15c>
ffffffffc0006340:	c000b537          	lui	a0,0xc000b
ffffffffc0006344:	10850593          	addi	a1,a0,264 # ffffffffc000b108 <anon.16fa15ea64da69f4dd33ca2fdf619ecc.23.llvm.1400610924903491737>
ffffffffc0006348:	0c0b1e63          	bnez	s6,ffffffffc0006424 <_ZN4core3fmt8builders10DebugTuple5field17h65f0aa5c6fd1e0b8E+0x168>
ffffffffc000634c:	c000b537          	lui	a0,0xc000b
ffffffffc0006350:	11050a93          	addi	s5,a0,272 # ffffffffc000b110 <anon.16fa15ea64da69f4dd33ca2fdf619ecc.28.llvm.1400610924903491737>
ffffffffc0006354:	0004b603          	ld	a2,0(s1)
ffffffffc0006358:	05066503          	lwu	a0,80(a2)
ffffffffc000635c:	00457693          	andi	a3,a0,4
ffffffffc0006360:	0c068e63          	beqz	a3,ffffffffc000643c <_ZN4core3fmt8builders10DebugTuple5field17h65f0aa5c6fd1e0b8E+0x180>
ffffffffc0006364:	02063683          	ld	a3,32(a2)
ffffffffc0006368:	02863703          	ld	a4,40(a2)
ffffffffc000636c:	f4040c23          	sb	zero,-168(s0)
ffffffffc0006370:	f4e43823          	sd	a4,-176(s0)
ffffffffc0006374:	f4d43423          	sd	a3,-184(s0)
ffffffffc0006378:	00063803          	ld	a6,0(a2)
ffffffffc000637c:	00863883          	ld	a7,8(a2)
ffffffffc0006380:	01063283          	ld	t0,16(a2)
ffffffffc0006384:	01863303          	ld	t1,24(a2)
ffffffffc0006388:	03063383          	ld	t2,48(a2)
ffffffffc000638c:	03863e03          	ld	t3,56(a2)
ffffffffc0006390:	04063683          	ld	a3,64(a2)
ffffffffc0006394:	04863703          	ld	a4,72(a2)
ffffffffc0006398:	05462783          	lw	a5,84(a2)
ffffffffc000639c:	05860603          	lb	a2,88(a2)
ffffffffc00063a0:	fac40c23          	sb	a2,-72(s0)
ffffffffc00063a4:	faf42a23          	sw	a5,-76(s0)
ffffffffc00063a8:	faa42823          	sw	a0,-80(s0)
ffffffffc00063ac:	fae43423          	sd	a4,-88(s0)
ffffffffc00063b0:	fad43023          	sd	a3,-96(s0)
ffffffffc00063b4:	f9c43c23          	sd	t3,-104(s0)
ffffffffc00063b8:	f8743823          	sd	t2,-112(s0)
ffffffffc00063bc:	f6643c23          	sd	t1,-136(s0)
ffffffffc00063c0:	f6543823          	sd	t0,-144(s0)
ffffffffc00063c4:	f7143423          	sd	a7,-152(s0)
ffffffffc00063c8:	f7043023          	sd	a6,-160(s0)
ffffffffc00063cc:	c000b537          	lui	a0,0xc000b
ffffffffc00063d0:	f2850613          	addi	a2,a0,-216 # ffffffffc000af28 <anon.48f9e11bbce1b892091ea8507ea176ad.9.llvm.18115772582800530547>
ffffffffc00063d4:	f8c43423          	sd	a2,-120(s0)
ffffffffc00063d8:	f4840513          	addi	a0,s0,-184
ffffffffc00063dc:	f8a43023          	sd	a0,-128(s0)
ffffffffc00063e0:	01863a83          	ld	s5,24(a2)
ffffffffc00063e4:	00100a13          	li	s4,1
ffffffffc00063e8:	000a0613          	mv	a2,s4
ffffffffc00063ec:	000a80e7          	jalr	s5
ffffffffc00063f0:	f00512e3          	bnez	a0,ffffffffc00062f4 <_ZN4core3fmt8builders10DebugTuple5field17h65f0aa5c6fd1e0b8E+0x38>
ffffffffc00063f4:	c000b537          	lui	a0,0xc000b
ffffffffc00063f8:	10950593          	addi	a1,a0,265 # ffffffffc000b109 <anon.16fa15ea64da69f4dd33ca2fdf619ecc.25.llvm.1400610924903491737>
ffffffffc00063fc:	f4840513          	addi	a0,s0,-184
ffffffffc0006400:	00100613          	li	a2,1
ffffffffc0006404:	000a80e7          	jalr	s5
ffffffffc0006408:	ee0516e3          	bnez	a0,ffffffffc00062f4 <_ZN4core3fmt8builders10DebugTuple5field17h65f0aa5c6fd1e0b8E+0x38>
ffffffffc000640c:	0189b603          	ld	a2,24(s3)
ffffffffc0006410:	f6040593          	addi	a1,s0,-160
ffffffffc0006414:	06c0006f          	j	ffffffffc0006480 <_ZN4core3fmt8builders10DebugTuple5field17h65f0aa5c6fd1e0b8E+0x1c4>
ffffffffc0006418:	c000b537          	lui	a0,0xc000b
ffffffffc000641c:	11150593          	addi	a1,a0,273 # ffffffffc000b111 <anon.16fa15ea64da69f4dd33ca2fdf619ecc.32.llvm.1400610924903491737>
ffffffffc0006420:	f20b06e3          	beqz	s6,ffffffffc000634c <_ZN4core3fmt8builders10DebugTuple5field17h65f0aa5c6fd1e0b8E+0x90>
ffffffffc0006424:	c000b537          	lui	a0,0xc000b
ffffffffc0006428:	11050a93          	addi	s5,a0,272 # ffffffffc000b110 <anon.16fa15ea64da69f4dd33ca2fdf619ecc.28.llvm.1400610924903491737>
ffffffffc000642c:	0004b603          	ld	a2,0(s1)
ffffffffc0006430:	05066503          	lwu	a0,80(a2)
ffffffffc0006434:	00457693          	andi	a3,a0,4
ffffffffc0006438:	f20696e3          	bnez	a3,ffffffffc0006364 <_ZN4core3fmt8builders10DebugTuple5field17h65f0aa5c6fd1e0b8E+0xa8>
ffffffffc000643c:	02063503          	ld	a0,32(a2)
ffffffffc0006440:	02863603          	ld	a2,40(a2)
ffffffffc0006444:	01863683          	ld	a3,24(a2)
ffffffffc0006448:	00100a13          	li	s4,1
ffffffffc000644c:	000a0613          	mv	a2,s4
ffffffffc0006450:	000680e7          	jalr	a3
ffffffffc0006454:	ea0510e3          	bnez	a0,ffffffffc00062f4 <_ZN4core3fmt8builders10DebugTuple5field17h65f0aa5c6fd1e0b8E+0x38>
ffffffffc0006458:	01603633          	snez	a2,s6
ffffffffc000645c:	0004b583          	ld	a1,0(s1)
ffffffffc0006460:	0205b503          	ld	a0,32(a1)
ffffffffc0006464:	0285b583          	ld	a1,40(a1)
ffffffffc0006468:	0185b683          	ld	a3,24(a1)
ffffffffc000646c:	000a8593          	mv	a1,s5
ffffffffc0006470:	000680e7          	jalr	a3
ffffffffc0006474:	e80510e3          	bnez	a0,ffffffffc00062f4 <_ZN4core3fmt8builders10DebugTuple5field17h65f0aa5c6fd1e0b8E+0x38>
ffffffffc0006478:	0189b603          	ld	a2,24(s3)
ffffffffc000647c:	0004b583          	ld	a1,0(s1)
ffffffffc0006480:	00090513          	mv	a0,s2
ffffffffc0006484:	000600e7          	jalr	a2
ffffffffc0006488:	00050a13          	mv	s4,a0
ffffffffc000648c:	e69ff06f          	j	ffffffffc00062f4 <_ZN4core3fmt8builders10DebugTuple5field17h65f0aa5c6fd1e0b8E+0x38>

ffffffffc0006490 <_ZN4core3fmt8builders10DebugTuple6finish17h5b52b3ffa0df14d6E>:
ffffffffc0006490:	fe010113          	addi	sp,sp,-32
ffffffffc0006494:	00113c23          	sd	ra,24(sp)
ffffffffc0006498:	00813823          	sd	s0,16(sp)
ffffffffc000649c:	00913423          	sd	s1,8(sp)
ffffffffc00064a0:	01213023          	sd	s2,0(sp)
ffffffffc00064a4:	02010413          	addi	s0,sp,32
ffffffffc00064a8:	00050913          	mv	s2,a0
ffffffffc00064ac:	01054483          	lbu	s1,16(a0)
ffffffffc00064b0:	00853503          	ld	a0,8(a0)
ffffffffc00064b4:	0a050263          	beqz	a0,ffffffffc0006558 <_ZN4core3fmt8builders10DebugTuple6finish17h5b52b3ffa0df14d6E+0xc8>
ffffffffc00064b8:	00048663          	beqz	s1,ffffffffc00064c4 <_ZN4core3fmt8builders10DebugTuple6finish17h5b52b3ffa0df14d6E+0x34>
ffffffffc00064bc:	00100493          	li	s1,1
ffffffffc00064c0:	0940006f          	j	ffffffffc0006554 <_ZN4core3fmt8builders10DebugTuple6finish17h5b52b3ffa0df14d6E+0xc4>
ffffffffc00064c4:	00093583          	ld	a1,0(s2)
ffffffffc00064c8:	0505c603          	lbu	a2,80(a1)
ffffffffc00064cc:	00467613          	andi	a2,a2,4
ffffffffc00064d0:	02060663          	beqz	a2,ffffffffc00064fc <_ZN4core3fmt8builders10DebugTuple6finish17h5b52b3ffa0df14d6E+0x6c>
ffffffffc00064d4:	0205b503          	ld	a0,32(a1)
ffffffffc00064d8:	0285b583          	ld	a1,40(a1)
ffffffffc00064dc:	0185b683          	ld	a3,24(a1)
ffffffffc00064e0:	c000b5b7          	lui	a1,0xc000b
ffffffffc00064e4:	10958593          	addi	a1,a1,265 # ffffffffc000b109 <anon.16fa15ea64da69f4dd33ca2fdf619ecc.25.llvm.1400610924903491737>
ffffffffc00064e8:	00100493          	li	s1,1
ffffffffc00064ec:	00048613          	mv	a2,s1
ffffffffc00064f0:	000680e7          	jalr	a3
ffffffffc00064f4:	06051063          	bnez	a0,ffffffffc0006554 <_ZN4core3fmt8builders10DebugTuple6finish17h5b52b3ffa0df14d6E+0xc4>
ffffffffc00064f8:	00893503          	ld	a0,8(s2)
ffffffffc00064fc:	00100493          	li	s1,1
ffffffffc0006500:	02951863          	bne	a0,s1,ffffffffc0006530 <_ZN4core3fmt8builders10DebugTuple6finish17h5b52b3ffa0df14d6E+0xa0>
ffffffffc0006504:	01194503          	lbu	a0,17(s2)
ffffffffc0006508:	02050463          	beqz	a0,ffffffffc0006530 <_ZN4core3fmt8builders10DebugTuple6finish17h5b52b3ffa0df14d6E+0xa0>
ffffffffc000650c:	00093583          	ld	a1,0(s2)
ffffffffc0006510:	0205b503          	ld	a0,32(a1)
ffffffffc0006514:	0285b583          	ld	a1,40(a1)
ffffffffc0006518:	0185b683          	ld	a3,24(a1)
ffffffffc000651c:	c000b5b7          	lui	a1,0xc000b
ffffffffc0006520:	10858593          	addi	a1,a1,264 # ffffffffc000b108 <anon.16fa15ea64da69f4dd33ca2fdf619ecc.23.llvm.1400610924903491737>
ffffffffc0006524:	00048613          	mv	a2,s1
ffffffffc0006528:	000680e7          	jalr	a3
ffffffffc000652c:	02051463          	bnez	a0,ffffffffc0006554 <_ZN4core3fmt8builders10DebugTuple6finish17h5b52b3ffa0df14d6E+0xc4>
ffffffffc0006530:	00093583          	ld	a1,0(s2)
ffffffffc0006534:	0205b503          	ld	a0,32(a1)
ffffffffc0006538:	0285b583          	ld	a1,40(a1)
ffffffffc000653c:	0185b683          	ld	a3,24(a1)
ffffffffc0006540:	c000b5b7          	lui	a1,0xc000b
ffffffffc0006544:	11258593          	addi	a1,a1,274 # ffffffffc000b112 <anon.16fa15ea64da69f4dd33ca2fdf619ecc.33.llvm.1400610924903491737>
ffffffffc0006548:	00100613          	li	a2,1
ffffffffc000654c:	000680e7          	jalr	a3
ffffffffc0006550:	00050493          	mv	s1,a0
ffffffffc0006554:	00990823          	sb	s1,16(s2)
ffffffffc0006558:	00903533          	snez	a0,s1
ffffffffc000655c:	00013903          	ld	s2,0(sp)
ffffffffc0006560:	00813483          	ld	s1,8(sp)
ffffffffc0006564:	01013403          	ld	s0,16(sp)
ffffffffc0006568:	01813083          	ld	ra,24(sp)
ffffffffc000656c:	02010113          	addi	sp,sp,32
ffffffffc0006570:	00008067          	ret

ffffffffc0006574 <_ZN4core3fmt5Write10write_char17h38852c9c232a4cc2E>:
ffffffffc0006574:	fe010113          	addi	sp,sp,-32
ffffffffc0006578:	00113c23          	sd	ra,24(sp)
ffffffffc000657c:	00813823          	sd	s0,16(sp)
ffffffffc0006580:	02010413          	addi	s0,sp,32
ffffffffc0006584:	fe042623          	sw	zero,-20(s0)
ffffffffc0006588:	0005861b          	sext.w	a2,a1
ffffffffc000658c:	07f00693          	li	a3,127
ffffffffc0006590:	00c6e863          	bltu	a3,a2,ffffffffc00065a0 <_ZN4core3fmt5Write10write_char17h38852c9c232a4cc2E+0x2c>
ffffffffc0006594:	feb40623          	sb	a1,-20(s0)
ffffffffc0006598:	00100613          	li	a2,1
ffffffffc000659c:	0a80006f          	j	ffffffffc0006644 <_ZN4core3fmt5Write10write_char17h38852c9c232a4cc2E+0xd0>
ffffffffc00065a0:	7ff00693          	li	a3,2047
ffffffffc00065a4:	02c6e463          	bltu	a3,a2,ffffffffc00065cc <_ZN4core3fmt5Write10write_char17h38852c9c232a4cc2E+0x58>
ffffffffc00065a8:	03f5f613          	andi	a2,a1,63
ffffffffc00065ac:	08066613          	ori	a2,a2,128
ffffffffc00065b0:	fec406a3          	sb	a2,-19(s0)
ffffffffc00065b4:	0065d593          	srli	a1,a1,0x6
ffffffffc00065b8:	01f5f593          	andi	a1,a1,31
ffffffffc00065bc:	0c05e593          	ori	a1,a1,192
ffffffffc00065c0:	feb40623          	sb	a1,-20(s0)
ffffffffc00065c4:	00200613          	li	a2,2
ffffffffc00065c8:	07c0006f          	j	ffffffffc0006644 <_ZN4core3fmt5Write10write_char17h38852c9c232a4cc2E+0xd0>
ffffffffc00065cc:	0105d61b          	srliw	a2,a1,0x10
ffffffffc00065d0:	02061c63          	bnez	a2,ffffffffc0006608 <_ZN4core3fmt5Write10write_char17h38852c9c232a4cc2E+0x94>
ffffffffc00065d4:	03f5f613          	andi	a2,a1,63
ffffffffc00065d8:	08066613          	ori	a2,a2,128
ffffffffc00065dc:	fec40723          	sb	a2,-18(s0)
ffffffffc00065e0:	0065d61b          	srliw	a2,a1,0x6
ffffffffc00065e4:	03f67613          	andi	a2,a2,63
ffffffffc00065e8:	08066613          	ori	a2,a2,128
ffffffffc00065ec:	fec406a3          	sb	a2,-19(s0)
ffffffffc00065f0:	00c5d59b          	srliw	a1,a1,0xc
ffffffffc00065f4:	00f5f593          	andi	a1,a1,15
ffffffffc00065f8:	0e05e593          	ori	a1,a1,224
ffffffffc00065fc:	feb40623          	sb	a1,-20(s0)
ffffffffc0006600:	00300613          	li	a2,3
ffffffffc0006604:	0400006f          	j	ffffffffc0006644 <_ZN4core3fmt5Write10write_char17h38852c9c232a4cc2E+0xd0>
ffffffffc0006608:	03f5f613          	andi	a2,a1,63
ffffffffc000660c:	08066613          	ori	a2,a2,128
ffffffffc0006610:	fec407a3          	sb	a2,-17(s0)
ffffffffc0006614:	0125d61b          	srliw	a2,a1,0x12
ffffffffc0006618:	0f066613          	ori	a2,a2,240
ffffffffc000661c:	fec40623          	sb	a2,-20(s0)
ffffffffc0006620:	0065d61b          	srliw	a2,a1,0x6
ffffffffc0006624:	03f67613          	andi	a2,a2,63
ffffffffc0006628:	08066613          	ori	a2,a2,128
ffffffffc000662c:	fec40723          	sb	a2,-18(s0)
ffffffffc0006630:	00c5d59b          	srliw	a1,a1,0xc
ffffffffc0006634:	03f5f593          	andi	a1,a1,63
ffffffffc0006638:	0805e593          	ori	a1,a1,128
ffffffffc000663c:	feb406a3          	sb	a1,-19(s0)
ffffffffc0006640:	00400613          	li	a2,4
ffffffffc0006644:	fec40593          	addi	a1,s0,-20
ffffffffc0006648:	00000097          	auipc	ra,0x0
ffffffffc000664c:	9e0080e7          	jalr	-1568(ra) # ffffffffc0006028 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E>
ffffffffc0006650:	01013403          	ld	s0,16(sp)
ffffffffc0006654:	01813083          	ld	ra,24(sp)
ffffffffc0006658:	02010113          	addi	sp,sp,32
ffffffffc000665c:	00008067          	ret

ffffffffc0006660 <_ZN4core3fmt5Write9write_fmt17h7de5086f688adde1E>:
ffffffffc0006660:	fb010113          	addi	sp,sp,-80
ffffffffc0006664:	04113423          	sd	ra,72(sp)
ffffffffc0006668:	04813023          	sd	s0,64(sp)
ffffffffc000666c:	05010413          	addi	s0,sp,80
ffffffffc0006670:	faa43c23          	sd	a0,-72(s0)
ffffffffc0006674:	0285b503          	ld	a0,40(a1)
ffffffffc0006678:	fea43423          	sd	a0,-24(s0)
ffffffffc000667c:	0205b503          	ld	a0,32(a1)
ffffffffc0006680:	fea43023          	sd	a0,-32(s0)
ffffffffc0006684:	0185b503          	ld	a0,24(a1)
ffffffffc0006688:	fca43c23          	sd	a0,-40(s0)
ffffffffc000668c:	0105b503          	ld	a0,16(a1)
ffffffffc0006690:	fca43823          	sd	a0,-48(s0)
ffffffffc0006694:	0085b503          	ld	a0,8(a1)
ffffffffc0006698:	fca43423          	sd	a0,-56(s0)
ffffffffc000669c:	0005b503          	ld	a0,0(a1)
ffffffffc00066a0:	fca43023          	sd	a0,-64(s0)
ffffffffc00066a4:	c000b537          	lui	a0,0xc000b
ffffffffc00066a8:	11850593          	addi	a1,a0,280 # ffffffffc000b118 <.Lanon.16fa15ea64da69f4dd33ca2fdf619ecc.45>
ffffffffc00066ac:	fb840513          	addi	a0,s0,-72
ffffffffc00066b0:	fc040613          	addi	a2,s0,-64
ffffffffc00066b4:	ffffe097          	auipc	ra,0xffffe
ffffffffc00066b8:	538080e7          	jalr	1336(ra) # ffffffffc0004bec <_ZN4core3fmt5write17h62151e7ab9dfc071E>
ffffffffc00066bc:	04013403          	ld	s0,64(sp)
ffffffffc00066c0:	04813083          	ld	ra,72(sp)
ffffffffc00066c4:	05010113          	addi	sp,sp,80
ffffffffc00066c8:	00008067          	ret

ffffffffc00066cc <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_str17h894401cec0ac8378E>:
ffffffffc00066cc:	ff010113          	addi	sp,sp,-16
ffffffffc00066d0:	00113423          	sd	ra,8(sp)
ffffffffc00066d4:	00813023          	sd	s0,0(sp)
ffffffffc00066d8:	01010413          	addi	s0,sp,16
ffffffffc00066dc:	00053503          	ld	a0,0(a0)
ffffffffc00066e0:	00013403          	ld	s0,0(sp)
ffffffffc00066e4:	00813083          	ld	ra,8(sp)
ffffffffc00066e8:	01010113          	addi	sp,sp,16
ffffffffc00066ec:	00000317          	auipc	t1,0x0
ffffffffc00066f0:	93c30067          	jr	-1732(t1) # ffffffffc0006028 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E>

ffffffffc00066f4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8a8e8020788843caE>:
ffffffffc00066f4:	fe010113          	addi	sp,sp,-32
ffffffffc00066f8:	00113c23          	sd	ra,24(sp)
ffffffffc00066fc:	00813823          	sd	s0,16(sp)
ffffffffc0006700:	02010413          	addi	s0,sp,32
ffffffffc0006704:	00053503          	ld	a0,0(a0)
ffffffffc0006708:	fe042623          	sw	zero,-20(s0)
ffffffffc000670c:	0005861b          	sext.w	a2,a1
ffffffffc0006710:	07f00693          	li	a3,127
ffffffffc0006714:	00c6e863          	bltu	a3,a2,ffffffffc0006724 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8a8e8020788843caE+0x30>
ffffffffc0006718:	feb40623          	sb	a1,-20(s0)
ffffffffc000671c:	00100613          	li	a2,1
ffffffffc0006720:	0a80006f          	j	ffffffffc00067c8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8a8e8020788843caE+0xd4>
ffffffffc0006724:	7ff00693          	li	a3,2047
ffffffffc0006728:	02c6e463          	bltu	a3,a2,ffffffffc0006750 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8a8e8020788843caE+0x5c>
ffffffffc000672c:	03f5f613          	andi	a2,a1,63
ffffffffc0006730:	08066613          	ori	a2,a2,128
ffffffffc0006734:	fec406a3          	sb	a2,-19(s0)
ffffffffc0006738:	0065d593          	srli	a1,a1,0x6
ffffffffc000673c:	01f5f593          	andi	a1,a1,31
ffffffffc0006740:	0c05e593          	ori	a1,a1,192
ffffffffc0006744:	feb40623          	sb	a1,-20(s0)
ffffffffc0006748:	00200613          	li	a2,2
ffffffffc000674c:	07c0006f          	j	ffffffffc00067c8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8a8e8020788843caE+0xd4>
ffffffffc0006750:	0105d61b          	srliw	a2,a1,0x10
ffffffffc0006754:	02061c63          	bnez	a2,ffffffffc000678c <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8a8e8020788843caE+0x98>
ffffffffc0006758:	03f5f613          	andi	a2,a1,63
ffffffffc000675c:	08066613          	ori	a2,a2,128
ffffffffc0006760:	fec40723          	sb	a2,-18(s0)
ffffffffc0006764:	0065d61b          	srliw	a2,a1,0x6
ffffffffc0006768:	03f67613          	andi	a2,a2,63
ffffffffc000676c:	08066613          	ori	a2,a2,128
ffffffffc0006770:	fec406a3          	sb	a2,-19(s0)
ffffffffc0006774:	00c5d59b          	srliw	a1,a1,0xc
ffffffffc0006778:	00f5f593          	andi	a1,a1,15
ffffffffc000677c:	0e05e593          	ori	a1,a1,224
ffffffffc0006780:	feb40623          	sb	a1,-20(s0)
ffffffffc0006784:	00300613          	li	a2,3
ffffffffc0006788:	0400006f          	j	ffffffffc00067c8 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$10write_char17h8a8e8020788843caE+0xd4>
ffffffffc000678c:	03f5f613          	andi	a2,a1,63
ffffffffc0006790:	08066613          	ori	a2,a2,128
ffffffffc0006794:	fec407a3          	sb	a2,-17(s0)
ffffffffc0006798:	0125d61b          	srliw	a2,a1,0x12
ffffffffc000679c:	0f066613          	ori	a2,a2,240
ffffffffc00067a0:	fec40623          	sb	a2,-20(s0)
ffffffffc00067a4:	0065d61b          	srliw	a2,a1,0x6
ffffffffc00067a8:	03f67613          	andi	a2,a2,63
ffffffffc00067ac:	08066613          	ori	a2,a2,128
ffffffffc00067b0:	fec40723          	sb	a2,-18(s0)
ffffffffc00067b4:	00c5d59b          	srliw	a1,a1,0xc
ffffffffc00067b8:	03f5f593          	andi	a1,a1,63
ffffffffc00067bc:	0805e593          	ori	a1,a1,128
ffffffffc00067c0:	feb406a3          	sb	a1,-19(s0)
ffffffffc00067c4:	00400613          	li	a2,4
ffffffffc00067c8:	fec40593          	addi	a1,s0,-20
ffffffffc00067cc:	00000097          	auipc	ra,0x0
ffffffffc00067d0:	85c080e7          	jalr	-1956(ra) # ffffffffc0006028 <_ZN82_$LT$core..fmt..builders..PadAdapter$LT$$u27$_$GT$$u20$as$u20$core..fmt..Write$GT$9write_str17h249025bae3ed50b3E>
ffffffffc00067d4:	01013403          	ld	s0,16(sp)
ffffffffc00067d8:	01813083          	ld	ra,24(sp)
ffffffffc00067dc:	02010113          	addi	sp,sp,32
ffffffffc00067e0:	00008067          	ret

ffffffffc00067e4 <_ZN50_$LT$$RF$mut$u20$W$u20$as$u20$core..fmt..Write$GT$9write_fmt17h04d81c6f362ba306E>:
ffffffffc00067e4:	fb010113          	addi	sp,sp,-80
ffffffffc00067e8:	04113423          	sd	ra,72(sp)
ffffffffc00067ec:	04813023          	sd	s0,64(sp)
ffffffffc00067f0:	05010413          	addi	s0,sp,80
ffffffffc00067f4:	00053503          	ld	a0,0(a0)
ffffffffc00067f8:	faa43c23          	sd	a0,-72(s0)
ffffffffc00067fc:	0285b503          	ld	a0,40(a1)
ffffffffc0006800:	fea43423          	sd	a0,-24(s0)
ffffffffc0006804:	0205b503          	ld	a0,32(a1)
ffffffffc0006808:	fea43023          	sd	a0,-32(s0)
ffffffffc000680c:	0185b503          	ld	a0,24(a1)
ffffffffc0006810:	fca43c23          	sd	a0,-40(s0)
ffffffffc0006814:	0105b503          	ld	a0,16(a1)
ffffffffc0006818:	fca43823          	sd	a0,-48(s0)
ffffffffc000681c:	0085b503          	ld	a0,8(a1)
ffffffffc0006820:	fca43423          	sd	a0,-56(s0)
ffffffffc0006824:	0005b503          	ld	a0,0(a1)
ffffffffc0006828:	fca43023          	sd	a0,-64(s0)
ffffffffc000682c:	c000b537          	lui	a0,0xc000b
ffffffffc0006830:	11850593          	addi	a1,a0,280 # ffffffffc000b118 <.Lanon.16fa15ea64da69f4dd33ca2fdf619ecc.45>
ffffffffc0006834:	fb840513          	addi	a0,s0,-72
ffffffffc0006838:	fc040613          	addi	a2,s0,-64
ffffffffc000683c:	ffffe097          	auipc	ra,0xffffe
ffffffffc0006840:	3b0080e7          	jalr	944(ra) # ffffffffc0004bec <_ZN4core3fmt5write17h62151e7ab9dfc071E>
ffffffffc0006844:	04013403          	ld	s0,64(sp)
ffffffffc0006848:	04813083          	ld	ra,72(sp)
ffffffffc000684c:	05010113          	addi	sp,sp,80
ffffffffc0006850:	00008067          	ret

ffffffffc0006854 <memset>:
ffffffffc0006854:	ff010113          	addi	sp,sp,-16
ffffffffc0006858:	00113423          	sd	ra,8(sp)
ffffffffc000685c:	00813023          	sd	s0,0(sp)
ffffffffc0006860:	01010413          	addi	s0,sp,16
ffffffffc0006864:	00060c63          	beqz	a2,ffffffffc000687c <memset+0x28>
ffffffffc0006868:	00050693          	mv	a3,a0
ffffffffc000686c:	00b68023          	sb	a1,0(a3)
ffffffffc0006870:	00168693          	addi	a3,a3,1
ffffffffc0006874:	fff60613          	addi	a2,a2,-1
ffffffffc0006878:	fe061ae3          	bnez	a2,ffffffffc000686c <memset+0x18>
ffffffffc000687c:	00013403          	ld	s0,0(sp)
ffffffffc0006880:	00813083          	ld	ra,8(sp)
ffffffffc0006884:	01010113          	addi	sp,sp,16
ffffffffc0006888:	00008067          	ret

ffffffffc000688c <memcmp>:
ffffffffc000688c:	ff010113          	addi	sp,sp,-16
ffffffffc0006890:	00113423          	sd	ra,8(sp)
ffffffffc0006894:	00813023          	sd	s0,0(sp)
ffffffffc0006898:	01010413          	addi	s0,sp,16
ffffffffc000689c:	02060c63          	beqz	a2,ffffffffc00068d4 <memcmp+0x48>
ffffffffc00068a0:	00000693          	li	a3,0
ffffffffc00068a4:	00d507b3          	add	a5,a0,a3
ffffffffc00068a8:	00d58733          	add	a4,a1,a3
ffffffffc00068ac:	00074703          	lbu	a4,0(a4) # 1c0000 <XLENb+0x1bffc0>
ffffffffc00068b0:	0007c783          	lbu	a5,0(a5)
ffffffffc00068b4:	02e79a63          	bne	a5,a4,ffffffffc00068e8 <memcmp+0x5c>
ffffffffc00068b8:	00168693          	addi	a3,a3,1
ffffffffc00068bc:	fec6e4e3          	bltu	a3,a2,ffffffffc00068a4 <memcmp+0x18>
ffffffffc00068c0:	00000513          	li	a0,0
ffffffffc00068c4:	00013403          	ld	s0,0(sp)
ffffffffc00068c8:	00813083          	ld	ra,8(sp)
ffffffffc00068cc:	01010113          	addi	sp,sp,16
ffffffffc00068d0:	00008067          	ret
ffffffffc00068d4:	00000513          	li	a0,0
ffffffffc00068d8:	00013403          	ld	s0,0(sp)
ffffffffc00068dc:	00813083          	ld	ra,8(sp)
ffffffffc00068e0:	01010113          	addi	sp,sp,16
ffffffffc00068e4:	00008067          	ret
ffffffffc00068e8:	40e78533          	sub	a0,a5,a4
ffffffffc00068ec:	00013403          	ld	s0,0(sp)
ffffffffc00068f0:	00813083          	ld	ra,8(sp)
ffffffffc00068f4:	01010113          	addi	sp,sp,16
ffffffffc00068f8:	00008067          	ret

ffffffffc00068fc <__udivdi3>:
ffffffffc00068fc:	ff010113          	addi	sp,sp,-16
ffffffffc0006900:	00113423          	sd	ra,8(sp)
ffffffffc0006904:	00813023          	sd	s0,0(sp)
ffffffffc0006908:	01010413          	addi	s0,sp,16
ffffffffc000690c:	00000613          	li	a2,0
ffffffffc0006910:	00013403          	ld	s0,0(sp)
ffffffffc0006914:	00813083          	ld	ra,8(sp)
ffffffffc0006918:	01010113          	addi	sp,sp,16
ffffffffc000691c:	00000317          	auipc	t1,0x0
ffffffffc0006920:	03c30067          	jr	60(t1) # ffffffffc0006958 <__udivmoddi4>

ffffffffc0006924 <__umoddi3>:
ffffffffc0006924:	fe010113          	addi	sp,sp,-32
ffffffffc0006928:	00113c23          	sd	ra,24(sp)
ffffffffc000692c:	00813823          	sd	s0,16(sp)
ffffffffc0006930:	02010413          	addi	s0,sp,32
ffffffffc0006934:	fe043423          	sd	zero,-24(s0)
ffffffffc0006938:	fe840613          	addi	a2,s0,-24
ffffffffc000693c:	00000097          	auipc	ra,0x0
ffffffffc0006940:	01c080e7          	jalr	28(ra) # ffffffffc0006958 <__udivmoddi4>
ffffffffc0006944:	fe843503          	ld	a0,-24(s0)
ffffffffc0006948:	01013403          	ld	s0,16(sp)
ffffffffc000694c:	01813083          	ld	ra,24(sp)
ffffffffc0006950:	02010113          	addi	sp,sp,32
ffffffffc0006954:	00008067          	ret

ffffffffc0006958 <__udivmoddi4>:
ffffffffc0006958:	fb010113          	addi	sp,sp,-80
ffffffffc000695c:	04113423          	sd	ra,72(sp)
ffffffffc0006960:	04813023          	sd	s0,64(sp)
ffffffffc0006964:	02913c23          	sd	s1,56(sp)
ffffffffc0006968:	03213823          	sd	s2,48(sp)
ffffffffc000696c:	03313423          	sd	s3,40(sp)
ffffffffc0006970:	03413023          	sd	s4,32(sp)
ffffffffc0006974:	01513c23          	sd	s5,24(sp)
ffffffffc0006978:	01613823          	sd	s6,16(sp)
ffffffffc000697c:	01713423          	sd	s7,8(sp)
ffffffffc0006980:	01813023          	sd	s8,0(sp)
ffffffffc0006984:	05010413          	addi	s0,sp,80
ffffffffc0006988:	00060913          	mv	s2,a2
ffffffffc000698c:	00058c13          	mv	s8,a1
ffffffffc0006990:	00050993          	mv	s3,a0
ffffffffc0006994:	42055513          	srai	a0,a0,0x20
ffffffffc0006998:	20050263          	beqz	a0,ffffffffc0006b9c <__udivmoddi4+0x244>
ffffffffc000699c:	0209da13          	srli	s4,s3,0x20
ffffffffc00069a0:	020c5a93          	srli	s5,s8,0x20
ffffffffc00069a4:	020c1513          	slli	a0,s8,0x20
ffffffffc00069a8:	02055513          	srli	a0,a0,0x20
ffffffffc00069ac:	22050063          	beqz	a0,ffffffffc0006bcc <__udivmoddi4+0x274>
ffffffffc00069b0:	420a8e63          	beqz	s5,ffffffffc0006dec <__udivmoddi4+0x494>
ffffffffc00069b4:	02000b13          	li	s6,32
ffffffffc00069b8:	000b0b93          	mv	s7,s6
ffffffffc00069bc:	0e0a8463          	beqz	s5,ffffffffc0006aa4 <__udivmoddi4+0x14c>
ffffffffc00069c0:	001ad513          	srli	a0,s5,0x1
ffffffffc00069c4:	00aae533          	or	a0,s5,a0
ffffffffc00069c8:	00255593          	srli	a1,a0,0x2
ffffffffc00069cc:	00b56533          	or	a0,a0,a1
ffffffffc00069d0:	00455593          	srli	a1,a0,0x4
ffffffffc00069d4:	00b56533          	or	a0,a0,a1
ffffffffc00069d8:	00855593          	srli	a1,a0,0x8
ffffffffc00069dc:	00b56533          	or	a0,a0,a1
ffffffffc00069e0:	01055593          	srli	a1,a0,0x10
ffffffffc00069e4:	00b56533          	or	a0,a0,a1
ffffffffc00069e8:	02055593          	srli	a1,a0,0x20
ffffffffc00069ec:	00b56533          	or	a0,a0,a1
ffffffffc00069f0:	055555b7          	lui	a1,0x5555
ffffffffc00069f4:	5555859b          	addiw	a1,a1,1365
ffffffffc00069f8:	00c59593          	slli	a1,a1,0xc
ffffffffc00069fc:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0006a00:	00c59593          	slli	a1,a1,0xc
ffffffffc0006a04:	55558593          	addi	a1,a1,1365
ffffffffc0006a08:	00c59593          	slli	a1,a1,0xc
ffffffffc0006a0c:	fff54513          	not	a0,a0
ffffffffc0006a10:	55558593          	addi	a1,a1,1365
ffffffffc0006a14:	00155613          	srli	a2,a0,0x1
ffffffffc0006a18:	00b675b3          	and	a1,a2,a1
ffffffffc0006a1c:	40b50533          	sub	a0,a0,a1
ffffffffc0006a20:	033335b7          	lui	a1,0x3333
ffffffffc0006a24:	3335859b          	addiw	a1,a1,819
ffffffffc0006a28:	00c59593          	slli	a1,a1,0xc
ffffffffc0006a2c:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0006a30:	00c59593          	slli	a1,a1,0xc
ffffffffc0006a34:	33358593          	addi	a1,a1,819
ffffffffc0006a38:	00c59593          	slli	a1,a1,0xc
ffffffffc0006a3c:	33358593          	addi	a1,a1,819
ffffffffc0006a40:	00b57633          	and	a2,a0,a1
ffffffffc0006a44:	00255513          	srli	a0,a0,0x2
ffffffffc0006a48:	00b57533          	and	a0,a0,a1
ffffffffc0006a4c:	00a60533          	add	a0,a2,a0
ffffffffc0006a50:	00455593          	srli	a1,a0,0x4
ffffffffc0006a54:	00b50533          	add	a0,a0,a1
ffffffffc0006a58:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0006a5c:	0f15859b          	addiw	a1,a1,241
ffffffffc0006a60:	00c59593          	slli	a1,a1,0xc
ffffffffc0006a64:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0006a68:	00c59593          	slli	a1,a1,0xc
ffffffffc0006a6c:	0f158593          	addi	a1,a1,241
ffffffffc0006a70:	00c59593          	slli	a1,a1,0xc
ffffffffc0006a74:	f0f58593          	addi	a1,a1,-241
ffffffffc0006a78:	00b57533          	and	a0,a0,a1
ffffffffc0006a7c:	010105b7          	lui	a1,0x1010
ffffffffc0006a80:	1015859b          	addiw	a1,a1,257
ffffffffc0006a84:	01059593          	slli	a1,a1,0x10
ffffffffc0006a88:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0006a8c:	01059593          	slli	a1,a1,0x10
ffffffffc0006a90:	10158593          	addi	a1,a1,257
ffffffffc0006a94:	00001097          	auipc	ra,0x1
ffffffffc0006a98:	814080e7          	jalr	-2028(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0006a9c:	03855513          	srli	a0,a0,0x38
ffffffffc0006aa0:	fe050b93          	addi	s7,a0,-32
ffffffffc0006aa4:	0e0a0463          	beqz	s4,ffffffffc0006b8c <__udivmoddi4+0x234>
ffffffffc0006aa8:	001a5513          	srli	a0,s4,0x1
ffffffffc0006aac:	00aa6533          	or	a0,s4,a0
ffffffffc0006ab0:	00255593          	srli	a1,a0,0x2
ffffffffc0006ab4:	00b56533          	or	a0,a0,a1
ffffffffc0006ab8:	00455593          	srli	a1,a0,0x4
ffffffffc0006abc:	00b56533          	or	a0,a0,a1
ffffffffc0006ac0:	00855593          	srli	a1,a0,0x8
ffffffffc0006ac4:	00b56533          	or	a0,a0,a1
ffffffffc0006ac8:	01055593          	srli	a1,a0,0x10
ffffffffc0006acc:	00b56533          	or	a0,a0,a1
ffffffffc0006ad0:	02055593          	srli	a1,a0,0x20
ffffffffc0006ad4:	00b56533          	or	a0,a0,a1
ffffffffc0006ad8:	055555b7          	lui	a1,0x5555
ffffffffc0006adc:	5555859b          	addiw	a1,a1,1365
ffffffffc0006ae0:	00c59593          	slli	a1,a1,0xc
ffffffffc0006ae4:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0006ae8:	00c59593          	slli	a1,a1,0xc
ffffffffc0006aec:	55558593          	addi	a1,a1,1365
ffffffffc0006af0:	00c59593          	slli	a1,a1,0xc
ffffffffc0006af4:	fff54513          	not	a0,a0
ffffffffc0006af8:	55558593          	addi	a1,a1,1365
ffffffffc0006afc:	00155613          	srli	a2,a0,0x1
ffffffffc0006b00:	00b675b3          	and	a1,a2,a1
ffffffffc0006b04:	40b50533          	sub	a0,a0,a1
ffffffffc0006b08:	033335b7          	lui	a1,0x3333
ffffffffc0006b0c:	3335859b          	addiw	a1,a1,819
ffffffffc0006b10:	00c59593          	slli	a1,a1,0xc
ffffffffc0006b14:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0006b18:	00c59593          	slli	a1,a1,0xc
ffffffffc0006b1c:	33358593          	addi	a1,a1,819
ffffffffc0006b20:	00c59593          	slli	a1,a1,0xc
ffffffffc0006b24:	33358593          	addi	a1,a1,819
ffffffffc0006b28:	00b57633          	and	a2,a0,a1
ffffffffc0006b2c:	00255513          	srli	a0,a0,0x2
ffffffffc0006b30:	00b57533          	and	a0,a0,a1
ffffffffc0006b34:	00a60533          	add	a0,a2,a0
ffffffffc0006b38:	00455593          	srli	a1,a0,0x4
ffffffffc0006b3c:	00b50533          	add	a0,a0,a1
ffffffffc0006b40:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0006b44:	0f15859b          	addiw	a1,a1,241
ffffffffc0006b48:	00c59593          	slli	a1,a1,0xc
ffffffffc0006b4c:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0006b50:	00c59593          	slli	a1,a1,0xc
ffffffffc0006b54:	0f158593          	addi	a1,a1,241
ffffffffc0006b58:	00c59593          	slli	a1,a1,0xc
ffffffffc0006b5c:	f0f58593          	addi	a1,a1,-241
ffffffffc0006b60:	00b57533          	and	a0,a0,a1
ffffffffc0006b64:	010105b7          	lui	a1,0x1010
ffffffffc0006b68:	1015859b          	addiw	a1,a1,257
ffffffffc0006b6c:	01059593          	slli	a1,a1,0x10
ffffffffc0006b70:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0006b74:	01059593          	slli	a1,a1,0x10
ffffffffc0006b78:	10158593          	addi	a1,a1,257
ffffffffc0006b7c:	00000097          	auipc	ra,0x0
ffffffffc0006b80:	72c080e7          	jalr	1836(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0006b84:	03855513          	srli	a0,a0,0x38
ffffffffc0006b88:	fe050b13          	addi	s6,a0,-32
ffffffffc0006b8c:	416b8533          	sub	a0,s7,s6
ffffffffc0006b90:	01f00593          	li	a1,31
ffffffffc0006b94:	24a5f463          	bgeu	a1,a0,ffffffffc0006ddc <__udivmoddi4+0x484>
ffffffffc0006b98:	2340006f          	j	ffffffffc0006dcc <__udivmoddi4+0x474>
ffffffffc0006b9c:	020c5513          	srli	a0,s8,0x20
ffffffffc0006ba0:	22051663          	bnez	a0,ffffffffc0006dcc <__udivmoddi4+0x474>
ffffffffc0006ba4:	020c1513          	slli	a0,s8,0x20
ffffffffc0006ba8:	4c090663          	beqz	s2,ffffffffc0007074 <__udivmoddi4+0x71c>
ffffffffc0006bac:	02055593          	srli	a1,a0,0x20
ffffffffc0006bb0:	6e058463          	beqz	a1,ffffffffc0007298 <__udivmoddi4+0x940>
ffffffffc0006bb4:	02099513          	slli	a0,s3,0x20
ffffffffc0006bb8:	02055513          	srli	a0,a0,0x20
ffffffffc0006bbc:	00000097          	auipc	ra,0x0
ffffffffc0006bc0:	d68080e7          	jalr	-664(ra) # ffffffffc0006924 <__umoddi3>
ffffffffc0006bc4:	00a93023          	sd	a0,0(s2)
ffffffffc0006bc8:	4b40006f          	j	ffffffffc000707c <__udivmoddi4+0x724>
ffffffffc0006bcc:	6c0a8663          	beqz	s5,ffffffffc0007298 <__udivmoddi4+0x940>
ffffffffc0006bd0:	02099513          	slli	a0,s3,0x20
ffffffffc0006bd4:	02055593          	srli	a1,a0,0x20
ffffffffc0006bd8:	46058a63          	beqz	a1,ffffffffc000704c <__udivmoddi4+0x6f4>
ffffffffc0006bdc:	fffa8513          	addi	a0,s5,-1
ffffffffc0006be0:	01557633          	and	a2,a0,s5
ffffffffc0006be4:	5c060263          	beqz	a2,ffffffffc00071a8 <__udivmoddi4+0x850>
ffffffffc0006be8:	02000b13          	li	s6,32
ffffffffc0006bec:	000b0b93          	mv	s7,s6
ffffffffc0006bf0:	0e0a8463          	beqz	s5,ffffffffc0006cd8 <__udivmoddi4+0x380>
ffffffffc0006bf4:	001ad513          	srli	a0,s5,0x1
ffffffffc0006bf8:	00aae533          	or	a0,s5,a0
ffffffffc0006bfc:	00255593          	srli	a1,a0,0x2
ffffffffc0006c00:	00b56533          	or	a0,a0,a1
ffffffffc0006c04:	00455593          	srli	a1,a0,0x4
ffffffffc0006c08:	00b56533          	or	a0,a0,a1
ffffffffc0006c0c:	00855593          	srli	a1,a0,0x8
ffffffffc0006c10:	00b56533          	or	a0,a0,a1
ffffffffc0006c14:	01055593          	srli	a1,a0,0x10
ffffffffc0006c18:	00b56533          	or	a0,a0,a1
ffffffffc0006c1c:	02055593          	srli	a1,a0,0x20
ffffffffc0006c20:	00b56533          	or	a0,a0,a1
ffffffffc0006c24:	055555b7          	lui	a1,0x5555
ffffffffc0006c28:	5555859b          	addiw	a1,a1,1365
ffffffffc0006c2c:	00c59593          	slli	a1,a1,0xc
ffffffffc0006c30:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0006c34:	00c59593          	slli	a1,a1,0xc
ffffffffc0006c38:	55558593          	addi	a1,a1,1365
ffffffffc0006c3c:	00c59593          	slli	a1,a1,0xc
ffffffffc0006c40:	fff54513          	not	a0,a0
ffffffffc0006c44:	55558593          	addi	a1,a1,1365
ffffffffc0006c48:	00155613          	srli	a2,a0,0x1
ffffffffc0006c4c:	00b675b3          	and	a1,a2,a1
ffffffffc0006c50:	40b50533          	sub	a0,a0,a1
ffffffffc0006c54:	033335b7          	lui	a1,0x3333
ffffffffc0006c58:	3335859b          	addiw	a1,a1,819
ffffffffc0006c5c:	00c59593          	slli	a1,a1,0xc
ffffffffc0006c60:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0006c64:	00c59593          	slli	a1,a1,0xc
ffffffffc0006c68:	33358593          	addi	a1,a1,819
ffffffffc0006c6c:	00c59593          	slli	a1,a1,0xc
ffffffffc0006c70:	33358593          	addi	a1,a1,819
ffffffffc0006c74:	00b57633          	and	a2,a0,a1
ffffffffc0006c78:	00255513          	srli	a0,a0,0x2
ffffffffc0006c7c:	00b57533          	and	a0,a0,a1
ffffffffc0006c80:	00a60533          	add	a0,a2,a0
ffffffffc0006c84:	00455593          	srli	a1,a0,0x4
ffffffffc0006c88:	00b50533          	add	a0,a0,a1
ffffffffc0006c8c:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0006c90:	0f15859b          	addiw	a1,a1,241
ffffffffc0006c94:	00c59593          	slli	a1,a1,0xc
ffffffffc0006c98:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0006c9c:	00c59593          	slli	a1,a1,0xc
ffffffffc0006ca0:	0f158593          	addi	a1,a1,241
ffffffffc0006ca4:	00c59593          	slli	a1,a1,0xc
ffffffffc0006ca8:	f0f58593          	addi	a1,a1,-241
ffffffffc0006cac:	00b57533          	and	a0,a0,a1
ffffffffc0006cb0:	010105b7          	lui	a1,0x1010
ffffffffc0006cb4:	1015859b          	addiw	a1,a1,257
ffffffffc0006cb8:	01059593          	slli	a1,a1,0x10
ffffffffc0006cbc:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0006cc0:	01059593          	slli	a1,a1,0x10
ffffffffc0006cc4:	10158593          	addi	a1,a1,257
ffffffffc0006cc8:	00000097          	auipc	ra,0x0
ffffffffc0006ccc:	5e0080e7          	jalr	1504(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0006cd0:	03855513          	srli	a0,a0,0x38
ffffffffc0006cd4:	fe050b93          	addi	s7,a0,-32
ffffffffc0006cd8:	0e0a0463          	beqz	s4,ffffffffc0006dc0 <__udivmoddi4+0x468>
ffffffffc0006cdc:	001a5513          	srli	a0,s4,0x1
ffffffffc0006ce0:	00aa6533          	or	a0,s4,a0
ffffffffc0006ce4:	00255593          	srli	a1,a0,0x2
ffffffffc0006ce8:	00b56533          	or	a0,a0,a1
ffffffffc0006cec:	00455593          	srli	a1,a0,0x4
ffffffffc0006cf0:	00b56533          	or	a0,a0,a1
ffffffffc0006cf4:	00855593          	srli	a1,a0,0x8
ffffffffc0006cf8:	00b56533          	or	a0,a0,a1
ffffffffc0006cfc:	01055593          	srli	a1,a0,0x10
ffffffffc0006d00:	00b56533          	or	a0,a0,a1
ffffffffc0006d04:	02055593          	srli	a1,a0,0x20
ffffffffc0006d08:	00b56533          	or	a0,a0,a1
ffffffffc0006d0c:	055555b7          	lui	a1,0x5555
ffffffffc0006d10:	5555859b          	addiw	a1,a1,1365
ffffffffc0006d14:	00c59593          	slli	a1,a1,0xc
ffffffffc0006d18:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0006d1c:	00c59593          	slli	a1,a1,0xc
ffffffffc0006d20:	55558593          	addi	a1,a1,1365
ffffffffc0006d24:	00c59593          	slli	a1,a1,0xc
ffffffffc0006d28:	fff54513          	not	a0,a0
ffffffffc0006d2c:	55558593          	addi	a1,a1,1365
ffffffffc0006d30:	00155613          	srli	a2,a0,0x1
ffffffffc0006d34:	00b675b3          	and	a1,a2,a1
ffffffffc0006d38:	40b50533          	sub	a0,a0,a1
ffffffffc0006d3c:	033335b7          	lui	a1,0x3333
ffffffffc0006d40:	3335859b          	addiw	a1,a1,819
ffffffffc0006d44:	00c59593          	slli	a1,a1,0xc
ffffffffc0006d48:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0006d4c:	00c59593          	slli	a1,a1,0xc
ffffffffc0006d50:	33358593          	addi	a1,a1,819
ffffffffc0006d54:	00c59593          	slli	a1,a1,0xc
ffffffffc0006d58:	33358593          	addi	a1,a1,819
ffffffffc0006d5c:	00b57633          	and	a2,a0,a1
ffffffffc0006d60:	00255513          	srli	a0,a0,0x2
ffffffffc0006d64:	00b57533          	and	a0,a0,a1
ffffffffc0006d68:	00a60533          	add	a0,a2,a0
ffffffffc0006d6c:	00455593          	srli	a1,a0,0x4
ffffffffc0006d70:	00b50533          	add	a0,a0,a1
ffffffffc0006d74:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0006d78:	0f15859b          	addiw	a1,a1,241
ffffffffc0006d7c:	00c59593          	slli	a1,a1,0xc
ffffffffc0006d80:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0006d84:	00c59593          	slli	a1,a1,0xc
ffffffffc0006d88:	0f158593          	addi	a1,a1,241
ffffffffc0006d8c:	00c59593          	slli	a1,a1,0xc
ffffffffc0006d90:	f0f58593          	addi	a1,a1,-241
ffffffffc0006d94:	00b57533          	and	a0,a0,a1
ffffffffc0006d98:	010105b7          	lui	a1,0x1010
ffffffffc0006d9c:	1015859b          	addiw	a1,a1,257
ffffffffc0006da0:	01059593          	slli	a1,a1,0x10
ffffffffc0006da4:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0006da8:	01059593          	slli	a1,a1,0x10
ffffffffc0006dac:	10158593          	addi	a1,a1,257
ffffffffc0006db0:	00000097          	auipc	ra,0x0
ffffffffc0006db4:	4f8080e7          	jalr	1272(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0006db8:	03855513          	srli	a0,a0,0x38
ffffffffc0006dbc:	fe050b13          	addi	s6,a0,-32
ffffffffc0006dc0:	416b8533          	sub	a0,s7,s6
ffffffffc0006dc4:	01e00593          	li	a1,30
ffffffffc0006dc8:	00a5fa63          	bgeu	a1,a0,ffffffffc0006ddc <__udivmoddi4+0x484>
ffffffffc0006dcc:	26090c63          	beqz	s2,ffffffffc0007044 <__udivmoddi4+0x6ec>
ffffffffc0006dd0:	01393023          	sd	s3,0(s2)
ffffffffc0006dd4:	00000993          	li	s3,0
ffffffffc0006dd8:	2c00006f          	j	ffffffffc0007098 <__udivmoddi4+0x740>
ffffffffc0006ddc:	03f00593          	li	a1,63
ffffffffc0006de0:	40a585b3          	sub	a1,a1,a0
ffffffffc0006de4:	00150513          	addi	a0,a0,1
ffffffffc0006de8:	1fc0006f          	j	ffffffffc0006fe4 <__udivmoddi4+0x68c>
ffffffffc0006dec:	fffc0593          	addi	a1,s8,-1
ffffffffc0006df0:	0185f633          	and	a2,a1,s8
ffffffffc0006df4:	02061613          	slli	a2,a2,0x20
ffffffffc0006df8:	02065613          	srli	a2,a2,0x20
ffffffffc0006dfc:	2c060863          	beqz	a2,ffffffffc00070cc <__udivmoddi4+0x774>
ffffffffc0006e00:	02000a93          	li	s5,32
ffffffffc0006e04:	000a8593          	mv	a1,s5
ffffffffc0006e08:	0e050463          	beqz	a0,ffffffffc0006ef0 <__udivmoddi4+0x598>
ffffffffc0006e0c:	001c559b          	srliw	a1,s8,0x1
ffffffffc0006e10:	00b56533          	or	a0,a0,a1
ffffffffc0006e14:	00255593          	srli	a1,a0,0x2
ffffffffc0006e18:	00b56533          	or	a0,a0,a1
ffffffffc0006e1c:	00455593          	srli	a1,a0,0x4
ffffffffc0006e20:	00b56533          	or	a0,a0,a1
ffffffffc0006e24:	00855593          	srli	a1,a0,0x8
ffffffffc0006e28:	00b56533          	or	a0,a0,a1
ffffffffc0006e2c:	01055593          	srli	a1,a0,0x10
ffffffffc0006e30:	00b56533          	or	a0,a0,a1
ffffffffc0006e34:	02055593          	srli	a1,a0,0x20
ffffffffc0006e38:	00b56533          	or	a0,a0,a1
ffffffffc0006e3c:	055555b7          	lui	a1,0x5555
ffffffffc0006e40:	5555859b          	addiw	a1,a1,1365
ffffffffc0006e44:	00c59593          	slli	a1,a1,0xc
ffffffffc0006e48:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0006e4c:	00c59593          	slli	a1,a1,0xc
ffffffffc0006e50:	55558593          	addi	a1,a1,1365
ffffffffc0006e54:	00c59593          	slli	a1,a1,0xc
ffffffffc0006e58:	55558593          	addi	a1,a1,1365
ffffffffc0006e5c:	fff54513          	not	a0,a0
ffffffffc0006e60:	00155613          	srli	a2,a0,0x1
ffffffffc0006e64:	00b675b3          	and	a1,a2,a1
ffffffffc0006e68:	40b50533          	sub	a0,a0,a1
ffffffffc0006e6c:	033335b7          	lui	a1,0x3333
ffffffffc0006e70:	3335859b          	addiw	a1,a1,819
ffffffffc0006e74:	00c59593          	slli	a1,a1,0xc
ffffffffc0006e78:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0006e7c:	00c59593          	slli	a1,a1,0xc
ffffffffc0006e80:	33358593          	addi	a1,a1,819
ffffffffc0006e84:	00c59593          	slli	a1,a1,0xc
ffffffffc0006e88:	33358593          	addi	a1,a1,819
ffffffffc0006e8c:	00b57633          	and	a2,a0,a1
ffffffffc0006e90:	00255513          	srli	a0,a0,0x2
ffffffffc0006e94:	00b57533          	and	a0,a0,a1
ffffffffc0006e98:	00a60533          	add	a0,a2,a0
ffffffffc0006e9c:	00455593          	srli	a1,a0,0x4
ffffffffc0006ea0:	00b50533          	add	a0,a0,a1
ffffffffc0006ea4:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0006ea8:	0f15859b          	addiw	a1,a1,241
ffffffffc0006eac:	00c59593          	slli	a1,a1,0xc
ffffffffc0006eb0:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0006eb4:	00c59593          	slli	a1,a1,0xc
ffffffffc0006eb8:	0f158593          	addi	a1,a1,241
ffffffffc0006ebc:	00c59593          	slli	a1,a1,0xc
ffffffffc0006ec0:	f0f58593          	addi	a1,a1,-241
ffffffffc0006ec4:	00b57533          	and	a0,a0,a1
ffffffffc0006ec8:	010105b7          	lui	a1,0x1010
ffffffffc0006ecc:	1015859b          	addiw	a1,a1,257
ffffffffc0006ed0:	01059593          	slli	a1,a1,0x10
ffffffffc0006ed4:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0006ed8:	01059593          	slli	a1,a1,0x10
ffffffffc0006edc:	10158593          	addi	a1,a1,257
ffffffffc0006ee0:	00000097          	auipc	ra,0x0
ffffffffc0006ee4:	3c8080e7          	jalr	968(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0006ee8:	03855513          	srli	a0,a0,0x38
ffffffffc0006eec:	fe050593          	addi	a1,a0,-32
ffffffffc0006ef0:	02158b13          	addi	s6,a1,33
ffffffffc0006ef4:	0e0a0463          	beqz	s4,ffffffffc0006fdc <__udivmoddi4+0x684>
ffffffffc0006ef8:	001a5513          	srli	a0,s4,0x1
ffffffffc0006efc:	00aa6533          	or	a0,s4,a0
ffffffffc0006f00:	00255593          	srli	a1,a0,0x2
ffffffffc0006f04:	00b56533          	or	a0,a0,a1
ffffffffc0006f08:	00455593          	srli	a1,a0,0x4
ffffffffc0006f0c:	00b56533          	or	a0,a0,a1
ffffffffc0006f10:	00855593          	srli	a1,a0,0x8
ffffffffc0006f14:	00b56533          	or	a0,a0,a1
ffffffffc0006f18:	01055593          	srli	a1,a0,0x10
ffffffffc0006f1c:	00b56533          	or	a0,a0,a1
ffffffffc0006f20:	02055593          	srli	a1,a0,0x20
ffffffffc0006f24:	00b56533          	or	a0,a0,a1
ffffffffc0006f28:	055555b7          	lui	a1,0x5555
ffffffffc0006f2c:	5555859b          	addiw	a1,a1,1365
ffffffffc0006f30:	00c59593          	slli	a1,a1,0xc
ffffffffc0006f34:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0006f38:	00c59593          	slli	a1,a1,0xc
ffffffffc0006f3c:	55558593          	addi	a1,a1,1365
ffffffffc0006f40:	00c59593          	slli	a1,a1,0xc
ffffffffc0006f44:	fff54513          	not	a0,a0
ffffffffc0006f48:	55558593          	addi	a1,a1,1365
ffffffffc0006f4c:	00155613          	srli	a2,a0,0x1
ffffffffc0006f50:	00b675b3          	and	a1,a2,a1
ffffffffc0006f54:	40b50533          	sub	a0,a0,a1
ffffffffc0006f58:	033335b7          	lui	a1,0x3333
ffffffffc0006f5c:	3335859b          	addiw	a1,a1,819
ffffffffc0006f60:	00c59593          	slli	a1,a1,0xc
ffffffffc0006f64:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0006f68:	00c59593          	slli	a1,a1,0xc
ffffffffc0006f6c:	33358593          	addi	a1,a1,819
ffffffffc0006f70:	00c59593          	slli	a1,a1,0xc
ffffffffc0006f74:	33358593          	addi	a1,a1,819
ffffffffc0006f78:	00b57633          	and	a2,a0,a1
ffffffffc0006f7c:	00255513          	srli	a0,a0,0x2
ffffffffc0006f80:	00b57533          	and	a0,a0,a1
ffffffffc0006f84:	00a60533          	add	a0,a2,a0
ffffffffc0006f88:	00455593          	srli	a1,a0,0x4
ffffffffc0006f8c:	00b50533          	add	a0,a0,a1
ffffffffc0006f90:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0006f94:	0f15859b          	addiw	a1,a1,241
ffffffffc0006f98:	00c59593          	slli	a1,a1,0xc
ffffffffc0006f9c:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0006fa0:	00c59593          	slli	a1,a1,0xc
ffffffffc0006fa4:	0f158593          	addi	a1,a1,241
ffffffffc0006fa8:	00c59593          	slli	a1,a1,0xc
ffffffffc0006fac:	f0f58593          	addi	a1,a1,-241
ffffffffc0006fb0:	00b57533          	and	a0,a0,a1
ffffffffc0006fb4:	010105b7          	lui	a1,0x1010
ffffffffc0006fb8:	1015859b          	addiw	a1,a1,257
ffffffffc0006fbc:	01059593          	slli	a1,a1,0x10
ffffffffc0006fc0:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0006fc4:	01059593          	slli	a1,a1,0x10
ffffffffc0006fc8:	10158593          	addi	a1,a1,257
ffffffffc0006fcc:	00000097          	auipc	ra,0x0
ffffffffc0006fd0:	2dc080e7          	jalr	732(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0006fd4:	03855513          	srli	a0,a0,0x38
ffffffffc0006fd8:	fe050a93          	addi	s5,a0,-32
ffffffffc0006fdc:	415b0533          	sub	a0,s6,s5
ffffffffc0006fe0:	40a005b3          	neg	a1,a0
ffffffffc0006fe4:	00b995b3          	sll	a1,s3,a1
ffffffffc0006fe8:	00a9d6b3          	srl	a3,s3,a0
ffffffffc0006fec:	00000713          	li	a4,0
ffffffffc0006ff0:	00000613          	li	a2,0
ffffffffc0006ff4:	00169693          	slli	a3,a3,0x1
ffffffffc0006ff8:	03f5d793          	srli	a5,a1,0x3f
ffffffffc0006ffc:	00d7e6b3          	or	a3,a5,a3
ffffffffc0007000:	fff6c793          	not	a5,a3
ffffffffc0007004:	018787b3          	add	a5,a5,s8
ffffffffc0007008:	43f7d793          	srai	a5,a5,0x3f
ffffffffc000700c:	0187f4b3          	and	s1,a5,s8
ffffffffc0007010:	409686b3          	sub	a3,a3,s1
ffffffffc0007014:	00159593          	slli	a1,a1,0x1
ffffffffc0007018:	00c5e5b3          	or	a1,a1,a2
ffffffffc000701c:	00170493          	addi	s1,a4,1
ffffffffc0007020:	0017f613          	andi	a2,a5,1
ffffffffc0007024:	0017079b          	addiw	a5,a4,1
ffffffffc0007028:	00048713          	mv	a4,s1
ffffffffc000702c:	fca7e4e3          	bltu	a5,a0,ffffffffc0006ff4 <__udivmoddi4+0x69c>
ffffffffc0007030:	00090463          	beqz	s2,ffffffffc0007038 <__udivmoddi4+0x6e0>
ffffffffc0007034:	00d93023          	sd	a3,0(s2)
ffffffffc0007038:	00159513          	slli	a0,a1,0x1
ffffffffc000703c:	00a669b3          	or	s3,a2,a0
ffffffffc0007040:	0580006f          	j	ffffffffc0007098 <__udivmoddi4+0x740>
ffffffffc0007044:	00000993          	li	s3,0
ffffffffc0007048:	0500006f          	j	ffffffffc0007098 <__udivmoddi4+0x740>
ffffffffc000704c:	00090e63          	beqz	s2,ffffffffc0007068 <__udivmoddi4+0x710>
ffffffffc0007050:	000a0513          	mv	a0,s4
ffffffffc0007054:	000a8593          	mv	a1,s5
ffffffffc0007058:	00000097          	auipc	ra,0x0
ffffffffc000705c:	8cc080e7          	jalr	-1844(ra) # ffffffffc0006924 <__umoddi3>
ffffffffc0007060:	02051513          	slli	a0,a0,0x20
ffffffffc0007064:	00a93023          	sd	a0,0(s2)
ffffffffc0007068:	000a0513          	mv	a0,s4
ffffffffc000706c:	000a8593          	mv	a1,s5
ffffffffc0007070:	01c0006f          	j	ffffffffc000708c <__udivmoddi4+0x734>
ffffffffc0007074:	02055513          	srli	a0,a0,0x20
ffffffffc0007078:	22050063          	beqz	a0,ffffffffc0007298 <__udivmoddi4+0x940>
ffffffffc000707c:	02099513          	slli	a0,s3,0x20
ffffffffc0007080:	02055513          	srli	a0,a0,0x20
ffffffffc0007084:	020c1593          	slli	a1,s8,0x20
ffffffffc0007088:	0205d593          	srli	a1,a1,0x20
ffffffffc000708c:	00000097          	auipc	ra,0x0
ffffffffc0007090:	870080e7          	jalr	-1936(ra) # ffffffffc00068fc <__udivdi3>
ffffffffc0007094:	00050993          	mv	s3,a0
ffffffffc0007098:	00098513          	mv	a0,s3
ffffffffc000709c:	00013c03          	ld	s8,0(sp)
ffffffffc00070a0:	00813b83          	ld	s7,8(sp)
ffffffffc00070a4:	01013b03          	ld	s6,16(sp)
ffffffffc00070a8:	01813a83          	ld	s5,24(sp)
ffffffffc00070ac:	02013a03          	ld	s4,32(sp)
ffffffffc00070b0:	02813983          	ld	s3,40(sp)
ffffffffc00070b4:	03013903          	ld	s2,48(sp)
ffffffffc00070b8:	03813483          	ld	s1,56(sp)
ffffffffc00070bc:	04013403          	ld	s0,64(sp)
ffffffffc00070c0:	04813083          	ld	ra,72(sp)
ffffffffc00070c4:	05010113          	addi	sp,sp,80
ffffffffc00070c8:	00008067          	ret
ffffffffc00070cc:	00090a63          	beqz	s2,ffffffffc00070e0 <__udivmoddi4+0x788>
ffffffffc00070d0:	0135f633          	and	a2,a1,s3
ffffffffc00070d4:	02061613          	slli	a2,a2,0x20
ffffffffc00070d8:	02065613          	srli	a2,a2,0x20
ffffffffc00070dc:	00c93023          	sd	a2,0(s2)
ffffffffc00070e0:	00100613          	li	a2,1
ffffffffc00070e4:	fac50ae3          	beq	a0,a2,ffffffffc0007098 <__udivmoddi4+0x740>
ffffffffc00070e8:	1a050263          	beqz	a0,ffffffffc000728c <__udivmoddi4+0x934>
ffffffffc00070ec:	fffc4513          	not	a0,s8
ffffffffc00070f0:	00b57533          	and	a0,a0,a1
ffffffffc00070f4:	055555b7          	lui	a1,0x5555
ffffffffc00070f8:	5555859b          	addiw	a1,a1,1365
ffffffffc00070fc:	00c59593          	slli	a1,a1,0xc
ffffffffc0007100:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc0007104:	00c59593          	slli	a1,a1,0xc
ffffffffc0007108:	55558593          	addi	a1,a1,1365
ffffffffc000710c:	00c59593          	slli	a1,a1,0xc
ffffffffc0007110:	55558593          	addi	a1,a1,1365
ffffffffc0007114:	00155613          	srli	a2,a0,0x1
ffffffffc0007118:	00b675b3          	and	a1,a2,a1
ffffffffc000711c:	40b50533          	sub	a0,a0,a1
ffffffffc0007120:	033335b7          	lui	a1,0x3333
ffffffffc0007124:	3335859b          	addiw	a1,a1,819
ffffffffc0007128:	00c59593          	slli	a1,a1,0xc
ffffffffc000712c:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0007130:	00c59593          	slli	a1,a1,0xc
ffffffffc0007134:	33358593          	addi	a1,a1,819
ffffffffc0007138:	00c59593          	slli	a1,a1,0xc
ffffffffc000713c:	33358593          	addi	a1,a1,819
ffffffffc0007140:	00b57633          	and	a2,a0,a1
ffffffffc0007144:	00255513          	srli	a0,a0,0x2
ffffffffc0007148:	00b57533          	and	a0,a0,a1
ffffffffc000714c:	00a60533          	add	a0,a2,a0
ffffffffc0007150:	00455593          	srli	a1,a0,0x4
ffffffffc0007154:	00b50533          	add	a0,a0,a1
ffffffffc0007158:	00f0f5b7          	lui	a1,0xf0f
ffffffffc000715c:	0f15859b          	addiw	a1,a1,241
ffffffffc0007160:	00c59593          	slli	a1,a1,0xc
ffffffffc0007164:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc0007168:	00c59593          	slli	a1,a1,0xc
ffffffffc000716c:	0f158593          	addi	a1,a1,241
ffffffffc0007170:	00c59593          	slli	a1,a1,0xc
ffffffffc0007174:	f0f58593          	addi	a1,a1,-241
ffffffffc0007178:	00b57533          	and	a0,a0,a1
ffffffffc000717c:	010105b7          	lui	a1,0x1010
ffffffffc0007180:	1015859b          	addiw	a1,a1,257
ffffffffc0007184:	01059593          	slli	a1,a1,0x10
ffffffffc0007188:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc000718c:	01059593          	slli	a1,a1,0x10
ffffffffc0007190:	10158593          	addi	a1,a1,257
ffffffffc0007194:	00000097          	auipc	ra,0x0
ffffffffc0007198:	114080e7          	jalr	276(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc000719c:	03855513          	srli	a0,a0,0x38
ffffffffc00071a0:	00a9d9b3          	srl	s3,s3,a0
ffffffffc00071a4:	ef5ff06f          	j	ffffffffc0007098 <__udivmoddi4+0x740>
ffffffffc00071a8:	00090a63          	beqz	s2,ffffffffc00071bc <__udivmoddi4+0x864>
ffffffffc00071ac:	01457633          	and	a2,a0,s4
ffffffffc00071b0:	02061613          	slli	a2,a2,0x20
ffffffffc00071b4:	00b665b3          	or	a1,a2,a1
ffffffffc00071b8:	00b93023          	sd	a1,0(s2)
ffffffffc00071bc:	0a0a8e63          	beqz	s5,ffffffffc0007278 <__udivmoddi4+0x920>
ffffffffc00071c0:	fffac593          	not	a1,s5
ffffffffc00071c4:	00a5f533          	and	a0,a1,a0
ffffffffc00071c8:	055555b7          	lui	a1,0x5555
ffffffffc00071cc:	5555859b          	addiw	a1,a1,1365
ffffffffc00071d0:	00c59593          	slli	a1,a1,0xc
ffffffffc00071d4:	55558593          	addi	a1,a1,1365 # 5555555 <XLENb+0x5555515>
ffffffffc00071d8:	00c59593          	slli	a1,a1,0xc
ffffffffc00071dc:	55558593          	addi	a1,a1,1365
ffffffffc00071e0:	00c59593          	slli	a1,a1,0xc
ffffffffc00071e4:	55558593          	addi	a1,a1,1365
ffffffffc00071e8:	00155613          	srli	a2,a0,0x1
ffffffffc00071ec:	00b675b3          	and	a1,a2,a1
ffffffffc00071f0:	40b50533          	sub	a0,a0,a1
ffffffffc00071f4:	033335b7          	lui	a1,0x3333
ffffffffc00071f8:	3335859b          	addiw	a1,a1,819
ffffffffc00071fc:	00c59593          	slli	a1,a1,0xc
ffffffffc0007200:	33358593          	addi	a1,a1,819 # 3333333 <XLENb+0x33332f3>
ffffffffc0007204:	00c59593          	slli	a1,a1,0xc
ffffffffc0007208:	33358593          	addi	a1,a1,819
ffffffffc000720c:	00c59593          	slli	a1,a1,0xc
ffffffffc0007210:	33358593          	addi	a1,a1,819
ffffffffc0007214:	00b57633          	and	a2,a0,a1
ffffffffc0007218:	00255513          	srli	a0,a0,0x2
ffffffffc000721c:	00b57533          	and	a0,a0,a1
ffffffffc0007220:	00a60533          	add	a0,a2,a0
ffffffffc0007224:	00455593          	srli	a1,a0,0x4
ffffffffc0007228:	00b50533          	add	a0,a0,a1
ffffffffc000722c:	00f0f5b7          	lui	a1,0xf0f
ffffffffc0007230:	0f15859b          	addiw	a1,a1,241
ffffffffc0007234:	00c59593          	slli	a1,a1,0xc
ffffffffc0007238:	f0f58593          	addi	a1,a1,-241 # f0ef0f <XLENb+0xf0eecf>
ffffffffc000723c:	00c59593          	slli	a1,a1,0xc
ffffffffc0007240:	0f158593          	addi	a1,a1,241
ffffffffc0007244:	00c59593          	slli	a1,a1,0xc
ffffffffc0007248:	f0f58593          	addi	a1,a1,-241
ffffffffc000724c:	00b57533          	and	a0,a0,a1
ffffffffc0007250:	010105b7          	lui	a1,0x1010
ffffffffc0007254:	1015859b          	addiw	a1,a1,257
ffffffffc0007258:	01059593          	slli	a1,a1,0x10
ffffffffc000725c:	10158593          	addi	a1,a1,257 # 1010101 <XLENb+0x10100c1>
ffffffffc0007260:	01059593          	slli	a1,a1,0x10
ffffffffc0007264:	10158593          	addi	a1,a1,257
ffffffffc0007268:	00000097          	auipc	ra,0x0
ffffffffc000726c:	040080e7          	jalr	64(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0007270:	03855513          	srli	a0,a0,0x38
ffffffffc0007274:	0080006f          	j	ffffffffc000727c <__udivmoddi4+0x924>
ffffffffc0007278:	02000513          	li	a0,32
ffffffffc000727c:	00aa553b          	srlw	a0,s4,a0
ffffffffc0007280:	02051513          	slli	a0,a0,0x20
ffffffffc0007284:	02055993          	srli	s3,a0,0x20
ffffffffc0007288:	e11ff06f          	j	ffffffffc0007098 <__udivmoddi4+0x740>
ffffffffc000728c:	02000513          	li	a0,32
ffffffffc0007290:	00a9d9b3          	srl	s3,s3,a0
ffffffffc0007294:	e05ff06f          	j	ffffffffc0007098 <__udivmoddi4+0x740>
ffffffffc0007298:	ffffa097          	auipc	ra,0xffffa
ffffffffc000729c:	df8080e7          	jalr	-520(ra) # ffffffffc0001090 <abort>
ffffffffc00072a0:	ffffa097          	auipc	ra,0xffffa
ffffffffc00072a4:	df0080e7          	jalr	-528(ra) # ffffffffc0001090 <abort>

ffffffffc00072a8 <__muldi3>:
ffffffffc00072a8:	fb010113          	addi	sp,sp,-80
ffffffffc00072ac:	04113423          	sd	ra,72(sp)
ffffffffc00072b0:	04813023          	sd	s0,64(sp)
ffffffffc00072b4:	02913c23          	sd	s1,56(sp)
ffffffffc00072b8:	03213823          	sd	s2,48(sp)
ffffffffc00072bc:	03313423          	sd	s3,40(sp)
ffffffffc00072c0:	03413023          	sd	s4,32(sp)
ffffffffc00072c4:	01513c23          	sd	s5,24(sp)
ffffffffc00072c8:	01613823          	sd	s6,16(sp)
ffffffffc00072cc:	01713423          	sd	s7,8(sp)
ffffffffc00072d0:	01813023          	sd	s8,0(sp)
ffffffffc00072d4:	05010413          	addi	s0,sp,80
ffffffffc00072d8:	00058993          	mv	s3,a1
ffffffffc00072dc:	00050913          	mv	s2,a0
ffffffffc00072e0:	00010537          	lui	a0,0x10
ffffffffc00072e4:	fff5049b          	addiw	s1,a0,-1
ffffffffc00072e8:	0095fbb3          	and	s7,a1,s1
ffffffffc00072ec:	00997a33          	and	s4,s2,s1
ffffffffc00072f0:	000b8513          	mv	a0,s7
ffffffffc00072f4:	000a0593          	mv	a1,s4
ffffffffc00072f8:	00000097          	auipc	ra,0x0
ffffffffc00072fc:	fb0080e7          	jalr	-80(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0007300:	00050a93          	mv	s5,a0
ffffffffc0007304:	01095513          	srli	a0,s2,0x10
ffffffffc0007308:	00957b33          	and	s6,a0,s1
ffffffffc000730c:	010adc13          	srli	s8,s5,0x10
ffffffffc0007310:	000b8513          	mv	a0,s7
ffffffffc0007314:	000b0593          	mv	a1,s6
ffffffffc0007318:	00000097          	auipc	ra,0x0
ffffffffc000731c:	f90080e7          	jalr	-112(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0007320:	00ac0c33          	add	s8,s8,a0
ffffffffc0007324:	0109d513          	srli	a0,s3,0x10
ffffffffc0007328:	00957bb3          	and	s7,a0,s1
ffffffffc000732c:	000b8513          	mv	a0,s7
ffffffffc0007330:	000b0593          	mv	a1,s6
ffffffffc0007334:	00000097          	auipc	ra,0x0
ffffffffc0007338:	f74080e7          	jalr	-140(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc000733c:	00050b13          	mv	s6,a0
ffffffffc0007340:	02095593          	srli	a1,s2,0x20
ffffffffc0007344:	00098513          	mv	a0,s3
ffffffffc0007348:	00000097          	auipc	ra,0x0
ffffffffc000734c:	f60080e7          	jalr	-160(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0007350:	00ab0b33          	add	s6,s6,a0
ffffffffc0007354:	0209d513          	srli	a0,s3,0x20
ffffffffc0007358:	00090593          	mv	a1,s2
ffffffffc000735c:	00000097          	auipc	ra,0x0
ffffffffc0007360:	f4c080e7          	jalr	-180(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0007364:	00ab0533          	add	a0,s6,a0
ffffffffc0007368:	010c559b          	srliw	a1,s8,0x10
ffffffffc000736c:	00b50933          	add	s2,a0,a1
ffffffffc0007370:	009c79b3          	and	s3,s8,s1
ffffffffc0007374:	000b8513          	mv	a0,s7
ffffffffc0007378:	000a0593          	mv	a1,s4
ffffffffc000737c:	00000097          	auipc	ra,0x0
ffffffffc0007380:	f2c080e7          	jalr	-212(ra) # ffffffffc00072a8 <__muldi3>
ffffffffc0007384:	00a98533          	add	a0,s3,a0
ffffffffc0007388:	0105559b          	srliw	a1,a0,0x10
ffffffffc000738c:	00b905b3          	add	a1,s2,a1
ffffffffc0007390:	009af633          	and	a2,s5,s1
ffffffffc0007394:	01051513          	slli	a0,a0,0x10
ffffffffc0007398:	00c56533          	or	a0,a0,a2
ffffffffc000739c:	02059593          	slli	a1,a1,0x20
ffffffffc00073a0:	02051513          	slli	a0,a0,0x20
ffffffffc00073a4:	02055513          	srli	a0,a0,0x20
ffffffffc00073a8:	00a5e533          	or	a0,a1,a0
ffffffffc00073ac:	00013c03          	ld	s8,0(sp)
ffffffffc00073b0:	00813b83          	ld	s7,8(sp)
ffffffffc00073b4:	01013b03          	ld	s6,16(sp)
ffffffffc00073b8:	01813a83          	ld	s5,24(sp)
ffffffffc00073bc:	02013a03          	ld	s4,32(sp)
ffffffffc00073c0:	02813983          	ld	s3,40(sp)
ffffffffc00073c4:	03013903          	ld	s2,48(sp)
ffffffffc00073c8:	03813483          	ld	s1,56(sp)
ffffffffc00073cc:	04013403          	ld	s0,64(sp)
ffffffffc00073d0:	04813083          	ld	ra,72(sp)
ffffffffc00073d4:	05010113          	addi	sp,sp,80
ffffffffc00073d8:	00008067          	ret
	...
