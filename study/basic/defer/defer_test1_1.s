os.(*File).close STEXT dupok nosplit size=26 args=0x18 locals=0x0
	0x0000 00000 (<autogenerated>:1)	TEXT	os.(*File).close(SB), DUPOK|NOSPLIT|ABIInternal, $0-24
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$0, gclocals·e6397a44f8e1b6e77d0f200b4fba5269(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0000 00000 (<autogenerated>:1)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x0000 00000 (<autogenerated>:1)	PCDATA	$0, $1
	0x0000 00000 (<autogenerated>:1)	PCDATA	$1, $1
	0x0000 00000 (<autogenerated>:1)	MOVQ	""..this+8(SP), AX
	0x0005 00005 (<autogenerated>:1)	MOVQ	(AX), AX
	0x0008 00008 (<autogenerated>:1)	PCDATA	$0, $0
	0x0008 00008 (<autogenerated>:1)	PCDATA	$1, $0
	0x0008 00008 (<autogenerated>:1)	MOVQ	AX, ""..this+8(SP)
	0x000d 00013 (<autogenerated>:1)	XORPS	X0, X0
	0x0010 00016 (<autogenerated>:1)	MOVUPS	X0, "".~r0+16(SP)
	0x0015 00021 (<autogenerated>:1)	JMP	os.(*file).close(SB)
	0x0000 48 8b 44 24 08 48 8b 00 48 89 44 24 08 0f 57 c0  H.D$.H..H.D$..W.
	0x0010 0f 11 44 24 10 e9 00 00 00 00                    ..D$......
	rel 22+4 t=8 os.(*file).close+0
"".main STEXT size=379 args=0x0 locals=0x68
	0x0000 00000 (defer_test1_1.go:9)	TEXT	"".main(SB), ABIInternal, $104-0
	0x0000 00000 (defer_test1_1.go:9)	MOVQ	(TLS), CX
	0x0009 00009 (defer_test1_1.go:9)	CMPQ	SP, 16(CX)
	0x000d 00013 (defer_test1_1.go:9)	JLS	369
	0x0013 00019 (defer_test1_1.go:9)	SUBQ	$104, SP
	0x0017 00023 (defer_test1_1.go:9)	MOVQ	BP, 96(SP)
	0x001c 00028 (defer_test1_1.go:9)	LEAQ	96(SP), BP
	0x0021 00033 (defer_test1_1.go:9)	FUNCDATA	$0, gclocals·7d2d5fca80364273fb07d5820a76fef4(SB)
	0x0021 00033 (defer_test1_1.go:9)	FUNCDATA	$1, gclocals·f921db378992a411b04a03b038505262(SB)
	0x0021 00033 (defer_test1_1.go:9)	FUNCDATA	$2, gclocals·3639c5e889acb2527c3873192ba4ec61(SB)
	0x0021 00033 (defer_test1_1.go:9)	FUNCDATA	$3, "".main.stkobj(SB)
	0x0021 00033 (defer_test1_1.go:9)	PCDATA	$0, $0
	0x0021 00033 (defer_test1_1.go:9)	PCDATA	$1, $0
	0x0021 00033 (defer_test1_1.go:9)	MOVL	$1, AX
	0x0026 00038 (defer_test1_1.go:10)	JMP	49
	0x0028 00040 (defer_test1_1.go:10)	MOVQ	"".i+64(SP), CX
	0x002d 00045 (defer_test1_1.go:10)	LEAQ	1(CX), AX
	0x0031 00049 (defer_test1_1.go:10)	CMPQ	AX, $2
	0x0035 00053 (defer_test1_1.go:10)	JGT	265
	0x003b 00059 (defer_test1_1.go:10)	MOVQ	AX, "".i+64(SP)
	0x0040 00064 (defer_test1_1.go:11)	MOVQ	AX, (SP)
	0x0044 00068 (defer_test1_1.go:11)	CALL	strconv.Itoa(SB)
	0x0049 00073 (defer_test1_1.go:11)	PCDATA	$0, $1
	0x0049 00073 (defer_test1_1.go:11)	MOVQ	8(SP), AX
	0x004e 00078 (defer_test1_1.go:11)	MOVQ	16(SP), CX
	0x0053 00083 (defer_test1_1.go:11)	PCDATA	$0, $0
	0x0053 00083 (defer_test1_1.go:11)	MOVQ	AX, (SP)
	0x0057 00087 (defer_test1_1.go:11)	MOVQ	CX, 8(SP)
	0x005c 00092 (defer_test1_1.go:11)	CALL	runtime.convTstring(SB)
	0x0061 00097 (defer_test1_1.go:11)	PCDATA	$0, $1
	0x0061 00097 (defer_test1_1.go:11)	MOVQ	16(SP), AX
	0x0066 00102 (defer_test1_1.go:11)	PCDATA	$0, $0
	0x0066 00102 (defer_test1_1.go:11)	PCDATA	$1, $1
	0x0066 00102 (defer_test1_1.go:11)	MOVQ	AX, ""..autotmp_22+72(SP)
	0x006b 00107 (defer_test1_1.go:11)	PCDATA	$0, $2
	0x006b 00107 (defer_test1_1.go:11)	LEAQ	type.[2]interface {}(SB), CX
	0x0072 00114 (defer_test1_1.go:11)	PCDATA	$0, $0
	0x0072 00114 (defer_test1_1.go:11)	MOVQ	CX, (SP)
	0x0076 00118 (defer_test1_1.go:11)	CALL	runtime.newobject(SB)
	0x007b 00123 (defer_test1_1.go:11)	PCDATA	$0, $1
	0x007b 00123 (defer_test1_1.go:11)	MOVQ	8(SP), AX
	0x0080 00128 (defer_test1_1.go:11)	PCDATA	$0, $3
	0x0080 00128 (defer_test1_1.go:11)	LEAQ	type.string(SB), CX
	0x0087 00135 (defer_test1_1.go:11)	MOVQ	CX, (AX)
	0x008a 00138 (defer_test1_1.go:11)	PCDATA	$0, $4
	0x008a 00138 (defer_test1_1.go:11)	LEAQ	""..stmp_0(SB), DX
	0x0091 00145 (defer_test1_1.go:11)	PCDATA	$0, $3
	0x0091 00145 (defer_test1_1.go:11)	MOVQ	DX, 8(AX)
	0x0095 00149 (defer_test1_1.go:11)	PCDATA	$0, $1
	0x0095 00149 (defer_test1_1.go:11)	MOVQ	CX, 16(AX)
	0x0099 00153 (defer_test1_1.go:11)	PCDATA	$0, $-2
	0x0099 00153 (defer_test1_1.go:11)	PCDATA	$1, $-2
	0x0099 00153 (defer_test1_1.go:11)	CMPL	runtime.writeBarrier(SB), $0
	0x00a0 00160 (defer_test1_1.go:11)	JNE	243
	0x00a2 00162 (defer_test1_1.go:11)	MOVQ	""..autotmp_22+72(SP), BX
	0x00a7 00167 (defer_test1_1.go:11)	MOVQ	BX, 24(AX)
	0x00ab 00171 (defer_test1_1.go:11)	PCDATA	$0, $1
	0x00ab 00171 (defer_test1_1.go:11)	PCDATA	$1, $0
	0x00ab 00171 (defer_test1_1.go:11)	MOVL	$24, (SP)
	0x00b2 00178 (defer_test1_1.go:11)	PCDATA	$0, $3
	0x00b2 00178 (defer_test1_1.go:11)	LEAQ	log.Println·f(SB), CX
	0x00b9 00185 (defer_test1_1.go:11)	PCDATA	$0, $1
	0x00b9 00185 (defer_test1_1.go:11)	MOVQ	CX, 8(SP)
	0x00be 00190 (defer_test1_1.go:11)	PCDATA	$0, $0
	0x00be 00190 (defer_test1_1.go:11)	MOVQ	AX, 16(SP)
	0x00c3 00195 (defer_test1_1.go:11)	MOVQ	$2, 24(SP)
	0x00cc 00204 (defer_test1_1.go:11)	MOVQ	$2, 32(SP)
	0x00d5 00213 (defer_test1_1.go:11)	CALL	runtime.deferproc(SB)
	0x00da 00218 (defer_test1_1.go:11)	TESTL	AX, AX
	0x00dc 00220 (defer_test1_1.go:11)	JNE	227
	0x00de 00222 (defer_test1_1.go:11)	JMP	40
	0x00e3 00227 (defer_test1_1.go:11)	XCHGL	AX, AX
	0x00e4 00228 (defer_test1_1.go:11)	CALL	runtime.deferreturn(SB)
	0x00e9 00233 (defer_test1_1.go:11)	MOVQ	96(SP), BP
	0x00ee 00238 (defer_test1_1.go:11)	ADDQ	$104, SP
	0x00f2 00242 (defer_test1_1.go:11)	RET
	0x00f3 00243 (defer_test1_1.go:11)	PCDATA	$0, $-2
	0x00f3 00243 (defer_test1_1.go:11)	PCDATA	$1, $-2
	0x00f3 00243 (defer_test1_1.go:11)	LEAQ	24(AX), DI
	0x00f7 00247 (defer_test1_1.go:11)	MOVQ	AX, BX
	0x00fa 00250 (defer_test1_1.go:11)	MOVQ	""..autotmp_22+72(SP), AX
	0x00ff 00255 (defer_test1_1.go:11)	CALL	runtime.gcWriteBarrier(SB)
	0x0104 00260 (defer_test1_1.go:11)	MOVQ	BX, AX
	0x0107 00263 (defer_test1_1.go:11)	JMP	171
	0x0109 00265 (defer_test1_1.go:13)	PCDATA	$0, $0
	0x0109 00265 (defer_test1_1.go:13)	PCDATA	$1, $2
	0x0109 00265 (defer_test1_1.go:13)	XORPS	X0, X0
	0x010c 00268 (defer_test1_1.go:13)	MOVUPS	X0, ""..autotmp_16+80(SP)
	0x0111 00273 (defer_test1_1.go:13)	PCDATA	$0, $1
	0x0111 00273 (defer_test1_1.go:13)	LEAQ	type.string(SB), AX
	0x0118 00280 (defer_test1_1.go:13)	PCDATA	$0, $0
	0x0118 00280 (defer_test1_1.go:13)	MOVQ	AX, ""..autotmp_16+80(SP)
	0x011d 00285 (defer_test1_1.go:13)	PCDATA	$0, $1
	0x011d 00285 (defer_test1_1.go:13)	LEAQ	""..stmp_1(SB), AX
	0x0124 00292 (defer_test1_1.go:13)	PCDATA	$0, $0
	0x0124 00292 (defer_test1_1.go:13)	MOVQ	AX, ""..autotmp_16+88(SP)
	0x0129 00297 (<unknown line number>)	NOP
	0x0129 00297 ($GOROOT/src/fmt/print.go:274)	PCDATA	$0, $1
	0x0129 00297 ($GOROOT/src/fmt/print.go:274)	MOVQ	os.Stdout(SB), AX
	0x0130 00304 ($GOROOT/src/fmt/print.go:274)	PCDATA	$0, $3
	0x0130 00304 ($GOROOT/src/fmt/print.go:274)	LEAQ	go.itab.*os.File,io.Writer(SB), CX
	0x0137 00311 ($GOROOT/src/fmt/print.go:274)	PCDATA	$0, $1
	0x0137 00311 ($GOROOT/src/fmt/print.go:274)	MOVQ	CX, (SP)
	0x013b 00315 ($GOROOT/src/fmt/print.go:274)	PCDATA	$0, $0
	0x013b 00315 ($GOROOT/src/fmt/print.go:274)	MOVQ	AX, 8(SP)
	0x0140 00320 ($GOROOT/src/fmt/print.go:274)	PCDATA	$0, $1
	0x0140 00320 ($GOROOT/src/fmt/print.go:274)	PCDATA	$1, $0
	0x0140 00320 ($GOROOT/src/fmt/print.go:274)	LEAQ	""..autotmp_16+80(SP), AX
	0x0145 00325 ($GOROOT/src/fmt/print.go:274)	PCDATA	$0, $0
	0x0145 00325 ($GOROOT/src/fmt/print.go:274)	MOVQ	AX, 16(SP)
	0x014a 00330 ($GOROOT/src/fmt/print.go:274)	MOVQ	$1, 24(SP)
	0x0153 00339 ($GOROOT/src/fmt/print.go:274)	MOVQ	$1, 32(SP)
	0x015c 00348 ($GOROOT/src/fmt/print.go:274)	CALL	fmt.Fprintln(SB)
	0x0161 00353 (defer_test1_1.go:14)	XCHGL	AX, AX
	0x0162 00354 (defer_test1_1.go:14)	CALL	runtime.deferreturn(SB)
	0x0167 00359 (defer_test1_1.go:14)	MOVQ	96(SP), BP
	0x016c 00364 (defer_test1_1.go:14)	ADDQ	$104, SP
	0x0170 00368 (defer_test1_1.go:14)	RET
	0x0171 00369 (defer_test1_1.go:14)	NOP
	0x0171 00369 (defer_test1_1.go:9)	PCDATA	$1, $-1
	0x0171 00369 (defer_test1_1.go:9)	PCDATA	$0, $-1
	0x0171 00369 (defer_test1_1.go:9)	CALL	runtime.morestack_noctxt(SB)
	0x0176 00374 (defer_test1_1.go:9)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 5e  eH..%....H;a...^
	0x0010 01 00 00 48 83 ec 68 48 89 6c 24 60 48 8d 6c 24  ...H..hH.l$`H.l$
	0x0020 60 b8 01 00 00 00 eb 09 48 8b 4c 24 40 48 8d 41  `.......H.L$@H.A
	0x0030 01 48 83 f8 02 0f 8f ce 00 00 00 48 89 44 24 40  .H.........H.D$@
	0x0040 48 89 04 24 e8 00 00 00 00 48 8b 44 24 08 48 8b  H..$.....H.D$.H.
	0x0050 4c 24 10 48 89 04 24 48 89 4c 24 08 e8 00 00 00  L$.H..$H.L$.....
	0x0060 00 48 8b 44 24 10 48 89 44 24 48 48 8d 0d 00 00  .H.D$.H.D$HH....
	0x0070 00 00 48 89 0c 24 e8 00 00 00 00 48 8b 44 24 08  ..H..$.....H.D$.
	0x0080 48 8d 0d 00 00 00 00 48 89 08 48 8d 15 00 00 00  H......H..H.....
	0x0090 00 48 89 50 08 48 89 48 10 83 3d 00 00 00 00 00  .H.P.H.H..=.....
	0x00a0 75 51 48 8b 5c 24 48 48 89 58 18 c7 04 24 18 00  uQH.\$HH.X...$..
	0x00b0 00 00 48 8d 0d 00 00 00 00 48 89 4c 24 08 48 89  ..H......H.L$.H.
	0x00c0 44 24 10 48 c7 44 24 18 02 00 00 00 48 c7 44 24  D$.H.D$.....H.D$
	0x00d0 20 02 00 00 00 e8 00 00 00 00 85 c0 75 05 e9 45   ...........u..E
	0x00e0 ff ff ff 90 e8 00 00 00 00 48 8b 6c 24 60 48 83  .........H.l$`H.
	0x00f0 c4 68 c3 48 8d 78 18 48 89 c3 48 8b 44 24 48 e8  .h.H.x.H..H.D$H.
	0x0100 00 00 00 00 48 89 d8 eb a2 0f 57 c0 0f 11 44 24  ....H.....W...D$
	0x0110 50 48 8d 05 00 00 00 00 48 89 44 24 50 48 8d 05  PH......H.D$PH..
	0x0120 00 00 00 00 48 89 44 24 58 48 8b 05 00 00 00 00  ....H.D$XH......
	0x0130 48 8d 0d 00 00 00 00 48 89 0c 24 48 89 44 24 08  H......H..$H.D$.
	0x0140 48 8d 44 24 50 48 89 44 24 10 48 c7 44 24 18 01  H.D$PH.D$.H.D$..
	0x0150 00 00 00 48 c7 44 24 20 01 00 00 00 e8 00 00 00  ...H.D$ ........
	0x0160 00 90 e8 00 00 00 00 48 8b 6c 24 60 48 83 c4 68  .......H.l$`H..h
	0x0170 c3 e8 00 00 00 00 e9 85 fe ff ff                 ...........
	rel 5+4 t=16 TLS+0
	rel 69+4 t=8 strconv.Itoa+0
	rel 93+4 t=8 runtime.convTstring+0
	rel 110+4 t=15 type.[2]interface {}+0
	rel 119+4 t=8 runtime.newobject+0
	rel 131+4 t=15 type.string+0
	rel 141+4 t=15 ""..stmp_0+0
	rel 155+4 t=15 runtime.writeBarrier+-1
	rel 181+4 t=15 log.Println·f+0
	rel 214+4 t=8 runtime.deferproc+0
	rel 229+4 t=8 runtime.deferreturn+0
	rel 256+4 t=8 runtime.gcWriteBarrier+0
	rel 276+4 t=15 type.string+0
	rel 288+4 t=15 ""..stmp_1+0
	rel 300+4 t=15 os.Stdout+0
	rel 307+4 t=15 go.itab.*os.File,io.Writer+0
	rel 349+4 t=8 fmt.Fprintln+0
	rel 355+4 t=8 runtime.deferreturn+0
	rel 370+4 t=8 runtime.morestack_noctxt+0
type..hash.[2]interface {} STEXT dupok size=110 args=0x18 locals=0x28
	0x0000 00000 (<autogenerated>:1)	TEXT	type..hash.[2]interface {}(SB), DUPOK|ABIInternal, $40-24
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	103
	0x000f 00015 (<autogenerated>:1)	SUBQ	$40, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, 32(SP)
	0x0018 00024 (<autogenerated>:1)	LEAQ	32(SP), BP
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$0, gclocals·1a65e721a2ccc325b382662e7ffee780(SB)
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$2, gclocals·ee104e299ed2e4539b82c61c5a4b843d(SB)
	0x001d 00029 (<autogenerated>:1)	PCDATA	$0, $0
	0x001d 00029 (<autogenerated>:1)	PCDATA	$1, $0
	0x001d 00029 (<autogenerated>:1)	XORL	AX, AX
	0x001f 00031 (<autogenerated>:1)	MOVQ	"".h+56(SP), CX
	0x0024 00036 (<autogenerated>:1)	JMP	82
	0x0026 00038 (<autogenerated>:1)	MOVQ	AX, "".i+24(SP)
	0x002b 00043 (<autogenerated>:1)	SHLQ	$4, AX
	0x002f 00047 (<autogenerated>:1)	PCDATA	$0, $1
	0x002f 00047 (<autogenerated>:1)	MOVQ	"".p+48(SP), BX
	0x0034 00052 (<autogenerated>:1)	PCDATA	$0, $2
	0x0034 00052 (<autogenerated>:1)	ADDQ	BX, AX
	0x0037 00055 (<autogenerated>:1)	PCDATA	$0, $0
	0x0037 00055 (<autogenerated>:1)	MOVQ	AX, (SP)
	0x003b 00059 (<autogenerated>:1)	MOVQ	CX, 8(SP)
	0x0040 00064 (<autogenerated>:1)	CALL	runtime.nilinterhash(SB)
	0x0045 00069 (<autogenerated>:1)	MOVQ	16(SP), CX
	0x004a 00074 (<autogenerated>:1)	MOVQ	"".i+24(SP), AX
	0x004f 00079 (<autogenerated>:1)	INCQ	AX
	0x0052 00082 (<autogenerated>:1)	CMPQ	AX, $2
	0x0056 00086 (<autogenerated>:1)	JLT	38
	0x0058 00088 (<autogenerated>:1)	PCDATA	$1, $1
	0x0058 00088 (<autogenerated>:1)	MOVQ	CX, "".~r2+64(SP)
	0x005d 00093 (<autogenerated>:1)	MOVQ	32(SP), BP
	0x0062 00098 (<autogenerated>:1)	ADDQ	$40, SP
	0x0066 00102 (<autogenerated>:1)	RET
	0x0067 00103 (<autogenerated>:1)	NOP
	0x0067 00103 (<autogenerated>:1)	PCDATA	$1, $-1
	0x0067 00103 (<autogenerated>:1)	PCDATA	$0, $-1
	0x0067 00103 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x006c 00108 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 58 48  eH..%....H;a.vXH
	0x0010 83 ec 28 48 89 6c 24 20 48 8d 6c 24 20 31 c0 48  ..(H.l$ H.l$ 1.H
	0x0020 8b 4c 24 38 eb 2c 48 89 44 24 18 48 c1 e0 04 48  .L$8.,H.D$.H...H
	0x0030 8b 5c 24 30 48 01 d8 48 89 04 24 48 89 4c 24 08  .\$0H..H..$H.L$.
	0x0040 e8 00 00 00 00 48 8b 4c 24 10 48 8b 44 24 18 48  .....H.L$.H.D$.H
	0x0050 ff c0 48 83 f8 02 7c ce 48 89 4c 24 40 48 8b 6c  ..H...|.H.L$@H.l
	0x0060 24 20 48 83 c4 28 c3 e8 00 00 00 00 eb 92        $ H..(........
	rel 5+4 t=16 TLS+0
	rel 65+4 t=8 runtime.nilinterhash+0
	rel 104+4 t=8 runtime.morestack_noctxt+0
type..eq.[2]interface {} STEXT dupok size=179 args=0x18 locals=0x30
	0x0000 00000 (<autogenerated>:1)	TEXT	type..eq.[2]interface {}(SB), DUPOK|ABIInternal, $48-24
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	169
	0x0013 00019 (<autogenerated>:1)	SUBQ	$48, SP
	0x0017 00023 (<autogenerated>:1)	MOVQ	BP, 40(SP)
	0x001c 00028 (<autogenerated>:1)	LEAQ	40(SP), BP
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$0, gclocals·dc9b0298814590ca3ffc3a889546fc8b(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$2, gclocals·a1bdf42ea3370bf425f59e11a41daee2(SB)
	0x0021 00033 (<autogenerated>:1)	PCDATA	$0, $1
	0x0021 00033 (<autogenerated>:1)	PCDATA	$1, $0
	0x0021 00033 (<autogenerated>:1)	MOVQ	"".p+56(SP), AX
	0x0026 00038 (<autogenerated>:1)	PCDATA	$0, $2
	0x0026 00038 (<autogenerated>:1)	MOVQ	"".q+64(SP), CX
	0x002b 00043 (<autogenerated>:1)	XORL	DX, DX
	0x002d 00045 (<autogenerated>:1)	JMP	72
	0x002f 00047 (<autogenerated>:1)	PCDATA	$0, $0
	0x002f 00047 (<autogenerated>:1)	MOVQ	""..autotmp_8+32(SP), BX
	0x0034 00052 (<autogenerated>:1)	LEAQ	1(BX), DX
	0x0038 00056 (<autogenerated>:1)	PCDATA	$0, $3
	0x0038 00056 (<autogenerated>:1)	MOVQ	"".p+56(SP), BX
	0x003d 00061 (<autogenerated>:1)	PCDATA	$0, $4
	0x003d 00061 (<autogenerated>:1)	MOVQ	"".q+64(SP), SI
	0x0042 00066 (<autogenerated>:1)	PCDATA	$0, $5
	0x0042 00066 (<autogenerated>:1)	MOVQ	BX, AX
	0x0045 00069 (<autogenerated>:1)	PCDATA	$0, $2
	0x0045 00069 (<autogenerated>:1)	MOVQ	SI, CX
	0x0048 00072 (<autogenerated>:1)	CMPQ	DX, $2
	0x004c 00076 (<autogenerated>:1)	JGE	154
	0x004e 00078 (<autogenerated>:1)	MOVQ	DX, BX
	0x0051 00081 (<autogenerated>:1)	SHLQ	$4, DX
	0x0055 00085 (<autogenerated>:1)	PCDATA	$0, $6
	0x0055 00085 (<autogenerated>:1)	MOVQ	8(DX)(AX*1), SI
	0x005a 00090 (<autogenerated>:1)	PCDATA	$0, $7
	0x005a 00090 (<autogenerated>:1)	MOVQ	(DX)(AX*1), DI
	0x005e 00094 (<autogenerated>:1)	PCDATA	$0, $8
	0x005e 00094 (<autogenerated>:1)	MOVQ	8(DX)(CX*1), R8
	0x0063 00099 (<autogenerated>:1)	PCDATA	$0, $9
	0x0063 00099 (<autogenerated>:1)	MOVQ	(DX)(CX*1), DX
	0x0067 00103 (<autogenerated>:1)	CMPQ	DI, DX
	0x006a 00106 (<autogenerated>:1)	JNE	139
	0x006c 00108 (<autogenerated>:1)	MOVQ	BX, ""..autotmp_8+32(SP)
	0x0071 00113 (<autogenerated>:1)	MOVQ	DI, (SP)
	0x0075 00117 (<autogenerated>:1)	PCDATA	$0, $10
	0x0075 00117 (<autogenerated>:1)	MOVQ	SI, 8(SP)
	0x007a 00122 (<autogenerated>:1)	PCDATA	$0, $0
	0x007a 00122 (<autogenerated>:1)	MOVQ	R8, 16(SP)
	0x007f 00127 (<autogenerated>:1)	CALL	runtime.efaceeq(SB)
	0x0084 00132 (<autogenerated>:1)	CMPB	24(SP), $0
	0x0089 00137 (<autogenerated>:1)	JNE	47
	0x008b 00139 (<autogenerated>:1)	PCDATA	$1, $1
	0x008b 00139 (<autogenerated>:1)	MOVB	$0, "".~r2+72(SP)
	0x0090 00144 (<autogenerated>:1)	MOVQ	40(SP), BP
	0x0095 00149 (<autogenerated>:1)	ADDQ	$48, SP
	0x0099 00153 (<autogenerated>:1)	RET
	0x009a 00154 (<autogenerated>:1)	MOVB	$1, "".~r2+72(SP)
	0x009f 00159 (<autogenerated>:1)	MOVQ	40(SP), BP
	0x00a4 00164 (<autogenerated>:1)	ADDQ	$48, SP
	0x00a8 00168 (<autogenerated>:1)	RET
	0x00a9 00169 (<autogenerated>:1)	NOP
	0x00a9 00169 (<autogenerated>:1)	PCDATA	$1, $-1
	0x00a9 00169 (<autogenerated>:1)	PCDATA	$0, $-1
	0x00a9 00169 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x00ae 00174 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 96  eH..%....H;a....
	0x0010 00 00 00 48 83 ec 30 48 89 6c 24 28 48 8d 6c 24  ...H..0H.l$(H.l$
	0x0020 28 48 8b 44 24 38 48 8b 4c 24 40 31 d2 eb 19 48  (H.D$8H.L$@1...H
	0x0030 8b 5c 24 20 48 8d 53 01 48 8b 5c 24 38 48 8b 74  .\$ H.S.H.\$8H.t
	0x0040 24 40 48 89 d8 48 89 f1 48 83 fa 02 7d 4c 48 89  $@H..H..H...}LH.
	0x0050 d3 48 c1 e2 04 48 8b 74 02 08 48 8b 3c 02 4c 8b  .H...H.t..H.<.L.
	0x0060 44 0a 08 48 8b 14 0a 48 39 d7 75 1f 48 89 5c 24  D..H...H9.u.H.\$
	0x0070 20 48 89 3c 24 48 89 74 24 08 4c 89 44 24 10 e8   H.<$H.t$.L.D$..
	0x0080 00 00 00 00 80 7c 24 18 00 75 a4 c6 44 24 48 00  .....|$..u..D$H.
	0x0090 48 8b 6c 24 28 48 83 c4 30 c3 c6 44 24 48 01 48  H.l$(H..0..D$H.H
	0x00a0 8b 6c 24 28 48 83 c4 30 c3 e8 00 00 00 00 e9 4d  .l$(H..0.......M
	0x00b0 ff ff ff                                         ...
	rel 5+4 t=16 TLS+0
	rel 128+4 t=8 runtime.efaceeq+0
	rel 170+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
go.info.fmt.Println$abstract SDWARFINFO dupok size=42
	0x0000 04 66 6d 74 2e 50 72 69 6e 74 6c 6e 00 01 01 11  .fmt.Println....
	0x0010 61 00 00 00 00 00 00 11 6e 00 01 00 00 00 00 11  a.......n.......
	0x0020 65 72 72 00 01 00 00 00 00 00                    err.......
	rel 19+4 t=28 go.info.[]interface {}+0
	rel 27+4 t=28 go.info.int+0
	rel 37+4 t=28 go.info.error+0
go.loc.os.(*File).close SDWARFLOC dupok size=0
go.info.os.(*File).close SDWARFINFO dupok size=55
	0x0000 03 6f 73 2e 28 2a 46 69 6c 65 29 2e 63 6c 6f 73  .os.(*File).clos
	0x0010 65 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  e...............
	0x0020 00 00 01 9c 00 00 00 00 01 0f 7e 72 30 00 01 ec  ..........~r0...
	0x0030 01 00 00 00 00 00 00                             .......
	rel 18+8 t=1 os.(*File).close+0
	rel 26+8 t=1 os.(*File).close+26
	rel 36+4 t=29 gofile..<autogenerated>+0
	rel 49+4 t=28 go.info.error+0
go.range.os.(*File).close SDWARFRANGE dupok size=0
go.isstmt.os.(*File).close SDWARFMISC dupok size=0
	0x0000 04 05 01 10 02 05 00                             .......
go.string."defer sim lou, " SRODATA dupok size=15
	0x0000 64 65 66 65 72 20 73 69 6d 20 6c 6f 75 2c 20     defer sim lou, 
go.string."ending" SRODATA dupok size=6
	0x0000 65 6e 64 69 6e 67                                ending
go.loc."".main SDWARFLOC size=75
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 02 00 91 50 00 00 00 00 00 00 00 00 00 00 00 00  ...P............
	0x0020 00 00 00 00 01 00 50 00 00 00 00 00 00 00 00 00  ......P.........
	0x0030 00 00 00 00 00 00 00 02 00 91 50 00 00 00 00 00  ..........P.....
	0x0040 00 00 00 00 00 00 00 00 00 00 00                 ...........
	rel 0+8 t=50 "".main+45
	rel 8+8 t=50 "".main+49
	rel 20+8 t=50 "".main+49
	rel 28+8 t=50 "".main+73
	rel 39+8 t=50 "".main+73
	rel 47+8 t=50 "".main+280
go.info."".main SDWARFINFO size=99
	0x0000 03 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 15 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 0b 69 00 0a 00 00 00 00 00 00 00 00 00 06 00  ..i.............
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 0d 00 00 00 12 00 00 00 00  ................
	0x0060 00 00 00                                         ...
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+379
	rel 27+4 t=29 gofile../Users/ytlou/Desktop/golang/golang_study/study/basic/defer/defer_test1_1.go+0
	rel 33+8 t=1 "".main+38
	rel 41+8 t=1 "".main+265
	rel 53+4 t=28 go.info.int+0
	rel 57+4 t=28 go.loc."".main+0
	rel 63+4 t=28 go.info.fmt.Println$abstract+0
	rel 67+8 t=1 "".main+297
	rel 75+8 t=1 "".main+353
	rel 83+4 t=29 gofile../Users/ytlou/Desktop/golang/golang_study/study/basic/defer/defer_test1_1.go+0
	rel 92+4 t=28 go.info.fmt.Println$abstract+15
go.range."".main SDWARFRANGE size=0
go.isstmt."".main SDWARFMISC size=0
	0x0000 04 13 04 0e 03 05 01 02 02 05 01 04 02 04 01 0b  ................
	0x0010 02 09 01 13 02 05 01 15 02 05 01 5a 02 07 01 08  ...........Z....
	0x0020 02 0f 01 16 02 03 01 1d 02 07 01 2c 02 1f 00     ...........,...
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*interface {}- SRODATA dupok size=16
	0x0000 00 00 0d 2a 69 6e 74 65 72 66 61 63 65 20 7b 7d  ...*interface {}
type.*interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 4f 0f 96 9d 00 08 08 36 00 00 00 00 00 00 00 00  O......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 48+8 t=1 type.interface {}+0
runtime.gcbits.02 SRODATA dupok size=1
	0x0000 02                                               .
type.interface {} SRODATA dupok size=80
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 e7 57 a0 18 02 08 08 14 00 00 00 00 00 00 00 00  .W..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 runtime.algarray+144
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*interface {}-+0
	rel 44+4 t=6 type.*interface {}+0
	rel 56+8 t=1 type.interface {}+80
type..namedata.*[]interface {}- SRODATA dupok size=18
	0x0000 00 00 0f 2a 5b 5d 69 6e 74 65 72 66 61 63 65 20  ...*[]interface 
	0x0010 7b 7d                                            {}
type.*[]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 f3 04 9a e7 00 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 48+8 t=1 type.[]interface {}+0
type.[]interface {} SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 70 93 ea 2f 02 08 08 17 00 00 00 00 00 00 00 00  p../............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]interface {}-+0
	rel 44+4 t=6 type.*[]interface {}+0
	rel 48+8 t=1 type.interface {}+0
type..namedata.*[1]interface {}- SRODATA dupok size=19
	0x0000 00 00 10 2a 5b 31 5d 69 6e 74 65 72 66 61 63 65  ...*[1]interface
	0x0010 20 7b 7d                                          {}
type.*[1]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 bf 03 a8 35 00 08 08 36 00 00 00 00 00 00 00 00  ...5...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 48+8 t=1 type.[1]interface {}+0
type.[1]interface {} SRODATA dupok size=72
	0x0000 10 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0010 50 91 5b fa 02 08 08 11 00 00 00 00 00 00 00 00  P.[.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 01 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+144
	rel 32+8 t=1 runtime.gcbits.02+0
	rel 40+4 t=5 type..namedata.*[1]interface {}-+0
	rel 44+4 t=6 type.*[1]interface {}+0
	rel 48+8 t=1 type.interface {}+0
	rel 56+8 t=1 type.[]interface {}+0
""..inittask SNOPTRDATA size=48
	0x0000 00 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 fmt..inittask+0
	rel 32+8 t=1 log..inittask+0
	rel 40+8 t=1 strconv..inittask+0
""..stmp_0 SRODATA size=16
	0x0000 00 00 00 00 00 00 00 00 0f 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."defer sim lou, "+0
""..stmp_1 SRODATA size=16
	0x0000 00 00 00 00 00 00 00 00 06 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."ending"+0
log.Println·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 log.Println+0
go.loc.type..hash.[2]interface {} SDWARFLOC dupok size=126
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 02 00 91 68 00 00 00 00 00 00 00 00 00 00 00 00  ...h............
	0x0020 00 00 00 00 01 00 50 00 00 00 00 00 00 00 00 00  ......P.........
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 01 00 9c 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 02 00 91 08 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00        ..............
	rel 0+8 t=50 type..hash.[2]interface {}+43
	rel 8+8 t=50 type..hash.[2]interface {}+82
	rel 20+8 t=50 type..hash.[2]interface {}+82
	rel 28+8 t=50 type..hash.[2]interface {}+110
	rel 55+8 t=50 type..hash.[2]interface {}+0
	rel 63+8 t=50 type..hash.[2]interface {}+110
	rel 90+8 t=50 type..hash.[2]interface {}+0
	rel 98+8 t=50 type..hash.[2]interface {}+110
go.info.type..hash.[2]interface {} SDWARFINFO dupok size=102
	0x0000 03 74 79 70 65 2e 2e 68 61 73 68 2e 5b 32 5d 69  .type..hash.[2]i
	0x0010 6e 74 65 72 66 61 63 65 20 7b 7d 00 00 00 00 00  nterface {}.....
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 01 9c 00 00  ................
	0x0030 00 00 01 0b 69 00 01 00 00 00 00 00 00 00 00 10  ....i...........
	0x0040 70 00 00 01 00 00 00 00 00 00 00 00 10 68 00 00  p............h..
	0x0050 01 00 00 00 00 00 00 00 00 0f 7e 72 32 00 01 01  ..........~r2...
	0x0060 00 00 00 00 00 00                                ......
	rel 28+8 t=1 type..hash.[2]interface {}+0
	rel 36+8 t=1 type..hash.[2]interface {}+110
	rel 46+4 t=29 gofile..<autogenerated>+0
	rel 55+4 t=28 go.info.int+0
	rel 59+4 t=28 go.loc.type..hash.[2]interface {}+0
	rel 68+4 t=28 go.info.*[2]interface {}+0
	rel 72+4 t=28 go.loc.type..hash.[2]interface {}+55
	rel 81+4 t=28 go.info.uintptr+0
	rel 85+4 t=28 go.loc.type..hash.[2]interface {}+90
	rel 96+4 t=28 go.info.uintptr+0
go.range.type..hash.[2]interface {} SDWARFRANGE dupok size=0
go.isstmt.type..hash.[2]interface {} SDWARFMISC dupok size=0
	0x0000 04 0f 04 0e 03 02 01 21 02 05 01 0d 02 04 01 02  .......!........
	0x0010 02 05 01 0a 02 07 00                             .......
go.loc.type..eq.[2]interface {} SDWARFLOC dupok size=106
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 01 00 51 00 00 00 00 00 00 00 00 00 00 00 00 00  ..Q.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 01 00 9c 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 02 00 91 08 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00                    ..........
	rel 0+8 t=50 type..eq.[2]interface {}+72
	rel 8+8 t=50 type..eq.[2]interface {}+85
	rel 35+8 t=50 type..eq.[2]interface {}+0
	rel 43+8 t=50 type..eq.[2]interface {}+179
	rel 70+8 t=50 type..eq.[2]interface {}+0
	rel 78+8 t=50 type..eq.[2]interface {}+179
go.info.type..eq.[2]interface {} SDWARFINFO dupok size=100
	0x0000 03 74 79 70 65 2e 2e 65 71 2e 5b 32 5d 69 6e 74  .type..eq.[2]int
	0x0010 65 72 66 61 63 65 20 7b 7d 00 00 00 00 00 00 00  erface {}.......
	0x0020 00 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00  ................
	0x0030 01 0b 69 00 01 00 00 00 00 00 00 00 00 10 70 00  ..i...........p.
	0x0040 00 01 00 00 00 00 00 00 00 00 10 71 00 00 01 00  ...........q....
	0x0050 00 00 00 00 00 00 00 0f 7e 72 32 00 01 01 00 00  ........~r2.....
	0x0060 00 00 00 00                                      ....
	rel 26+8 t=1 type..eq.[2]interface {}+0
	rel 34+8 t=1 type..eq.[2]interface {}+179
	rel 44+4 t=29 gofile..<autogenerated>+0
	rel 53+4 t=28 go.info.int+0
	rel 57+4 t=28 go.loc.type..eq.[2]interface {}+0
	rel 66+4 t=28 go.info.*[2]interface {}+0
	rel 70+4 t=28 go.loc.type..eq.[2]interface {}+35
	rel 79+4 t=28 go.info.*[2]interface {}+0
	rel 83+4 t=28 go.loc.type..eq.[2]interface {}+70
	rel 94+4 t=28 go.info.bool+0
go.range.type..eq.[2]interface {} SDWARFRANGE dupok size=0
go.isstmt.type..eq.[2]interface {} SDWARFMISC dupok size=0
	0x0000 04 13 04 0e 03 05 01 22 02 04 01 33 02 05 01 07  ......."...3....
	0x0010 02 05 01 0a 02 05 01 0a 02 0a 00                 ...........
type..hashfunc.[2]interface {} SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..hash.[2]interface {}+0
type..eqfunc.[2]interface {} SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq.[2]interface {}+0
type..alg.[2]interface {} SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc.[2]interface {}+0
	rel 8+8 t=1 type..eqfunc.[2]interface {}+0
type..namedata.*[2]interface {}- SRODATA dupok size=19
	0x0000 00 00 10 2a 5b 32 5d 69 6e 74 65 72 66 61 63 65  ...*[2]interface
	0x0010 20 7b 7d                                          {}
type.*[2]interface {} SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 be 73 2d 71 00 08 08 36 00 00 00 00 00 00 00 00  .s-q...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[2]interface {}-+0
	rel 48+8 t=1 type.[2]interface {}+0
runtime.gcbits.0a SRODATA dupok size=1
	0x0000 0a                                               .
type.[2]interface {} SRODATA dupok size=72
	0x0000 20 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00   ....... .......
	0x0010 2c 59 a4 f1 02 08 08 11 00 00 00 00 00 00 00 00  ,Y..............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 02 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 type..alg.[2]interface {}+0
	rel 32+8 t=1 runtime.gcbits.0a+0
	rel 40+4 t=5 type..namedata.*[2]interface {}-+0
	rel 44+4 t=6 type.*[2]interface {}+0
	rel 48+8 t=1 type.interface {}+0
	rel 56+8 t=1 type.[]interface {}+0
go.itab.*os.File,io.Writer SRODATA dupok size=32
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 44 b5 f3 33 00 00 00 00 00 00 00 00 00 00 00 00  D..3............
	rel 0+8 t=1 type.io.Writer+0
	rel 8+8 t=1 type.*os.File+0
	rel 24+8 t=1 os.(*File).Write+0
go.itablink.*os.File,io.Writer SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 go.itab.*os.File,io.Writer+0
type..importpath.fmt. SRODATA dupok size=6
	0x0000 00 00 03 66 6d 74                                ...fmt
type..importpath.log. SRODATA dupok size=6
	0x0000 00 00 03 6c 6f 67                                ...log
type..importpath.strconv. SRODATA dupok size=10
	0x0000 00 00 07 73 74 72 63 6f 6e 76                    ...strconv
gclocals·e6397a44f8e1b6e77d0f200b4fba5269 SRODATA dupok size=10
	0x0000 02 00 00 00 03 00 00 00 01 00                    ..........
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·9fb7f0986f647f17cb53dda1484e0f7a SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
gclocals·7d2d5fca80364273fb07d5820a76fef4 SRODATA dupok size=8
	0x0000 03 00 00 00 00 00 00 00                          ........
gclocals·f921db378992a411b04a03b038505262 SRODATA dupok size=11
	0x0000 03 00 00 00 03 00 00 00 00 01 04                 ...........
gclocals·3639c5e889acb2527c3873192ba4ec61 SRODATA dupok size=13
	0x0000 05 00 00 00 03 00 00 00 00 01 02 03 07           .............
"".main.stkobj SRODATA dupok size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.[1]interface {}+0
gclocals·1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals·ee104e299ed2e4539b82c61c5a4b843d SRODATA dupok size=11
	0x0000 03 00 00 00 04 00 00 00 00 08 01                 ...........
gclocals·dc9b0298814590ca3ffc3a889546fc8b SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 03 00                    ..........
gclocals·a1bdf42ea3370bf425f59e11a41daee2 SRODATA dupok size=19
	0x0000 0b 00 00 00 08 00 00 00 00 01 03 08 28 21 23 22  ............(!#"
	0x0010 a2 a0 80                                         ...
