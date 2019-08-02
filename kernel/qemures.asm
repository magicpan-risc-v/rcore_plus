----------------
IN: 
0x0000000000001000:  00000297          auipc           t0,0            # 0x1000
0x0000000000001004:  02028593          addi            a1,t0,32
0x0000000000001008:  f1402573          csrrs           a0,mhartid,zero

----------------
IN: 
0x000000000000100c:  0182b283          ld              t0,24(t0)
0x0000000000001010:  00028067          jr              t0

----------------
IN: 
0x0000000080000000:  00000013          nop             
0x0000000080000004:  04100313          addi            t1,zero,65
0x0000000080000008:  c08003b7          lui             t2,-1065353216
0x000000008000000c:  ff83839b          addiw           t2,t2,-8
0x0000000080000010:  00638023          sb              t1,0(t2)
0x0000000080000014:  04100313          addi            t1,zero,65
0x0000000080000018:  c08003b7          lui             t2,-1065353216
0x000000008000001c:  ff83839b          addiw           t2,t2,-8
0x0000000080000020:  00638023          sb              t1,0(t2)
0x0000000080000024:  c0014137          lui             sp,-1073659904
0x0000000080000028:  00010113          mv              sp,sp
0x000000008000002c:  04300313          addi            t1,zero,67
0x0000000080000030:  c08003b7          lui             t2,-1065353216
0x0000000080000034:  ff83839b          addiw           t2,t2,-8
0x0000000080000038:  00638023          sb              t1,0(t2)
0x000000008000003c:  c000e2b7          lui             t0,-1073684480
0x0000000080000040:  ffd00313          addi            t1,zero,-3
0x0000000080000044:  01e31313          slli            t1,t1,30
0x0000000080000048:  406282b3          sub             t0,t0,t1
0x000000008000004c:  00c2d293          srli            t0,t0,12
0x0000000080000050:  fff00313          addi            t1,zero,-1
0x0000000080000054:  03f31313          slli            t1,t1,63
0x0000000080000058:  0062e2b3          or              t0,t0,t1
0x000000008000005c:  18029073          csrrw           zero,satp,t0

----------------
IN: 
0x0000000080000060:  04200313          addi            t1,zero,66
0x0000000080000064:  002473b7          lui             t2,2387968
0x0000000080000068:  8ad3839b          addiw           t2,t2,-1875
0x000000008000006c:  00e39393          slli            t2,t2,14
0x0000000080000070:  c4d38393          addi            t2,t2,-947
0x0000000080000074:  00c39393          slli            t2,t2,12
0x0000000080000078:  5e738393          addi            t2,t2,1511
0x000000008000007c:  00d39393          slli            t2,t2,13
0x0000000080000080:  ef038393          addi            t2,t2,-272
0x0000000080000084:  00638023          sb              t1,0(t2)
0x0000000080000088:  c00032b7          lui             t0,-1073729536
0x000000008000008c:  bd828293          addi            t0,t0,-1064
0x0000000080000090:  34129073          csrrw           zero,mepc,t0

----------------
IN: 
0x0000000080000094:  fffff337          lui             t1,-4096
0x0000000080000098:  00c35313          srli            t1,t1,12
0x000000008000009c:  30331073          csrrw           zero,mideleg,t1

----------------
IN: 
0x00000000800000a0:  30231073          csrrw           zero,medeleg,t1

----------------
IN: 
0x00000000800000a4:  00100313          addi            t1,zero,1
0x00000000800000a8:  00b31313          slli            t1,t1,11
0x00000000800000ac:  00230313          addi            t1,t1,2
0x00000000800000b0:  30031073          csrrw           zero,mstatus,t1

----------------
IN: 
0x00000000800000b4:  30200073          mret            

----------------
IN: 
0xffffffffc0002bd8:  f7010113          addi            sp,sp,-144
0xffffffffc0002bdc:  08113423          sd              ra,136(sp)
0xffffffffc0002be0:  08813023          sd              s0,128(sp)
0xffffffffc0002be4:  06913c23          sd              s1,120(sp)
0xffffffffc0002be8:  07213823          sd              s2,112(sp)
0xffffffffc0002bec:  07313423          sd              s3,104(sp)
0xffffffffc0002bf0:  07413023          sd              s4,96(sp)
0xffffffffc0002bf4:  05513c23          sd              s5,88(sp)
0xffffffffc0002bf8:  05613823          sd              s6,80(sp)
0xffffffffc0002bfc:  05713423          sd              s7,72(sp)
0xffffffffc0002c00:  09010413          addi            s0,sp,144
0xffffffffc0002c04:  00050493          mv              s1,a0
0xffffffffc0002c08:  f6a43823          sd              a0,-144(s0)
0xffffffffc0002c0c:  c0009537          lui             a0,-1073704960
0xffffffffc0002c10:  38050513          addi            a0,a0,896
0xffffffffc0002c14:  faa43423          sd              a0,-88(s0)
0xffffffffc0002c18:  fa840a13          addi            s4,s0,-88
0xffffffffc0002c1c:  f9443c23          sd              s4,-104(s0)
0xffffffffc0002c20:  c0004537          lui             a0,-1073725440
0xffffffffc0002c24:  6d050a93          addi            s5,a0,1744
0xffffffffc0002c28:  fb543823          sd              s5,-80(s0)
0xffffffffc0002c2c:  00100913          addi            s2,zero,1
0xffffffffc0002c30:  fb243023          sd              s2,-96(s0)
0xffffffffc0002c34:  f8043423          sd              zero,-120(s0)
0xffffffffc0002c38:  00200993          addi            s3,zero,2
0xffffffffc0002c3c:  f9343023          sd              s3,-128(s0)
0xffffffffc0002c40:  c000a537          lui             a0,-1073700864
0xffffffffc0002c44:  37050b13          addi            s6,a0,880
0xffffffffc0002c48:  f7643c23          sd              s6,-136(s0)
0xffffffffc0002c4c:  f7840513          addi            a0,s0,-136
0xffffffffc0002c50:  ffffe097          auipc           ra,-8192        # 0xffffffffc0000c50
0xffffffffc0002c54:  a0c080e7          jalr            ra,ra,-1524

----------------
IN: 
0xffffffffc000065c:  f9010113          addi            sp,sp,-112
0xffffffffc0000660:  06113423          sd              ra,104(sp)
0xffffffffc0000664:  06813023          sd              s0,96(sp)
0xffffffffc0000668:  04913c23          sd              s1,88(sp)
0xffffffffc000066c:  05213823          sd              s2,80(sp)
0xffffffffc0000670:  05313423          sd              s3,72(sp)
0xffffffffc0000674:  05413023          sd              s4,64(sp)
0xffffffffc0000678:  07010413          addi            s0,sp,112
0xffffffffc000067c:  00050913          mv              s2,a0
0xffffffffc0000680:  c0014537          lui             a0,-1073659904
0xffffffffc0000684:  00850493          addi            s1,a0,8
0xffffffffc0000688:  00500593          addi            a1,zero,5
0xffffffffc000068c:  00048513          mv              a0,s1
0xffffffffc0000690:  00001097          auipc           ra,4096         # 0xffffffffc0001690
0xffffffffc0000694:  304080e7          jalr            ra,ra,772

----------------
IN: 
0xffffffffc0001994:  fe010113          addi            sp,sp,-32
0xffffffffc0001998:  00113c23          sd              ra,24(sp)
0xffffffffc000199c:  00813823          sd              s0,16(sp)
0xffffffffc00019a0:  00913423          sd              s1,8(sp)
0xffffffffc00019a4:  02010413          addi            s0,sp,32
0xffffffffc00019a8:  00050493          mv              s1,a0
0xffffffffc00019ac:  10002573          csrrs           a0,sstatus,zero

----------------
IN: 
0xffffffffc00019b0:  fea43023          sd              a0,-32(s0)
0xffffffffc00019b4:  fe040513          addi            a0,s0,-32
0xffffffffc00019b8:  00100593          addi            a1,zero,1
0xffffffffc00019bc:  00002097          auipc           ra,8192         # 0xffffffffc00039bc
0xffffffffc00019c0:  e24080e7          jalr            ra,ra,-476

----------------
IN: 
0xffffffffc00037e0:  ff010113          addi            sp,sp,-16
0xffffffffc00037e4:  00113423          sd              ra,8(sp)
0xffffffffc00037e8:  00813023          sd              s0,0(sp)
0xffffffffc00037ec:  01010413          addi            s0,sp,16
0xffffffffc00037f0:  04000613          addi            a2,zero,64
0xffffffffc00037f4:  02c5f463          bleu            a2,a1,40        # 0xffffffffc000381c

----------------
IN: 
0xffffffffc00037f8:  00100613          addi            a2,zero,1
0xffffffffc00037fc:  00b615b3          sll             a1,a2,a1
0xffffffffc0003800:  00053503          ld              a0,0(a0)
0xffffffffc0003804:  00b57533          and             a0,a0,a1
0xffffffffc0003808:  00a03533          snez            a0,a0
0xffffffffc000380c:  00013403          ld              s0,0(sp)
0xffffffffc0003810:  00813083          ld              ra,8(sp)
0xffffffffc0003814:  01010113          addi            sp,sp,16
0xffffffffc0003818:  00008067          ret             

----------------
IN: 
0xffffffffc00019c4:  00050593          mv              a1,a0
0xffffffffc00019c8:  00200613          addi            a2,zero,2
0xffffffffc00019cc:  10063073          csrrc           zero,sstatus,a2

----------------
IN: 
0xffffffffc00019d0:  0004b503          ld              a0,0(s1)
0xffffffffc00019d4:  00058463          beqz            a1,8            # 0xffffffffc00019dc

----------------
IN: 
0xffffffffc00019d8:  10062073          csrrs           zero,sstatus,a2

----------------
IN: 
0xffffffffc00019dc:  00813483          ld              s1,8(sp)
0xffffffffc00019e0:  01013403          ld              s0,16(sp)
0xffffffffc00019e4:  01813083          ld              ra,24(sp)
0xffffffffc00019e8:  02010113          addi            sp,sp,32
0xffffffffc00019ec:  00008067          ret             

----------------
IN: 
0xffffffffc0000698:  02050e63          beqz            a0,60           # 0xffffffffc00006d4

----------------
IN: 
0xffffffffc00006d4:  f8043c23          sd              zero,-104(s0)
0xffffffffc00006d8:  f9840593          addi            a1,s0,-104
0xffffffffc00006dc:  00100993          addi            s3,zero,1
0xffffffffc00006e0:  00500693          addi            a3,zero,5
0xffffffffc00006e4:  00048513          mv              a0,s1
0xffffffffc00006e8:  00098613          mv              a2,s3
0xffffffffc00006ec:  00068713          mv              a4,a3
0xffffffffc00006f0:  00001097          auipc           ra,4096         # 0xffffffffc00016f0
0xffffffffc00006f4:  410080e7          jalr            ra,ra,1040

----------------
IN: 
0xffffffffc0001b00:  fd010113          addi            sp,sp,-48
0xffffffffc0001b04:  02113423          sd              ra,40(sp)
0xffffffffc0001b08:  02813023          sd              s0,32(sp)
0xffffffffc0001b0c:  00913c23          sd              s1,24(sp)
0xffffffffc0001b10:  01213823          sd              s2,16(sp)
0xffffffffc0001b14:  01313423          sd              s3,8(sp)
0xffffffffc0001b18:  03010413          addi            s0,sp,48
0xffffffffc0001b1c:  00060913          mv              s2,a2
0xffffffffc0001b20:  00058993          mv              s3,a1
0xffffffffc0001b24:  00050493          mv              s1,a0
0xffffffffc0001b28:  10002573          csrrs           a0,sstatus,zero

----------------
IN: 
0xffffffffc0001b2c:  fca43823          sd              a0,-48(s0)
0xffffffffc0001b30:  fd040513          addi            a0,s0,-48
0xffffffffc0001b34:  00100593          addi            a1,zero,1
0xffffffffc0001b38:  00002097          auipc           ra,8192         # 0xffffffffc0003b38
0xffffffffc0001b3c:  ca8080e7          jalr            ra,ra,-856

----------------
IN: 
0xffffffffc0001b40:  00200613          addi            a2,zero,2
0xffffffffc0001b44:  10063073          csrrc           zero,sstatus,a2

----------------
IN: 
0xffffffffc0001b48:  0009b583          ld              a1,0(s3)
0xffffffffc0001b4c:  0004b683          ld              a3,0(s1)
0xffffffffc0001b50:  00b69a63          bne             a3,a1,20        # 0xffffffffc0001b64

----------------
IN: 
0xffffffffc0001b54:  0124b023          sd              s2,0(s1)
0xffffffffc0001b58:  00050c63          beqz            a0,24           # 0xffffffffc0001b70

----------------
IN: 
0xffffffffc0001b5c:  10062073          csrrs           zero,sstatus,a2

----------------
IN: 
0xffffffffc0001b60:  0100006f          j               16              # 0xffffffffc0001b70

----------------
IN: 
0xffffffffc0001b70:  00b6c533          xor             a0,a3,a1
0xffffffffc0001b74:  00153513          seqz            a0,a0
0xffffffffc0001b78:  00813983          ld              s3,8(sp)
0xffffffffc0001b7c:  01013903          ld              s2,16(sp)
0xffffffffc0001b80:  01813483          ld              s1,24(sp)
0xffffffffc0001b84:  02013403          ld              s0,32(sp)
0xffffffffc0001b88:  02813083          ld              ra,40(sp)
0xffffffffc0001b8c:  03010113          addi            sp,sp,48
0xffffffffc0001b90:  00008067          ret             

----------------
IN: 
0xffffffffc00006f8:  0e050663          beqz            a0,236          # 0xffffffffc00007e4

----------------
IN: 
0xffffffffc00006fc:  0134b423          sd              s3,8(s1)
0xffffffffc0000700:  0204a023          sw              zero,32(s1)
0xffffffffc0000704:  0004bc23          sd              zero,24(s1)
0xffffffffc0000708:  0004b823          sd              zero,16(s1)
0xffffffffc000070c:  fa040023          sb              zero,-96(s0)
0xffffffffc0000710:  f8943c23          sd              s1,-104(s0)
0xffffffffc0000714:  00200593          addi            a1,zero,2
0xffffffffc0000718:  00500613          addi            a2,zero,5
0xffffffffc000071c:  00048513          mv              a0,s1
0xffffffffc0000720:  00001097          auipc           ra,4096         # 0xffffffffc0001720
0xffffffffc0000724:  2d0080e7          jalr            ra,ra,720

----------------
IN: 
0xffffffffc00019f0:  fd010113          addi            sp,sp,-48
0xffffffffc00019f4:  02113423          sd              ra,40(sp)
0xffffffffc00019f8:  02813023          sd              s0,32(sp)
0xffffffffc00019fc:  00913c23          sd              s1,24(sp)
0xffffffffc0001a00:  01213823          sd              s2,16(sp)
0xffffffffc0001a04:  03010413          addi            s0,sp,48
0xffffffffc0001a08:  00058913          mv              s2,a1
0xffffffffc0001a0c:  00050493          mv              s1,a0
0xffffffffc0001a10:  10002573          csrrs           a0,sstatus,zero

----------------
IN: 
0xffffffffc0001a14:  fca43c23          sd              a0,-40(s0)
0xffffffffc0001a18:  fd840513          addi            a0,s0,-40
0xffffffffc0001a1c:  00100593          addi            a1,zero,1
0xffffffffc0001a20:  00002097          auipc           ra,8192         # 0xffffffffc0003a20
0xffffffffc0001a24:  dc0080e7          jalr            ra,ra,-576

----------------
IN: 
0xffffffffc0001a28:  00200593          addi            a1,zero,2
0xffffffffc0001a2c:  1005b073          csrrc           zero,sstatus,a1

----------------
IN: 
0xffffffffc0001a30:  0124b023          sd              s2,0(s1)
0xffffffffc0001a34:  00050463          beqz            a0,8            # 0xffffffffc0001a3c

----------------
IN: 
0xffffffffc0001a38:  1005a073          csrrs           zero,sstatus,a1

----------------
IN: 
0xffffffffc0001a3c:  01013903          ld              s2,16(sp)
0xffffffffc0001a40:  01813483          ld              s1,24(sp)
0xffffffffc0001a44:  02013403          ld              s0,32(sp)
0xffffffffc0001a48:  02813083          ld              ra,40(sp)
0xffffffffc0001a4c:  03010113          addi            sp,sp,48
0xffffffffc0001a50:  00008067          ret             

----------------
IN: 
0xffffffffc0000728:  0084ba03          ld              s4,8(s1)
0xffffffffc000072c:  f9840513          addi            a0,s0,-104
0xffffffffc0000730:  00003097          auipc           ra,12288        # 0xffffffffc0003730
0xffffffffc0000734:  3ec080e7          jalr            ra,ra,1004

----------------
IN: 
0xffffffffc0003b1c:  ff010113          addi            sp,sp,-16
0xffffffffc0003b20:  00113423          sd              ra,8(sp)
0xffffffffc0003b24:  00813023          sd              s0,0(sp)
0xffffffffc0003b28:  01010413          addi            s0,sp,16
0xffffffffc0003b2c:  00854583          lbu             a1,8(a0)
0xffffffffc0003b30:  00058c63          beqz            a1,24           # 0xffffffffc0003b48

----------------
IN: 
0xffffffffc0003b48:  00013403          ld              s0,0(sp)
0xffffffffc0003b4c:  00813083          ld              ra,8(sp)
0xffffffffc0003b50:  01010113          addi            sp,sp,16
0xffffffffc0003b54:  00008067          ret             

----------------
IN: 
0xffffffffc0000738:  f93a1ae3          bne             s4,s3,-108      # 0xffffffffc00006cc

----------------
IN: 
0xffffffffc000073c:  01048513          addi            a0,s1,16
0xffffffffc0000740:  00002097          auipc           ra,8192         # 0xffffffffc0002740
0xffffffffc0000744:  a3c080e7          jalr            ra,ra,-1476

----------------
IN: 
0xffffffffc000217c:  f1010113          addi            sp,sp,-240
0xffffffffc0002180:  0e113423          sd              ra,232(sp)
0xffffffffc0002184:  0e813023          sd              s0,224(sp)
0xffffffffc0002188:  0c913c23          sd              s1,216(sp)
0xffffffffc000218c:  0d213823          sd              s2,208(sp)
0xffffffffc0002190:  0d313423          sd              s3,200(sp)
0xffffffffc0002194:  0d413023          sd              s4,192(sp)
0xffffffffc0002198:  0b513c23          sd              s5,184(sp)
0xffffffffc000219c:  0b613823          sd              s6,176(sp)
0xffffffffc00021a0:  0b713423          sd              s7,168(sp)
0xffffffffc00021a4:  0b813023          sd              s8,160(sp)
0xffffffffc00021a8:  09913c23          sd              s9,152(sp)
0xffffffffc00021ac:  09a13823          sd              s10,144(sp)
0xffffffffc00021b0:  09b13423          sd              s11,136(sp)
0xffffffffc00021b4:  0f010413          addi            s0,sp,240
0xffffffffc00021b8:  00050993          mv              s3,a0
0xffffffffc00021bc:  10002573          csrrs           a0,sstatus,zero

----------------
IN: 
0xffffffffc00021c0:  f6a43023          sd              a0,-160(s0)
0xffffffffc00021c4:  f6040513          addi            a0,s0,-160
0xffffffffc00021c8:  00100a93          addi            s5,zero,1
0xffffffffc00021cc:  000a8593          mv              a1,s5
0xffffffffc00021d0:  00001097          auipc           ra,4096         # 0xffffffffc00031d0
0xffffffffc00021d4:  610080e7          jalr            ra,ra,1552

----------------
IN: 
0xffffffffc00021d8:  f0a43c23          sd              a0,-232(s0)
0xffffffffc00021dc:  00200693          addi            a3,zero,2
0xffffffffc00021e0:  1006b073          csrrc           zero,sstatus,a3

----------------
IN: 
0xffffffffc00021e4:  f6042023          sw              zero,-160(s0)
0xffffffffc00021e8:  01098493          addi            s1,s3,16
0xffffffffc00021ec:  f6040593          addi            a1,s0,-160
0xffffffffc00021f0:  00048513          mv              a0,s1
0xffffffffc00021f4:  000a8613          mv              a2,s5
0xffffffffc00021f8:  00068713          mv              a4,a3
0xffffffffc00021fc:  00000097          auipc           ra,0            # 0xffffffffc00021fc
0xffffffffc0002200:  858080e7          jalr            ra,ra,-1960

----------------
IN: 
0xffffffffc0001a54:  fd010113          addi            sp,sp,-48
0xffffffffc0001a58:  02113423          sd              ra,40(sp)
0xffffffffc0001a5c:  02813023          sd              s0,32(sp)
0xffffffffc0001a60:  00913c23          sd              s1,24(sp)
0xffffffffc0001a64:  01213823          sd              s2,16(sp)
0xffffffffc0001a68:  01313423          sd              s3,8(sp)
0xffffffffc0001a6c:  03010413          addi            s0,sp,48
0xffffffffc0001a70:  00060913          mv              s2,a2
0xffffffffc0001a74:  00058993          mv              s3,a1
0xffffffffc0001a78:  00050493          mv              s1,a0
0xffffffffc0001a7c:  10002573          csrrs           a0,sstatus,zero

----------------
IN: 
0xffffffffc0001a80:  fca43823          sd              a0,-48(s0)
0xffffffffc0001a84:  fd040513          addi            a0,s0,-48
0xffffffffc0001a88:  00100593          addi            a1,zero,1
0xffffffffc0001a8c:  00002097          auipc           ra,8192         # 0xffffffffc0003a8c
0xffffffffc0001a90:  d54080e7          jalr            ra,ra,-684

----------------
IN: 
0xffffffffc0001a94:  00200593          addi            a1,zero,2
0xffffffffc0001a98:  1005b073          csrrc           zero,sstatus,a1

----------------
IN: 
0xffffffffc0001a9c:  0009a703          lw              a4,0(s3)
0xffffffffc0001aa0:  02071613          slli            a2,a4,32
0xffffffffc0001aa4:  02065613          srli            a2,a2,32
0xffffffffc0001aa8:  0004a783          lw              a5,0(s1)
0xffffffffc0001aac:  02079693          slli            a3,a5,32
0xffffffffc0001ab0:  0206d693          srli            a3,a3,32
0xffffffffc0001ab4:  00e79a63          bne             a5,a4,20        # 0xffffffffc0001ac8

----------------
IN: 
0xffffffffc0001ab8:  0124a023          sw              s2,0(s1)
0xffffffffc0001abc:  00050c63          beqz            a0,24           # 0xffffffffc0001ad4

----------------
IN: 
0xffffffffc0001ad4:  0006051b          sext.w          a0,a2
0xffffffffc0001ad8:  0006859b          sext.w          a1,a3
0xffffffffc0001adc:  00a5c533          xor             a0,a1,a0
0xffffffffc0001ae0:  00153513          seqz            a0,a0
0xffffffffc0001ae4:  00813983          ld              s3,8(sp)
0xffffffffc0001ae8:  01013903          ld              s2,16(sp)
0xffffffffc0001aec:  01813483          ld              s1,24(sp)
0xffffffffc0001af0:  02013403          ld              s0,32(sp)
0xffffffffc0001af4:  02813083          ld              ra,40(sp)
0xffffffffc0001af8:  03010113          addi            sp,sp,48
0xffffffffc0001afc:  00008067          ret             

----------------
IN: 
0xffffffffc0002204:  12051263          bnez            a0,292          # 0xffffffffc0002328

----------------
IN: 
0xffffffffc0002328:  00018693          mv              a3,gp
0xffffffffc000232c:  04000513          addi            a0,zero,64
0xffffffffc0002330:  08a6f263          bleu            a0,a3,132       # 0xffffffffc00023b4

----------------
IN: 
0xffffffffc0002334:  00018493          mv              s1,gp
0xffffffffc0002338:  03800593          addi            a1,zero,56
0xffffffffc000233c:  00068513          mv              a0,a3
0xffffffffc0002340:  00006097          auipc           ra,24576        # 0xffffffffc0008340
0xffffffffc0002344:  da8080e7          jalr            ra,ra,-600

----------------
IN: 
0xffffffffc00080e8:  fb010113          addi            sp,sp,-80
0xffffffffc00080ec:  04113423          sd              ra,72(sp)
0xffffffffc00080f0:  04813023          sd              s0,64(sp)
0xffffffffc00080f4:  02913c23          sd              s1,56(sp)
0xffffffffc00080f8:  03213823          sd              s2,48(sp)
0xffffffffc00080fc:  03313423          sd              s3,40(sp)
0xffffffffc0008100:  03413023          sd              s4,32(sp)
0xffffffffc0008104:  01513c23          sd              s5,24(sp)
0xffffffffc0008108:  01613823          sd              s6,16(sp)
0xffffffffc000810c:  01713423          sd              s7,8(sp)
0xffffffffc0008110:  01813023          sd              s8,0(sp)
0xffffffffc0008114:  05010413          addi            s0,sp,80
0xffffffffc0008118:  00058993          mv              s3,a1
0xffffffffc000811c:  00050913          mv              s2,a0
0xffffffffc0008120:  00010537          lui             a0,65536
0xffffffffc0008124:  fff5049b          addiw           s1,a0,-1
0xffffffffc0008128:  0095fbb3          and             s7,a1,s1
0xffffffffc000812c:  00997a33          and             s4,s2,s1
0xffffffffc0008130:  000b8513          mv              a0,s7
0xffffffffc0008134:  000a0593          mv              a1,s4
0xffffffffc0008138:  00000097          auipc           ra,0            # 0xffffffffc0008138
0xffffffffc000813c:  fb0080e7          jalr            ra,ra,-80
