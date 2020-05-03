
main:     file format elf32-littleriscv


Disassembly of section .text:

00010074 <_start>:
   10074:	00002197          	auipc	gp,0x2
   10078:	bb418193          	addi	gp,gp,-1100 # 11c28 <__global_pointer$>
   1007c:	c3418513          	addi	a0,gp,-972 # 1185c <_edata>
   10080:	c5018613          	addi	a2,gp,-944 # 11878 <__BSS_END__>
   10084:	8e09                	sub	a2,a2,a0
   10086:	4581                	li	a1,0
   10088:	227d                	jal	10236 <memset>
   1008a:	00000517          	auipc	a0,0x0
   1008e:	10e50513          	addi	a0,a0,270 # 10198 <__libc_fini_array>
   10092:	20cd                	jal	10174 <atexit>
   10094:	2a2d                	jal	101ce <__libc_init_array>
   10096:	4502                	lw	a0,0(sp)
   10098:	004c                	addi	a1,sp,4
   1009a:	4601                	li	a2,0
   1009c:	2075                	jal	10148 <main>
   1009e:	a0c5                	j	1017e <exit>

000100a0 <_fini>:
   100a0:	8082                	ret

000100a2 <deregister_tm_clones>:
   100a2:	c2818713          	addi	a4,gp,-984 # 11850 <_global_impure_ptr>
   100a6:	c2818793          	addi	a5,gp,-984 # 11850 <_global_impure_ptr>
   100aa:	00e78b63          	beq	a5,a4,100c0 <deregister_tm_clones+0x1e>
   100ae:	00000337          	lui	t1,0x0
   100b2:	00030313          	mv	t1,t1
   100b6:	00030563          	beqz	t1,100c0 <deregister_tm_clones+0x1e>
   100ba:	c2818513          	addi	a0,gp,-984 # 11850 <_global_impure_ptr>
   100be:	8302                	jr	t1
   100c0:	8082                	ret

000100c2 <register_tm_clones>:
   100c2:	c2818593          	addi	a1,gp,-984 # 11850 <_global_impure_ptr>
   100c6:	c2818793          	addi	a5,gp,-984 # 11850 <_global_impure_ptr>
   100ca:	8d9d                	sub	a1,a1,a5
   100cc:	8589                	srai	a1,a1,0x2
   100ce:	4789                	li	a5,2
   100d0:	02f5c5b3          	div	a1,a1,a5
   100d4:	c991                	beqz	a1,100e8 <register_tm_clones+0x26>
   100d6:	00000337          	lui	t1,0x0
   100da:	00030313          	mv	t1,t1
   100de:	00030563          	beqz	t1,100e8 <register_tm_clones+0x26>
   100e2:	c2818513          	addi	a0,gp,-984 # 11850 <_global_impure_ptr>
   100e6:	8302                	jr	t1
   100e8:	8082                	ret

000100ea <__do_global_dtors_aux>:
   100ea:	c341c703          	lbu	a4,-972(gp) # 1185c <_edata>
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
   10106:	41850513          	addi	a0,a0,1048 # 11418 <__FRAME_END__>
   1010a:	00000097          	auipc	ra,0x0
   1010e:	000000e7          	jalr	zero # 0 <_start-0x10074>
   10112:	4785                	li	a5,1
   10114:	c2f18a23          	sb	a5,-972(gp) # 1185c <_edata>
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
   10130:	c3818593          	addi	a1,gp,-968 # 11860 <object.5435>
   10134:	41850513          	addi	a0,a0,1048 # 11418 <__FRAME_END__>
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
   1014e:	fe042623          	sw	zero,-20(s0)
   10152:	fe042423          	sw	zero,-24(s0)
   10156:	fec42783          	lw	a5,-20(s0)
   1015a:	0785                	addi	a5,a5,1
   1015c:	fef42623          	sw	a5,-20(s0)
   10160:	fe842783          	lw	a5,-24(s0)
   10164:	17f9                	addi	a5,a5,-2
   10166:	fef42423          	sw	a5,-24(s0)
   1016a:	4781                	li	a5,0
   1016c:	853e                	mv	a0,a5
   1016e:	4472                	lw	s0,28(sp)
   10170:	6105                	addi	sp,sp,32
   10172:	8082                	ret

00010174 <atexit>:
   10174:	85aa                	mv	a1,a0
   10176:	4681                	li	a3,0
   10178:	4601                	li	a2,0
   1017a:	4501                	li	a0,0
   1017c:	a28d                	j	102de <__register_exitproc>

0001017e <exit>:
   1017e:	1141                	addi	sp,sp,-16
   10180:	4581                	li	a1,0
   10182:	c422                	sw	s0,8(sp)
   10184:	c606                	sw	ra,12(sp)
   10186:	842a                	mv	s0,a0
   10188:	2a5d                	jal	1033e <__call_exitprocs>
   1018a:	c281a503          	lw	a0,-984(gp) # 11850 <_global_impure_ptr>
   1018e:	5d5c                	lw	a5,60(a0)
   10190:	c391                	beqz	a5,10194 <exit+0x16>
   10192:	9782                	jalr	a5
   10194:	8522                	mv	a0,s0
   10196:	2c89                	jal	103e8 <_exit>

00010198 <__libc_fini_array>:
   10198:	1141                	addi	sp,sp,-16
   1019a:	67c5                	lui	a5,0x11
   1019c:	c422                	sw	s0,8(sp)
   1019e:	6445                	lui	s0,0x11
   101a0:	42078713          	addi	a4,a5,1056 # 11420 <__init_array_end>
   101a4:	42440413          	addi	s0,s0,1060 # 11424 <__fini_array_end>
   101a8:	8c19                	sub	s0,s0,a4
   101aa:	c226                	sw	s1,4(sp)
   101ac:	c606                	sw	ra,12(sp)
   101ae:	8409                	srai	s0,s0,0x2
   101b0:	42078493          	addi	s1,a5,1056
   101b4:	e411                	bnez	s0,101c0 <__libc_fini_array+0x28>
   101b6:	4422                	lw	s0,8(sp)
   101b8:	40b2                	lw	ra,12(sp)
   101ba:	4492                	lw	s1,4(sp)
   101bc:	0141                	addi	sp,sp,16
   101be:	b5cd                	j	100a0 <_fini>
   101c0:	147d                	addi	s0,s0,-1
   101c2:	00241793          	slli	a5,s0,0x2
   101c6:	97a6                	add	a5,a5,s1
   101c8:	439c                	lw	a5,0(a5)
   101ca:	9782                	jalr	a5
   101cc:	b7e5                	j	101b4 <__libc_fini_array+0x1c>

000101ce <__libc_init_array>:
   101ce:	1141                	addi	sp,sp,-16
   101d0:	67c5                	lui	a5,0x11
   101d2:	c422                	sw	s0,8(sp)
   101d4:	6445                	lui	s0,0x11
   101d6:	41c78713          	addi	a4,a5,1052 # 1141c <__frame_dummy_init_array_entry>
   101da:	41c40413          	addi	s0,s0,1052 # 1141c <__frame_dummy_init_array_entry>
   101de:	8c19                	sub	s0,s0,a4
   101e0:	c226                	sw	s1,4(sp)
   101e2:	c04a                	sw	s2,0(sp)
   101e4:	c606                	sw	ra,12(sp)
   101e6:	8409                	srai	s0,s0,0x2
   101e8:	4481                	li	s1,0
   101ea:	41c78913          	addi	s2,a5,1052
   101ee:	02849663          	bne	s1,s0,1021a <__libc_init_array+0x4c>
   101f2:	357d                	jal	100a0 <_fini>
   101f4:	67c5                	lui	a5,0x11
   101f6:	6445                	lui	s0,0x11
   101f8:	41c78713          	addi	a4,a5,1052 # 1141c <__frame_dummy_init_array_entry>
   101fc:	42040413          	addi	s0,s0,1056 # 11420 <__init_array_end>
   10200:	8c19                	sub	s0,s0,a4
   10202:	8409                	srai	s0,s0,0x2
   10204:	4481                	li	s1,0
   10206:	41c78913          	addi	s2,a5,1052
   1020a:	00849f63          	bne	s1,s0,10228 <__libc_init_array+0x5a>
   1020e:	40b2                	lw	ra,12(sp)
   10210:	4422                	lw	s0,8(sp)
   10212:	4492                	lw	s1,4(sp)
   10214:	4902                	lw	s2,0(sp)
   10216:	0141                	addi	sp,sp,16
   10218:	8082                	ret
   1021a:	00249793          	slli	a5,s1,0x2
   1021e:	97ca                	add	a5,a5,s2
   10220:	439c                	lw	a5,0(a5)
   10222:	0485                	addi	s1,s1,1
   10224:	9782                	jalr	a5
   10226:	b7e1                	j	101ee <__libc_init_array+0x20>
   10228:	00249793          	slli	a5,s1,0x2
   1022c:	97ca                	add	a5,a5,s2
   1022e:	439c                	lw	a5,0(a5)
   10230:	0485                	addi	s1,s1,1
   10232:	9782                	jalr	a5
   10234:	bfd9                	j	1020a <__libc_init_array+0x3c>

00010236 <memset>:
   10236:	433d                	li	t1,15
   10238:	872a                	mv	a4,a0
   1023a:	02c37363          	bgeu	t1,a2,10260 <memset+0x2a>
   1023e:	00f77793          	andi	a5,a4,15
   10242:	efbd                	bnez	a5,102c0 <memset+0x8a>
   10244:	e5ad                	bnez	a1,102ae <memset+0x78>
   10246:	ff067693          	andi	a3,a2,-16
   1024a:	8a3d                	andi	a2,a2,15
   1024c:	96ba                	add	a3,a3,a4
   1024e:	c30c                	sw	a1,0(a4)
   10250:	c34c                	sw	a1,4(a4)
   10252:	c70c                	sw	a1,8(a4)
   10254:	c74c                	sw	a1,12(a4)
   10256:	0741                	addi	a4,a4,16
   10258:	fed76be3          	bltu	a4,a3,1024e <memset+0x18>
   1025c:	e211                	bnez	a2,10260 <memset+0x2a>
   1025e:	8082                	ret
   10260:	40c306b3          	sub	a3,t1,a2
   10264:	068a                	slli	a3,a3,0x2
   10266:	00000297          	auipc	t0,0x0
   1026a:	9696                	add	a3,a3,t0
   1026c:	00a68067          	jr	10(a3)
   10270:	00b70723          	sb	a1,14(a4)
   10274:	00b706a3          	sb	a1,13(a4)
   10278:	00b70623          	sb	a1,12(a4)
   1027c:	00b705a3          	sb	a1,11(a4)
   10280:	00b70523          	sb	a1,10(a4)
   10284:	00b704a3          	sb	a1,9(a4)
   10288:	00b70423          	sb	a1,8(a4)
   1028c:	00b703a3          	sb	a1,7(a4)
   10290:	00b70323          	sb	a1,6(a4)
   10294:	00b702a3          	sb	a1,5(a4)
   10298:	00b70223          	sb	a1,4(a4)
   1029c:	00b701a3          	sb	a1,3(a4)
   102a0:	00b70123          	sb	a1,2(a4)
   102a4:	00b700a3          	sb	a1,1(a4)
   102a8:	00b70023          	sb	a1,0(a4)
   102ac:	8082                	ret
   102ae:	0ff5f593          	andi	a1,a1,255
   102b2:	00859693          	slli	a3,a1,0x8
   102b6:	8dd5                	or	a1,a1,a3
   102b8:	01059693          	slli	a3,a1,0x10
   102bc:	8dd5                	or	a1,a1,a3
   102be:	b761                	j	10246 <memset+0x10>
   102c0:	00279693          	slli	a3,a5,0x2
   102c4:	00000297          	auipc	t0,0x0
   102c8:	9696                	add	a3,a3,t0
   102ca:	8286                	mv	t0,ra
   102cc:	fa8680e7          	jalr	-88(a3)
   102d0:	8096                	mv	ra,t0
   102d2:	17c1                	addi	a5,a5,-16
   102d4:	8f1d                	sub	a4,a4,a5
   102d6:	963e                	add	a2,a2,a5
   102d8:	f8c374e3          	bgeu	t1,a2,10260 <memset+0x2a>
   102dc:	b7a5                	j	10244 <memset+0xe>

000102de <__register_exitproc>:
   102de:	c281a703          	lw	a4,-984(gp) # 11850 <_global_impure_ptr>
   102e2:	832a                	mv	t1,a0
   102e4:	14872783          	lw	a5,328(a4)
   102e8:	e789                	bnez	a5,102f2 <__register_exitproc+0x14>
   102ea:	14c70793          	addi	a5,a4,332
   102ee:	14f72423          	sw	a5,328(a4)
   102f2:	43d8                	lw	a4,4(a5)
   102f4:	487d                	li	a6,31
   102f6:	557d                	li	a0,-1
   102f8:	04e84263          	blt	a6,a4,1033c <__register_exitproc+0x5e>
   102fc:	00271893          	slli	a7,a4,0x2
   10300:	02030963          	beqz	t1,10332 <__register_exitproc+0x54>
   10304:	01178533          	add	a0,a5,a7
   10308:	08c52423          	sw	a2,136(a0)
   1030c:	1887a803          	lw	a6,392(a5)
   10310:	4605                	li	a2,1
   10312:	00e61633          	sll	a2,a2,a4
   10316:	00c86833          	or	a6,a6,a2
   1031a:	1907a423          	sw	a6,392(a5)
   1031e:	10d52423          	sw	a3,264(a0)
   10322:	4689                	li	a3,2
   10324:	00d31763          	bne	t1,a3,10332 <__register_exitproc+0x54>
   10328:	18c7a683          	lw	a3,396(a5)
   1032c:	8e55                	or	a2,a2,a3
   1032e:	18c7a623          	sw	a2,396(a5)
   10332:	0705                	addi	a4,a4,1
   10334:	c3d8                	sw	a4,4(a5)
   10336:	97c6                	add	a5,a5,a7
   10338:	c78c                	sw	a1,8(a5)
   1033a:	4501                	li	a0,0
   1033c:	8082                	ret

0001033e <__call_exitprocs>:
   1033e:	7179                	addi	sp,sp,-48
   10340:	ce4e                	sw	s3,28(sp)
   10342:	c281a983          	lw	s3,-984(gp) # 11850 <_global_impure_ptr>
   10346:	cc52                	sw	s4,24(sp)
   10348:	ca56                	sw	s5,20(sp)
   1034a:	c85a                	sw	s6,16(sp)
   1034c:	d606                	sw	ra,44(sp)
   1034e:	d422                	sw	s0,40(sp)
   10350:	d226                	sw	s1,36(sp)
   10352:	d04a                	sw	s2,32(sp)
   10354:	c65e                	sw	s7,12(sp)
   10356:	8aaa                	mv	s5,a0
   10358:	8a2e                	mv	s4,a1
   1035a:	4b05                	li	s6,1
   1035c:	1489a483          	lw	s1,328(s3)
   10360:	c881                	beqz	s1,10370 <__call_exitprocs+0x32>
   10362:	40c0                	lw	s0,4(s1)
   10364:	fff40913          	addi	s2,s0,-1
   10368:	040a                	slli	s0,s0,0x2
   1036a:	9426                	add	s0,s0,s1
   1036c:	00095d63          	bgez	s2,10386 <__call_exitprocs+0x48>
   10370:	50b2                	lw	ra,44(sp)
   10372:	5422                	lw	s0,40(sp)
   10374:	5492                	lw	s1,36(sp)
   10376:	5902                	lw	s2,32(sp)
   10378:	49f2                	lw	s3,28(sp)
   1037a:	4a62                	lw	s4,24(sp)
   1037c:	4ad2                	lw	s5,20(sp)
   1037e:	4b42                	lw	s6,16(sp)
   10380:	4bb2                	lw	s7,12(sp)
   10382:	6145                	addi	sp,sp,48
   10384:	8082                	ret
   10386:	000a0963          	beqz	s4,10398 <__call_exitprocs+0x5a>
   1038a:	10442783          	lw	a5,260(s0)
   1038e:	01478563          	beq	a5,s4,10398 <__call_exitprocs+0x5a>
   10392:	197d                	addi	s2,s2,-1
   10394:	1471                	addi	s0,s0,-4
   10396:	bfd9                	j	1036c <__call_exitprocs+0x2e>
   10398:	40d8                	lw	a4,4(s1)
   1039a:	405c                	lw	a5,4(s0)
   1039c:	177d                	addi	a4,a4,-1
   1039e:	03271663          	bne	a4,s2,103ca <__call_exitprocs+0x8c>
   103a2:	0124a223          	sw	s2,4(s1)
   103a6:	d7f5                	beqz	a5,10392 <__call_exitprocs+0x54>
   103a8:	1884a683          	lw	a3,392(s1)
   103ac:	012b1733          	sll	a4,s6,s2
   103b0:	0044ab83          	lw	s7,4(s1)
   103b4:	8ef9                	and	a3,a3,a4
   103b6:	ee89                	bnez	a3,103d0 <__call_exitprocs+0x92>
   103b8:	9782                	jalr	a5
   103ba:	40dc                	lw	a5,4(s1)
   103bc:	fb7790e3          	bne	a5,s7,1035c <__call_exitprocs+0x1e>
   103c0:	1489a783          	lw	a5,328(s3)
   103c4:	fc9787e3          	beq	a5,s1,10392 <__call_exitprocs+0x54>
   103c8:	bf51                	j	1035c <__call_exitprocs+0x1e>
   103ca:	00042223          	sw	zero,4(s0)
   103ce:	bfe1                	j	103a6 <__call_exitprocs+0x68>
   103d0:	18c4a683          	lw	a3,396(s1)
   103d4:	08442583          	lw	a1,132(s0)
   103d8:	8f75                	and	a4,a4,a3
   103da:	e701                	bnez	a4,103e2 <__call_exitprocs+0xa4>
   103dc:	8556                	mv	a0,s5
   103de:	9782                	jalr	a5
   103e0:	bfe9                	j	103ba <__call_exitprocs+0x7c>
   103e2:	852e                	mv	a0,a1
   103e4:	9782                	jalr	a5
   103e6:	bfd1                	j	103ba <__call_exitprocs+0x7c>

000103e8 <_exit>:
   103e8:	4581                	li	a1,0
   103ea:	4601                	li	a2,0
   103ec:	4681                	li	a3,0
   103ee:	4701                	li	a4,0
   103f0:	4781                	li	a5,0
   103f2:	05d00893          	li	a7,93
   103f6:	00000073          	ecall
   103fa:	00055b63          	bgez	a0,10410 <_exit+0x28>
   103fe:	1141                	addi	sp,sp,-16
   10400:	c422                	sw	s0,8(sp)
   10402:	842a                	mv	s0,a0
   10404:	c606                	sw	ra,12(sp)
   10406:	40800433          	neg	s0,s0
   1040a:	2021                	jal	10412 <__errno>
   1040c:	c100                	sw	s0,0(a0)
   1040e:	a001                	j	1040e <_exit+0x26>
   10410:	a001                	j	10410 <_exit+0x28>

00010412 <__errno>:
   10412:	c301a503          	lw	a0,-976(gp) # 11858 <_impure_ptr>
   10416:	8082                	ret
