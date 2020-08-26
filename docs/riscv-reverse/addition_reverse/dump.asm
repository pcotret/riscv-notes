
main:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <_start>:
   10074:	00002197          	auipc	gp,0x2
   10078:	ba418193          	addi	gp,gp,-1116 # 11c18 <__global_pointer$>
   1007c:	c3418513          	addi	a0,gp,-972 # 1184c <_edata>
   10080:	c5018613          	addi	a2,gp,-944 # 11868 <__BSS_END__>
   10084:	8e09                	sub	a2,a2,a0
   10086:	4581                	li	a1,0
   10088:	224d                	jal	1022a <memset>
   1008a:	00000517          	auipc	a0,0x0
   1008e:	10250513          	addi	a0,a0,258 # 1018c <__libc_fini_array>
   10092:	28d9                	jal	10168 <atexit>
   10094:	223d                	jal	101c2 <__libc_init_array>
   10096:	4502                	lw	a0,0(sp)
   10098:	004c                	addi	a1,sp,4
   1009a:	4601                	li	a2,0
   1009c:	2075                	jal	10148 <main>
   1009e:	a8d1                	j	10172 <exit>

000100a0 <_fini>:
   100a0:	8082                	ret

000100a2 <deregister_tm_clones>:
   100a2:	c2818713          	addi	a4,gp,-984 # 11840 <_global_impure_ptr>
   100a6:	c2818793          	addi	a5,gp,-984 # 11840 <_global_impure_ptr>
   100aa:	00e78b63          	beq	a5,a4,100c0 <deregister_tm_clones+0x1e>
   100ae:	00000337          	lui	t1,0x0
   100b2:	00030313          	mv	t1,t1
   100b6:	00030563          	beqz	t1,100c0 <deregister_tm_clones+0x1e>
   100ba:	c2818513          	addi	a0,gp,-984 # 11840 <_global_impure_ptr>
   100be:	8302                	jr	t1
   100c0:	8082                	ret

000100c2 <register_tm_clones>:
   100c2:	c2818593          	addi	a1,gp,-984 # 11840 <_global_impure_ptr>
   100c6:	c2818793          	addi	a5,gp,-984 # 11840 <_global_impure_ptr>
   100ca:	8d9d                	sub	a1,a1,a5
   100cc:	8589                	srai	a1,a1,0x2
   100ce:	4789                	li	a5,2
   100d0:	02f5c5b3          	div	a1,a1,a5
   100d4:	c991                	beqz	a1,100e8 <register_tm_clones+0x26>
   100d6:	00000337          	lui	t1,0x0
   100da:	00030313          	mv	t1,t1
   100de:	00030563          	beqz	t1,100e8 <register_tm_clones+0x26>
   100e2:	c2818513          	addi	a0,gp,-984 # 11840 <_global_impure_ptr>
   100e6:	8302                	jr	t1
   100e8:	8082                	ret

000100ea <__do_global_dtors_aux>:
   100ea:	c341c703          	lbu	a4,-972(gp) # 1184c <_edata>
   100ee:	eb0d                	bnez	a4,10120 <__do_global_dtors_aux+0x36>
   100f0:	1141                	addi	sp,sp,-16
   100f2:	c422                	sw	s0,8(sp)
   100f4:	c606                	sw	ra,12(sp)
   100f6:	843e                	mv	s0,a5
   100f8:	376d                	jal	100a2 <deregister_tm_clones>
   100fa:	000007b7          	lui	a5,0x0
   100fe:	00078793          	mv	a5,a5
   10102:	cb81                	beqz	a5,10112 <__do_global_dtors_aux+0x28>
   10104:	6545                	lui	a0,0x11
   10106:	40c50513          	addi	a0,a0,1036 # 1140c <__FRAME_END__>
   1010a:	00000097          	auipc	ra,0x0
   1010e:	000000e7          	jalr	zero # 0 <_start-0x10074>
   10112:	4785                	li	a5,1
   10114:	c2f18a23          	sb	a5,-972(gp) # 1184c <_edata>
   10118:	40b2                	lw	ra,12(sp)
   1011a:	4422                	lw	s0,8(sp)
   1011c:	0141                	addi	sp,sp,16
   1011e:	8082                	ret
   10120:	8082                	ret

00010122 <frame_dummy>:
   10122:	000007b7          	lui	a5,0x0
   10126:	00078793          	mv	a5,a5
   1012a:	cf91                	beqz	a5,10146 <frame_dummy+0x24>
   1012c:	6545                	lui	a0,0x11
   1012e:	1141                	addi	sp,sp,-16
   10130:	c3818593          	addi	a1,gp,-968 # 11850 <object.5435>
   10134:	40c50513          	addi	a0,a0,1036 # 1140c <__FRAME_END__>
   10138:	c606                	sw	ra,12(sp)
   1013a:	00000097          	auipc	ra,0x0
   1013e:	000000e7          	jalr	zero # 0 <_start-0x10074>
   10142:	40b2                	lw	ra,12(sp)
   10144:	0141                	addi	sp,sp,16
   10146:	bfb5                	j	100c2 <register_tm_clones>

00010148 <main>:
   10148:	1101                	addi	sp,sp,-32
   1014a:	ce22                	sw	s0,28(sp)
   1014c:	1000                	addi	s0,sp,32
   1014e:	4791                	li	a5,4
   10150:	fef42623          	sw	a5,-20(s0)
   10154:	fec42783          	lw	a5,-20(s0)
   10158:	0785                	addi	a5,a5,1
   1015a:	fef42623          	sw	a5,-20(s0)
   1015e:	4781                	li	a5,0
   10160:	853e                	mv	a0,a5
   10162:	4472                	lw	s0,28(sp)
   10164:	6105                	addi	sp,sp,32
   10166:	8082                	ret

00010168 <atexit>:
   10168:	85aa                	mv	a1,a0
   1016a:	4681                	li	a3,0
   1016c:	4601                	li	a2,0
   1016e:	4501                	li	a0,0
   10170:	a28d                	j	102d2 <__register_exitproc>

00010172 <exit>:
   10172:	1141                	addi	sp,sp,-16
   10174:	4581                	li	a1,0
   10176:	c422                	sw	s0,8(sp)
   10178:	c606                	sw	ra,12(sp)
   1017a:	842a                	mv	s0,a0
   1017c:	2a5d                	jal	10332 <__call_exitprocs>
   1017e:	c281a503          	lw	a0,-984(gp) # 11840 <_global_impure_ptr>
   10182:	5d5c                	lw	a5,60(a0)
   10184:	c391                	beqz	a5,10188 <exit+0x16>
   10186:	9782                	jalr	a5
   10188:	8522                	mv	a0,s0
   1018a:	2c89                	jal	103dc <_exit>

0001018c <__libc_fini_array>:
   1018c:	1141                	addi	sp,sp,-16
   1018e:	67c5                	lui	a5,0x11
   10190:	c422                	sw	s0,8(sp)
   10192:	6445                	lui	s0,0x11
   10194:	41478713          	addi	a4,a5,1044 # 11414 <__init_array_end>
   10198:	41840413          	addi	s0,s0,1048 # 11418 <__fini_array_end>
   1019c:	8c19                	sub	s0,s0,a4
   1019e:	c226                	sw	s1,4(sp)
   101a0:	c606                	sw	ra,12(sp)
   101a2:	8409                	srai	s0,s0,0x2
   101a4:	41478493          	addi	s1,a5,1044
   101a8:	e411                	bnez	s0,101b4 <__libc_fini_array+0x28>
   101aa:	4422                	lw	s0,8(sp)
   101ac:	40b2                	lw	ra,12(sp)
   101ae:	4492                	lw	s1,4(sp)
   101b0:	0141                	addi	sp,sp,16
   101b2:	b5fd                	j	100a0 <_fini>
   101b4:	147d                	addi	s0,s0,-1
   101b6:	00241793          	slli	a5,s0,0x2
   101ba:	97a6                	add	a5,a5,s1
   101bc:	439c                	lw	a5,0(a5)
   101be:	9782                	jalr	a5
   101c0:	b7e5                	j	101a8 <__libc_fini_array+0x1c>

000101c2 <__libc_init_array>:
   101c2:	1141                	addi	sp,sp,-16
   101c4:	67c5                	lui	a5,0x11
   101c6:	c422                	sw	s0,8(sp)
   101c8:	6445                	lui	s0,0x11
   101ca:	41078713          	addi	a4,a5,1040 # 11410 <__frame_dummy_init_array_entry>
   101ce:	41040413          	addi	s0,s0,1040 # 11410 <__frame_dummy_init_array_entry>
   101d2:	8c19                	sub	s0,s0,a4
   101d4:	c226                	sw	s1,4(sp)
   101d6:	c04a                	sw	s2,0(sp)
   101d8:	c606                	sw	ra,12(sp)
   101da:	8409                	srai	s0,s0,0x2
   101dc:	4481                	li	s1,0
   101de:	41078913          	addi	s2,a5,1040
   101e2:	02849663          	bne	s1,s0,1020e <__libc_init_array+0x4c>
   101e6:	3d6d                	jal	100a0 <_fini>
   101e8:	67c5                	lui	a5,0x11
   101ea:	6445                	lui	s0,0x11
   101ec:	41078713          	addi	a4,a5,1040 # 11410 <__frame_dummy_init_array_entry>
   101f0:	41440413          	addi	s0,s0,1044 # 11414 <__init_array_end>
   101f4:	8c19                	sub	s0,s0,a4
   101f6:	8409                	srai	s0,s0,0x2
   101f8:	4481                	li	s1,0
   101fa:	41078913          	addi	s2,a5,1040
   101fe:	00849f63          	bne	s1,s0,1021c <__libc_init_array+0x5a>
   10202:	40b2                	lw	ra,12(sp)
   10204:	4422                	lw	s0,8(sp)
   10206:	4492                	lw	s1,4(sp)
   10208:	4902                	lw	s2,0(sp)
   1020a:	0141                	addi	sp,sp,16
   1020c:	8082                	ret
   1020e:	00249793          	slli	a5,s1,0x2
   10212:	97ca                	add	a5,a5,s2
   10214:	439c                	lw	a5,0(a5)
   10216:	0485                	addi	s1,s1,1
   10218:	9782                	jalr	a5
   1021a:	b7e1                	j	101e2 <__libc_init_array+0x20>
   1021c:	00249793          	slli	a5,s1,0x2
   10220:	97ca                	add	a5,a5,s2
   10222:	439c                	lw	a5,0(a5)
   10224:	0485                	addi	s1,s1,1
   10226:	9782                	jalr	a5
   10228:	bfd9                	j	101fe <__libc_init_array+0x3c>

0001022a <memset>:
   1022a:	433d                	li	t1,15
   1022c:	872a                	mv	a4,a0
   1022e:	02c37363          	bgeu	t1,a2,10254 <memset+0x2a>
   10232:	00f77793          	andi	a5,a4,15
   10236:	efbd                	bnez	a5,102b4 <memset+0x8a>
   10238:	e5ad                	bnez	a1,102a2 <memset+0x78>
   1023a:	ff067693          	andi	a3,a2,-16
   1023e:	8a3d                	andi	a2,a2,15
   10240:	96ba                	add	a3,a3,a4
   10242:	c30c                	sw	a1,0(a4)
   10244:	c34c                	sw	a1,4(a4)
   10246:	c70c                	sw	a1,8(a4)
   10248:	c74c                	sw	a1,12(a4)
   1024a:	0741                	addi	a4,a4,16
   1024c:	fed76be3          	bltu	a4,a3,10242 <memset+0x18>
   10250:	e211                	bnez	a2,10254 <memset+0x2a>
   10252:	8082                	ret
   10254:	40c306b3          	sub	a3,t1,a2
   10258:	068a                	slli	a3,a3,0x2
   1025a:	00000297          	auipc	t0,0x0
   1025e:	9696                	add	a3,a3,t0
   10260:	00a68067          	jr	10(a3)
   10264:	00b70723          	sb	a1,14(a4)
   10268:	00b706a3          	sb	a1,13(a4)
   1026c:	00b70623          	sb	a1,12(a4)
   10270:	00b705a3          	sb	a1,11(a4)
   10274:	00b70523          	sb	a1,10(a4)
   10278:	00b704a3          	sb	a1,9(a4)
   1027c:	00b70423          	sb	a1,8(a4)
   10280:	00b703a3          	sb	a1,7(a4)
   10284:	00b70323          	sb	a1,6(a4)
   10288:	00b702a3          	sb	a1,5(a4)
   1028c:	00b70223          	sb	a1,4(a4)
   10290:	00b701a3          	sb	a1,3(a4)
   10294:	00b70123          	sb	a1,2(a4)
   10298:	00b700a3          	sb	a1,1(a4)
   1029c:	00b70023          	sb	a1,0(a4)
   102a0:	8082                	ret
   102a2:	0ff5f593          	andi	a1,a1,255
   102a6:	00859693          	slli	a3,a1,0x8
   102aa:	8dd5                	or	a1,a1,a3
   102ac:	01059693          	slli	a3,a1,0x10
   102b0:	8dd5                	or	a1,a1,a3
   102b2:	b761                	j	1023a <memset+0x10>
   102b4:	00279693          	slli	a3,a5,0x2
   102b8:	00000297          	auipc	t0,0x0
   102bc:	9696                	add	a3,a3,t0
   102be:	8286                	mv	t0,ra
   102c0:	fa8680e7          	jalr	-88(a3)
   102c4:	8096                	mv	ra,t0
   102c6:	17c1                	addi	a5,a5,-16
   102c8:	8f1d                	sub	a4,a4,a5
   102ca:	963e                	add	a2,a2,a5
   102cc:	f8c374e3          	bgeu	t1,a2,10254 <memset+0x2a>
   102d0:	b7a5                	j	10238 <memset+0xe>

000102d2 <__register_exitproc>:
   102d2:	c281a703          	lw	a4,-984(gp) # 11840 <_global_impure_ptr>
   102d6:	832a                	mv	t1,a0
   102d8:	14872783          	lw	a5,328(a4)
   102dc:	e789                	bnez	a5,102e6 <__register_exitproc+0x14>
   102de:	14c70793          	addi	a5,a4,332
   102e2:	14f72423          	sw	a5,328(a4)
   102e6:	43d8                	lw	a4,4(a5)
   102e8:	487d                	li	a6,31
   102ea:	557d                	li	a0,-1
   102ec:	04e84263          	blt	a6,a4,10330 <__register_exitproc+0x5e>
   102f0:	00271893          	slli	a7,a4,0x2
   102f4:	02030963          	beqz	t1,10326 <__register_exitproc+0x54>
   102f8:	01178533          	add	a0,a5,a7
   102fc:	08c52423          	sw	a2,136(a0)
   10300:	1887a803          	lw	a6,392(a5)
   10304:	4605                	li	a2,1
   10306:	00e61633          	sll	a2,a2,a4
   1030a:	00c86833          	or	a6,a6,a2
   1030e:	1907a423          	sw	a6,392(a5)
   10312:	10d52423          	sw	a3,264(a0)
   10316:	4689                	li	a3,2
   10318:	00d31763          	bne	t1,a3,10326 <__register_exitproc+0x54>
   1031c:	18c7a683          	lw	a3,396(a5)
   10320:	8e55                	or	a2,a2,a3
   10322:	18c7a623          	sw	a2,396(a5)
   10326:	0705                	addi	a4,a4,1
   10328:	c3d8                	sw	a4,4(a5)
   1032a:	97c6                	add	a5,a5,a7
   1032c:	c78c                	sw	a1,8(a5)
   1032e:	4501                	li	a0,0
   10330:	8082                	ret

00010332 <__call_exitprocs>:
   10332:	7179                	addi	sp,sp,-48
   10334:	ce4e                	sw	s3,28(sp)
   10336:	c281a983          	lw	s3,-984(gp) # 11840 <_global_impure_ptr>
   1033a:	cc52                	sw	s4,24(sp)
   1033c:	ca56                	sw	s5,20(sp)
   1033e:	c85a                	sw	s6,16(sp)
   10340:	d606                	sw	ra,44(sp)
   10342:	d422                	sw	s0,40(sp)
   10344:	d226                	sw	s1,36(sp)
   10346:	d04a                	sw	s2,32(sp)
   10348:	c65e                	sw	s7,12(sp)
   1034a:	8aaa                	mv	s5,a0
   1034c:	8a2e                	mv	s4,a1
   1034e:	4b05                	li	s6,1
   10350:	1489a483          	lw	s1,328(s3)
   10354:	c881                	beqz	s1,10364 <__call_exitprocs+0x32>
   10356:	40c0                	lw	s0,4(s1)
   10358:	fff40913          	addi	s2,s0,-1
   1035c:	040a                	slli	s0,s0,0x2
   1035e:	9426                	add	s0,s0,s1
   10360:	00095d63          	bgez	s2,1037a <__call_exitprocs+0x48>
   10364:	50b2                	lw	ra,44(sp)
   10366:	5422                	lw	s0,40(sp)
   10368:	5492                	lw	s1,36(sp)
   1036a:	5902                	lw	s2,32(sp)
   1036c:	49f2                	lw	s3,28(sp)
   1036e:	4a62                	lw	s4,24(sp)
   10370:	4ad2                	lw	s5,20(sp)
   10372:	4b42                	lw	s6,16(sp)
   10374:	4bb2                	lw	s7,12(sp)
   10376:	6145                	addi	sp,sp,48
   10378:	8082                	ret
   1037a:	000a0963          	beqz	s4,1038c <__call_exitprocs+0x5a>
   1037e:	10442783          	lw	a5,260(s0)
   10382:	01478563          	beq	a5,s4,1038c <__call_exitprocs+0x5a>
   10386:	197d                	addi	s2,s2,-1
   10388:	1471                	addi	s0,s0,-4
   1038a:	bfd9                	j	10360 <__call_exitprocs+0x2e>
   1038c:	40d8                	lw	a4,4(s1)
   1038e:	405c                	lw	a5,4(s0)
   10390:	177d                	addi	a4,a4,-1
   10392:	03271663          	bne	a4,s2,103be <__call_exitprocs+0x8c>
   10396:	0124a223          	sw	s2,4(s1)
   1039a:	d7f5                	beqz	a5,10386 <__call_exitprocs+0x54>
   1039c:	1884a683          	lw	a3,392(s1)
   103a0:	012b1733          	sll	a4,s6,s2
   103a4:	0044ab83          	lw	s7,4(s1)
   103a8:	8ef9                	and	a3,a3,a4
   103aa:	ee89                	bnez	a3,103c4 <__call_exitprocs+0x92>
   103ac:	9782                	jalr	a5
   103ae:	40dc                	lw	a5,4(s1)
   103b0:	fb7790e3          	bne	a5,s7,10350 <__call_exitprocs+0x1e>
   103b4:	1489a783          	lw	a5,328(s3)
   103b8:	fc9787e3          	beq	a5,s1,10386 <__call_exitprocs+0x54>
   103bc:	bf51                	j	10350 <__call_exitprocs+0x1e>
   103be:	00042223          	sw	zero,4(s0)
   103c2:	bfe1                	j	1039a <__call_exitprocs+0x68>
   103c4:	18c4a683          	lw	a3,396(s1)
   103c8:	08442583          	lw	a1,132(s0)
   103cc:	8f75                	and	a4,a4,a3
   103ce:	e701                	bnez	a4,103d6 <__call_exitprocs+0xa4>
   103d0:	8556                	mv	a0,s5
   103d2:	9782                	jalr	a5
   103d4:	bfe9                	j	103ae <__call_exitprocs+0x7c>
   103d6:	852e                	mv	a0,a1
   103d8:	9782                	jalr	a5
   103da:	bfd1                	j	103ae <__call_exitprocs+0x7c>

000103dc <_exit>:
   103dc:	4581                	li	a1,0
   103de:	4601                	li	a2,0
   103e0:	4681                	li	a3,0
   103e2:	4701                	li	a4,0
   103e4:	4781                	li	a5,0
   103e6:	05d00893          	li	a7,93
   103ea:	00000073          	ecall
   103ee:	00055b63          	bgez	a0,10404 <_exit+0x28>
   103f2:	1141                	addi	sp,sp,-16
   103f4:	c422                	sw	s0,8(sp)
   103f6:	842a                	mv	s0,a0
   103f8:	c606                	sw	ra,12(sp)
   103fa:	40800433          	neg	s0,s0
   103fe:	2021                	jal	10406 <__errno>
   10400:	c100                	sw	s0,0(a0)
   10402:	a001                	j	10402 <_exit+0x26>
   10404:	a001                	j	10404 <_exit+0x28>

00010406 <__errno>:
   10406:	c301a503          	lw	a0,-976(gp) # 11848 <_impure_ptr>
   1040a:	8082                	ret
