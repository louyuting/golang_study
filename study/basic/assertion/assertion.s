"".InterfaceInvoke STEXT size=221 args=0x10 locals=0x20
	0x0000 00000 (assertion.go:11)	TEXT	"".InterfaceInvoke(SB), ABIInternal, $32-16
	0x0000 00000 (assertion.go:11)	MOVQ	(TLS), CX
	0x0009 00009 (assertion.go:11)	CMPQ	SP, 16(CX)
	0x000d 00013 (assertion.go:11)	JLS	211
	0x0013 00019 (assertion.go:11)	SUBQ	$32, SP
	0x0017 00023 (assertion.go:11)	MOVQ	BP, 24(SP)
	0x001c 00028 (assertion.go:11)	LEAQ	24(SP), BP
	0x0021 00033 (assertion.go:11)	FUNCDATA	$0, gclocals·09cf9819fc716118c209c2d2155a3632(SB)
	0x0021 00033 (assertion.go:11)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0021 00033 (assertion.go:11)	FUNCDATA	$2, gclocals·45c8961f671182b3b054a4e91816cc28(SB)
	0x0021 00033 (assertion.go:12)	PCDATA	$0, $0
	0x0021 00033 (assertion.go:12)	PCDATA	$1, $0
	0x0021 00033 (assertion.go:12)	MOVQ	"".i+40(SP), CX
	0x0026 00038 (assertion.go:12)	PCDATA	$0, $1
	0x0026 00038 (assertion.go:12)	LEAQ	type.*"".Student(SB), DX
	0x002d 00045 (assertion.go:12)	CMPQ	CX, DX
	0x0030 00048 (assertion.go:12)	JNE	184
	0x0036 00054 (assertion.go:13)	PCDATA	$0, $2
	0x0036 00054 (assertion.go:13)	PCDATA	$1, $1
	0x0036 00054 (assertion.go:13)	MOVQ	"".i+48(SP), DI
	0x003b 00059 (assertion.go:13)	MOVQ	$5, 8(DI)
	0x0043 00067 (assertion.go:13)	PCDATA	$0, $-2
	0x0043 00067 (assertion.go:13)	PCDATA	$1, $-2
	0x0043 00067 (assertion.go:13)	CMPL	runtime.writeBarrier(SB), $0
	0x004a 00074 (assertion.go:13)	JNE	170
	0x004c 00076 (assertion.go:13)	LEAQ	go.string."Jerry"(SB), CX
	0x0053 00083 (assertion.go:13)	MOVQ	CX, (DI)
	0x0056 00086 (assertion.go:14)	PCDATA	$0, $2
	0x0056 00086 (assertion.go:14)	PCDATA	$1, $1
	0x0056 00086 (assertion.go:14)	MOVQ	$18, 16(DI)
	0x005e 00094 (assertion.go:15)	MOVQ	$5, 32(DI)
	0x0066 00102 (assertion.go:15)	PCDATA	$0, $-2
	0x0066 00102 (assertion.go:15)	PCDATA	$1, $-2
	0x0066 00102 (assertion.go:15)	CMPL	runtime.writeBarrier(SB), $0
	0x006d 00109 (assertion.go:15)	JNE	140
	0x006f 00111 (assertion.go:15)	LEAQ	go.string."20005"(SB), AX
	0x0076 00118 (assertion.go:15)	MOVQ	AX, 24(DI)
	0x007a 00122 (assertion.go:16)	PCDATA	$0, $0
	0x007a 00122 (assertion.go:16)	PCDATA	$1, $1
	0x007a 00122 (assertion.go:16)	MOVQ	$100, 40(DI)
	0x0082 00130 (assertion.go:17)	MOVQ	24(SP), BP
	0x0087 00135 (assertion.go:17)	ADDQ	$32, SP
	0x008b 00139 (assertion.go:17)	RET
	0x008c 00140 (assertion.go:15)	PCDATA	$0, $-2
	0x008c 00140 (assertion.go:15)	PCDATA	$1, $-2
	0x008c 00140 (assertion.go:15)	LEAQ	24(DI), CX
	0x0090 00144 (assertion.go:11)	MOVQ	DI, AX
	0x0093 00147 (assertion.go:15)	MOVQ	CX, DI
	0x0096 00150 (assertion.go:11)	MOVQ	AX, DX
	0x0099 00153 (assertion.go:15)	LEAQ	go.string."20005"(SB), AX
	0x00a0 00160 (assertion.go:15)	CALL	runtime.gcWriteBarrier(SB)
	0x00a5 00165 (assertion.go:16)	MOVQ	DX, DI
	0x00a8 00168 (assertion.go:15)	JMP	122
	0x00aa 00170 (assertion.go:13)	LEAQ	go.string."Jerry"(SB), AX
	0x00b1 00177 (assertion.go:13)	CALL	runtime.gcWriteBarrier(SB)
	0x00b6 00182 (assertion.go:13)	JMP	86
	0x00b8 00184 (assertion.go:12)	PCDATA	$0, $1
	0x00b8 00184 (assertion.go:12)	PCDATA	$1, $1
	0x00b8 00184 (assertion.go:12)	MOVQ	CX, (SP)
	0x00bc 00188 (assertion.go:12)	PCDATA	$0, $0
	0x00bc 00188 (assertion.go:12)	MOVQ	DX, 8(SP)
	0x00c1 00193 (assertion.go:12)	PCDATA	$0, $3
	0x00c1 00193 (assertion.go:12)	LEAQ	type.interface {}(SB), AX
	0x00c8 00200 (assertion.go:12)	PCDATA	$0, $0
	0x00c8 00200 (assertion.go:12)	MOVQ	AX, 16(SP)
	0x00cd 00205 (assertion.go:12)	CALL	runtime.panicdottypeE(SB)
	0x00d2 00210 (assertion.go:12)	XCHGL	AX, AX
	0x00d3 00211 (assertion.go:12)	NOP
	0x00d3 00211 (assertion.go:11)	PCDATA	$1, $-1
	0x00d3 00211 (assertion.go:11)	PCDATA	$0, $-1
	0x00d3 00211 (assertion.go:11)	CALL	runtime.morestack_noctxt(SB)
	0x00d8 00216 (assertion.go:11)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 c0  eH..%....H;a....
	0x0010 00 00 00 48 83 ec 20 48 89 6c 24 18 48 8d 6c 24  ...H.. H.l$.H.l$
	0x0020 18 48 8b 4c 24 28 48 8d 15 00 00 00 00 48 39 d1  .H.L$(H......H9.
	0x0030 0f 85 82 00 00 00 48 8b 7c 24 30 48 c7 47 08 05  ......H.|$0H.G..
	0x0040 00 00 00 83 3d 00 00 00 00 00 75 5e 48 8d 0d 00  ....=.....u^H...
	0x0050 00 00 00 48 89 0f 48 c7 47 10 12 00 00 00 48 c7  ...H..H.G.....H.
	0x0060 47 20 05 00 00 00 83 3d 00 00 00 00 00 75 1d 48  G .....=.....u.H
	0x0070 8d 05 00 00 00 00 48 89 47 18 48 c7 47 28 64 00  ......H.G.H.G(d.
	0x0080 00 00 48 8b 6c 24 18 48 83 c4 20 c3 48 8d 4f 18  ..H.l$.H.. .H.O.
	0x0090 48 89 f8 48 89 cf 48 89 c2 48 8d 05 00 00 00 00  H..H..H..H......
	0x00a0 e8 00 00 00 00 48 89 d7 eb d0 48 8d 05 00 00 00  .....H....H.....
	0x00b0 00 e8 00 00 00 00 eb 9e 48 89 0c 24 48 89 54 24  ........H..$H.T$
	0x00c0 08 48 8d 05 00 00 00 00 48 89 44 24 10 e8 00 00  .H......H.D$....
	0x00d0 00 00 90 e8 00 00 00 00 e9 23 ff ff ff           .........#...
	rel 5+4 t=16 TLS+0
	rel 41+4 t=15 type.*"".Student+0
	rel 69+4 t=15 runtime.writeBarrier+-1
	rel 79+4 t=15 go.string."Jerry"+0
	rel 104+4 t=15 runtime.writeBarrier+-1
	rel 114+4 t=15 go.string."20005"+0
	rel 156+4 t=15 go.string."20005"+0
	rel 161+4 t=8 runtime.gcWriteBarrier+0
	rel 173+4 t=15 go.string."Jerry"+0
	rel 178+4 t=8 runtime.gcWriteBarrier+0
	rel 196+4 t=15 type.interface {}+0
	rel 206+4 t=8 runtime.panicdottypeE+0
	rel 212+4 t=8 runtime.morestack_noctxt+0
"".main STEXT nosplit size=107 args=0x0 locals=0x38
	0x0000 00000 (assertion.go:19)	TEXT	"".main(SB), NOSPLIT|ABIInternal, $56-0
	0x0000 00000 (assertion.go:19)	SUBQ	$56, SP
	0x0004 00004 (assertion.go:19)	MOVQ	BP, 48(SP)
	0x0009 00009 (assertion.go:19)	LEAQ	48(SP), BP
	0x000e 00014 (assertion.go:19)	FUNCDATA	$0, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x000e 00014 (assertion.go:19)	FUNCDATA	$1, gclocals·b9909dea60731102c58abcfb4db0fb31(SB)
	0x000e 00014 (assertion.go:19)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x000e 00014 (assertion.go:19)	FUNCDATA	$3, "".main.stkobj(SB)
	0x000e 00014 (assertion.go:20)	PCDATA	$0, $0
	0x000e 00014 (assertion.go:20)	PCDATA	$1, $1
	0x000e 00014 (assertion.go:20)	XORPS	X0, X0
	0x0011 00017 (assertion.go:20)	MOVUPS	X0, ""..autotmp_4(SP)
	0x0015 00021 (assertion.go:20)	MOVUPS	X0, ""..autotmp_4+16(SP)
	0x001a 00026 (assertion.go:20)	MOVUPS	X0, ""..autotmp_4+32(SP)
	0x001f 00031 (assertion.go:13)	PCDATA	$0, $1
	0x001f 00031 (assertion.go:13)	PCDATA	$1, $0
	0x001f 00031 (assertion.go:13)	LEAQ	""..autotmp_4(SP), AX
	0x0023 00035 (assertion.go:13)	PCDATA	$0, $0
	0x0023 00035 (assertion.go:13)	TESTB	AL, (AX)
	0x0025 00037 (assertion.go:21)	XCHGL	AX, AX
	0x0026 00038 (assertion.go:13)	MOVQ	$5, ""..autotmp_4+8(SP)
	0x002f 00047 (assertion.go:13)	PCDATA	$0, $1
	0x002f 00047 (assertion.go:13)	LEAQ	go.string."Jerry"(SB), AX
	0x0036 00054 (assertion.go:13)	PCDATA	$0, $0
	0x0036 00054 (assertion.go:13)	MOVQ	AX, ""..autotmp_4(SP)
	0x003a 00058 (assertion.go:14)	MOVQ	$18, ""..autotmp_4+16(SP)
	0x0043 00067 (assertion.go:15)	MOVQ	$5, ""..autotmp_4+32(SP)
	0x004c 00076 (assertion.go:15)	PCDATA	$0, $1
	0x004c 00076 (assertion.go:15)	LEAQ	go.string."20005"(SB), AX
	0x0053 00083 (assertion.go:15)	PCDATA	$0, $0
	0x0053 00083 (assertion.go:15)	MOVQ	AX, ""..autotmp_4+24(SP)
	0x0058 00088 (assertion.go:16)	MOVQ	$100, ""..autotmp_4+40(SP)
	0x0061 00097 (<unknown line number>)	MOVQ	48(SP), BP
	0x0066 00102 (<unknown line number>)	ADDQ	$56, SP
	0x006a 00106 (<unknown line number>)	RET
	0x0000 48 83 ec 38 48 89 6c 24 30 48 8d 6c 24 30 0f 57  H..8H.l$0H.l$0.W
	0x0010 c0 0f 11 04 24 0f 11 44 24 10 0f 11 44 24 20 48  ....$..D$...D$ H
	0x0020 8d 04 24 84 00 90 48 c7 44 24 08 05 00 00 00 48  ..$...H.D$.....H
	0x0030 8d 05 00 00 00 00 48 89 04 24 48 c7 44 24 10 12  ......H..$H.D$..
	0x0040 00 00 00 48 c7 44 24 20 05 00 00 00 48 8d 05 00  ...H.D$ ....H...
	0x0050 00 00 00 48 89 44 24 18 48 c7 44 24 28 64 00 00  ...H.D$.H.D$(d..
	0x0060 00 48 8b 6c 24 30 48 83 c4 38 c3                 .H.l$0H..8.
	rel 50+4 t=15 go.string."Jerry"+0
	rel 79+4 t=15 go.string."20005"+0
type..hash."".Student STEXT dupok size=189 args=0x18 locals=0x28
	0x0000 00000 (<autogenerated>:1)	TEXT	type..hash."".Student(SB), DUPOK|ABIInternal, $40-24
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	179
	0x0013 00019 (<autogenerated>:1)	SUBQ	$40, SP
	0x0017 00023 (<autogenerated>:1)	MOVQ	BP, 32(SP)
	0x001c 00028 (<autogenerated>:1)	LEAQ	32(SP), BP
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$0, gclocals·1a65e721a2ccc325b382662e7ffee780(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$2, gclocals·96839595c383af6ae8227769d90a999e(SB)
	0x0021 00033 (<autogenerated>:1)	PCDATA	$0, $1
	0x0021 00033 (<autogenerated>:1)	PCDATA	$1, $0
	0x0021 00033 (<autogenerated>:1)	MOVQ	"".p+48(SP), AX
	0x0026 00038 (<autogenerated>:1)	PCDATA	$0, $0
	0x0026 00038 (<autogenerated>:1)	MOVQ	AX, (SP)
	0x002a 00042 (<autogenerated>:1)	MOVQ	"".h+56(SP), CX
	0x002f 00047 (<autogenerated>:1)	MOVQ	CX, 8(SP)
	0x0034 00052 (<autogenerated>:1)	CALL	runtime.strhash(SB)
	0x0039 00057 (<autogenerated>:1)	MOVQ	16(SP), AX
	0x003e 00062 (<autogenerated>:1)	PCDATA	$0, $2
	0x003e 00062 (<autogenerated>:1)	MOVQ	"".p+48(SP), CX
	0x0043 00067 (<autogenerated>:1)	PCDATA	$0, $3
	0x0043 00067 (<autogenerated>:1)	LEAQ	16(CX), DX
	0x0047 00071 (<autogenerated>:1)	PCDATA	$0, $0
	0x0047 00071 (<autogenerated>:1)	MOVQ	DX, (SP)
	0x004b 00075 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0050 00080 (<autogenerated>:1)	MOVQ	$8, 16(SP)
	0x0059 00089 (<autogenerated>:1)	CALL	runtime.memhash(SB)
	0x005e 00094 (<autogenerated>:1)	MOVQ	24(SP), AX
	0x0063 00099 (<autogenerated>:1)	PCDATA	$0, $2
	0x0063 00099 (<autogenerated>:1)	MOVQ	"".p+48(SP), CX
	0x0068 00104 (<autogenerated>:1)	PCDATA	$0, $3
	0x0068 00104 (<autogenerated>:1)	LEAQ	24(CX), DX
	0x006c 00108 (<autogenerated>:1)	PCDATA	$0, $0
	0x006c 00108 (<autogenerated>:1)	MOVQ	DX, (SP)
	0x0070 00112 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0075 00117 (<autogenerated>:1)	CALL	runtime.strhash(SB)
	0x007a 00122 (<autogenerated>:1)	MOVQ	16(SP), AX
	0x007f 00127 (<autogenerated>:1)	PCDATA	$0, $2
	0x007f 00127 (<autogenerated>:1)	PCDATA	$1, $1
	0x007f 00127 (<autogenerated>:1)	MOVQ	"".p+48(SP), CX
	0x0084 00132 (<autogenerated>:1)	ADDQ	$40, CX
	0x0088 00136 (<autogenerated>:1)	PCDATA	$0, $0
	0x0088 00136 (<autogenerated>:1)	MOVQ	CX, (SP)
	0x008c 00140 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0091 00145 (<autogenerated>:1)	MOVQ	$8, 16(SP)
	0x009a 00154 (<autogenerated>:1)	CALL	runtime.memhash(SB)
	0x009f 00159 (<autogenerated>:1)	MOVQ	24(SP), AX
	0x00a4 00164 (<autogenerated>:1)	MOVQ	AX, "".~r2+64(SP)
	0x00a9 00169 (<autogenerated>:1)	MOVQ	32(SP), BP
	0x00ae 00174 (<autogenerated>:1)	ADDQ	$40, SP
	0x00b2 00178 (<autogenerated>:1)	RET
	0x00b3 00179 (<autogenerated>:1)	NOP
	0x00b3 00179 (<autogenerated>:1)	PCDATA	$1, $-1
	0x00b3 00179 (<autogenerated>:1)	PCDATA	$0, $-1
	0x00b3 00179 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x00b8 00184 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 a0  eH..%....H;a....
	0x0010 00 00 00 48 83 ec 28 48 89 6c 24 20 48 8d 6c 24  ...H..(H.l$ H.l$
	0x0020 20 48 8b 44 24 30 48 89 04 24 48 8b 4c 24 38 48   H.D$0H..$H.L$8H
	0x0030 89 4c 24 08 e8 00 00 00 00 48 8b 44 24 10 48 8b  .L$......H.D$.H.
	0x0040 4c 24 30 48 8d 51 10 48 89 14 24 48 89 44 24 08  L$0H.Q.H..$H.D$.
	0x0050 48 c7 44 24 10 08 00 00 00 e8 00 00 00 00 48 8b  H.D$..........H.
	0x0060 44 24 18 48 8b 4c 24 30 48 8d 51 18 48 89 14 24  D$.H.L$0H.Q.H..$
	0x0070 48 89 44 24 08 e8 00 00 00 00 48 8b 44 24 10 48  H.D$......H.D$.H
	0x0080 8b 4c 24 30 48 83 c1 28 48 89 0c 24 48 89 44 24  .L$0H..(H..$H.D$
	0x0090 08 48 c7 44 24 10 08 00 00 00 e8 00 00 00 00 48  .H.D$..........H
	0x00a0 8b 44 24 18 48 89 44 24 40 48 8b 6c 24 20 48 83  .D$.H.D$@H.l$ H.
	0x00b0 c4 28 c3 e8 00 00 00 00 e9 43 ff ff ff           .(.......C...
	rel 5+4 t=16 TLS+0
	rel 53+4 t=8 runtime.strhash+0
	rel 90+4 t=8 runtime.memhash+0
	rel 118+4 t=8 runtime.strhash+0
	rel 155+4 t=8 runtime.memhash+0
	rel 180+4 t=8 runtime.morestack_noctxt+0
type..eq."".Student STEXT dupok size=221 args=0x18 locals=0x28
	0x0000 00000 (<autogenerated>:1)	TEXT	type..eq."".Student(SB), DUPOK|ABIInternal, $40-24
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	211
	0x0013 00019 (<autogenerated>:1)	SUBQ	$40, SP
	0x0017 00023 (<autogenerated>:1)	MOVQ	BP, 32(SP)
	0x001c 00028 (<autogenerated>:1)	LEAQ	32(SP), BP
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$0, gclocals·ef6c193a450e4116e290c9970add59e0(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$1, gclocals·7d2d5fca80364273fb07d5820a76fef4(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$2, gclocals·05c9b3a68f2cb1c8399666bbacb49eaa(SB)
	0x0021 00033 (<autogenerated>:1)	PCDATA	$0, $1
	0x0021 00033 (<autogenerated>:1)	PCDATA	$1, $0
	0x0021 00033 (<autogenerated>:1)	MOVQ	"".p+48(SP), AX
	0x0026 00038 (<autogenerated>:1)	MOVQ	8(AX), CX
	0x002a 00042 (<autogenerated>:1)	PCDATA	$0, $2
	0x002a 00042 (<autogenerated>:1)	MOVQ	(AX), DX
	0x002d 00045 (<autogenerated>:1)	PCDATA	$0, $3
	0x002d 00045 (<autogenerated>:1)	MOVQ	"".q+56(SP), BX
	0x0032 00050 (<autogenerated>:1)	PCDATA	$0, $4
	0x0032 00050 (<autogenerated>:1)	MOVQ	(BX), SI
	0x0035 00053 (<autogenerated>:1)	CMPQ	8(BX), CX
	0x0039 00057 (<autogenerated>:1)	JEQ	172
	0x003b 00059 (<autogenerated>:1)	PCDATA	$0, $5
	0x003b 00059 (<autogenerated>:1)	XORL	CX, CX
	0x003d 00061 (<autogenerated>:1)	TESTB	CL, CL
	0x003f 00063 (<autogenerated>:1)	JEQ	168
	0x0041 00065 (<autogenerated>:1)	MOVQ	16(BX), CX
	0x0045 00069 (<autogenerated>:1)	CMPQ	16(AX), CX
	0x0049 00073 (<autogenerated>:1)	JNE	164
	0x004b 00075 (<autogenerated>:1)	PCDATA	$0, $6
	0x004b 00075 (<autogenerated>:1)	MOVQ	24(BX), CX
	0x004f 00079 (<autogenerated>:1)	MOVQ	32(AX), DX
	0x0053 00083 (<autogenerated>:1)	PCDATA	$0, $7
	0x0053 00083 (<autogenerated>:1)	MOVQ	24(AX), SI
	0x0057 00087 (<autogenerated>:1)	CMPQ	32(BX), DX
	0x005b 00091 (<autogenerated>:1)	JEQ	128
	0x005d 00093 (<autogenerated>:1)	PCDATA	$0, $5
	0x005d 00093 (<autogenerated>:1)	PCDATA	$1, $1
	0x005d 00093 (<autogenerated>:1)	XORL	CX, CX
	0x005f 00095 (<autogenerated>:1)	TESTB	CL, CL
	0x0061 00097 (<autogenerated>:1)	JEQ	124
	0x0063 00099 (<autogenerated>:1)	PCDATA	$0, $1
	0x0063 00099 (<autogenerated>:1)	MOVQ	40(BX), CX
	0x0067 00103 (<autogenerated>:1)	PCDATA	$0, $0
	0x0067 00103 (<autogenerated>:1)	CMPQ	40(AX), CX
	0x006b 00107 (<autogenerated>:1)	SETEQ	AL
	0x006e 00110 (<autogenerated>:1)	MOVB	AL, "".~r2+64(SP)
	0x0072 00114 (<autogenerated>:1)	MOVQ	32(SP), BP
	0x0077 00119 (<autogenerated>:1)	ADDQ	$40, SP
	0x007b 00123 (<autogenerated>:1)	RET
	0x007c 00124 (<autogenerated>:1)	XORL	AX, AX
	0x007e 00126 (<autogenerated>:1)	JMP	110
	0x0080 00128 (<autogenerated>:1)	PCDATA	$0, $8
	0x0080 00128 (<autogenerated>:1)	PCDATA	$1, $0
	0x0080 00128 (<autogenerated>:1)	MOVQ	SI, (SP)
	0x0084 00132 (<autogenerated>:1)	PCDATA	$0, $0
	0x0084 00132 (<autogenerated>:1)	MOVQ	CX, 8(SP)
	0x0089 00137 (<autogenerated>:1)	MOVQ	DX, 16(SP)
	0x008e 00142 (<autogenerated>:1)	CALL	runtime.memequal(SB)
	0x0093 00147 (<autogenerated>:1)	MOVBLZX	24(SP), CX
	0x0098 00152 (<autogenerated>:1)	PCDATA	$0, $1
	0x0098 00152 (<autogenerated>:1)	PCDATA	$1, $2
	0x0098 00152 (<autogenerated>:1)	MOVQ	"".p+48(SP), AX
	0x009d 00157 (<autogenerated>:1)	PCDATA	$0, $5
	0x009d 00157 (<autogenerated>:1)	PCDATA	$1, $1
	0x009d 00157 (<autogenerated>:1)	MOVQ	"".q+56(SP), BX
	0x00a2 00162 (<autogenerated>:1)	JMP	95
	0x00a4 00164 (<autogenerated>:1)	XORL	CX, CX
	0x00a6 00166 (<autogenerated>:1)	JMP	95
	0x00a8 00168 (<autogenerated>:1)	XORL	CX, CX
	0x00aa 00170 (<autogenerated>:1)	JMP	95
	0x00ac 00172 (<autogenerated>:1)	PCDATA	$0, $9
	0x00ac 00172 (<autogenerated>:1)	PCDATA	$1, $0
	0x00ac 00172 (<autogenerated>:1)	MOVQ	DX, (SP)
	0x00b0 00176 (<autogenerated>:1)	PCDATA	$0, $0
	0x00b0 00176 (<autogenerated>:1)	MOVQ	SI, 8(SP)
	0x00b5 00181 (<autogenerated>:1)	MOVQ	CX, 16(SP)
	0x00ba 00186 (<autogenerated>:1)	CALL	runtime.memequal(SB)
	0x00bf 00191 (<autogenerated>:1)	MOVBLZX	24(SP), CX
	0x00c4 00196 (<autogenerated>:1)	PCDATA	$0, $1
	0x00c4 00196 (<autogenerated>:1)	MOVQ	"".p+48(SP), AX
	0x00c9 00201 (<autogenerated>:1)	PCDATA	$0, $5
	0x00c9 00201 (<autogenerated>:1)	MOVQ	"".q+56(SP), BX
	0x00ce 00206 (<autogenerated>:1)	JMP	61
	0x00d3 00211 (<autogenerated>:1)	NOP
	0x00d3 00211 (<autogenerated>:1)	PCDATA	$1, $-1
	0x00d3 00211 (<autogenerated>:1)	PCDATA	$0, $-1
	0x00d3 00211 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x00d8 00216 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 c0  eH..%....H;a....
	0x0010 00 00 00 48 83 ec 28 48 89 6c 24 20 48 8d 6c 24  ...H..(H.l$ H.l$
	0x0020 20 48 8b 44 24 30 48 8b 48 08 48 8b 10 48 8b 5c   H.D$0H.H.H..H.\
	0x0030 24 38 48 8b 33 48 39 4b 08 74 71 31 c9 84 c9 74  $8H.3H9K.tq1...t
	0x0040 67 48 8b 4b 10 48 39 48 10 75 59 48 8b 4b 18 48  gH.K.H9H.uYH.K.H
	0x0050 8b 50 20 48 8b 70 18 48 39 53 20 74 23 31 c9 84  .P H.p.H9S t#1..
	0x0060 c9 74 19 48 8b 4b 28 48 39 48 28 0f 94 c0 88 44  .t.H.K(H9H(....D
	0x0070 24 40 48 8b 6c 24 20 48 83 c4 28 c3 31 c0 eb ee  $@H.l$ H..(.1...
	0x0080 48 89 34 24 48 89 4c 24 08 48 89 54 24 10 e8 00  H.4$H.L$.H.T$...
	0x0090 00 00 00 0f b6 4c 24 18 48 8b 44 24 30 48 8b 5c  .....L$.H.D$0H.\
	0x00a0 24 38 eb bb 31 c9 eb b7 31 c9 eb b3 48 89 14 24  $8..1...1...H..$
	0x00b0 48 89 74 24 08 48 89 4c 24 10 e8 00 00 00 00 0f  H.t$.H.L$.......
	0x00c0 b6 4c 24 18 48 8b 44 24 30 48 8b 5c 24 38 e9 6a  .L$.H.D$0H.\$8.j
	0x00d0 ff ff ff e8 00 00 00 00 e9 23 ff ff ff           .........#...
	rel 5+4 t=16 TLS+0
	rel 143+4 t=8 runtime.memequal+0
	rel 187+4 t=8 runtime.memequal+0
	rel 212+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
go.info."".InterfaceInvoke$abstract SDWARFINFO dupok size=37
	0x0000 04 2e 49 6e 74 65 72 66 61 63 65 49 6e 76 6f 6b  ..InterfaceInvok
	0x0010 65 00 01 01 11 69 00 00 00 00 00 00 0c 73 00 0c  e....i.......s..
	0x0020 00 00 00 00 00                                   .....
	rel 24+4 t=28 go.info.interface {}+0
	rel 32+4 t=28 go.info.*"".Student+0
go.string."Jerry" SRODATA dupok size=5
	0x0000 4a 65 72 72 79                                   Jerry
go.string."20005" SRODATA dupok size=5
	0x0000 32 30 30 30 35                                   20005
go.loc."".InterfaceInvoke SDWARFLOC size=41
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 07 00 9c 93 08 91 08 93 08 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00                       .........
	rel 0+8 t=50 "".InterfaceInvoke+0
	rel 8+8 t=50 "".InterfaceInvoke+221
go.info."".InterfaceInvoke SDWARFINFO size=39
	0x0000 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 01 9c 13 00 00 00 00 00 00 00 00  ................
	0x0020 0d 00 00 00 00 00 00                             .......
	rel 1+4 t=28 go.info."".InterfaceInvoke$abstract+0
	rel 5+8 t=1 "".InterfaceInvoke+0
	rel 13+8 t=1 "".InterfaceInvoke+221
	rel 24+4 t=28 go.info."".InterfaceInvoke$abstract+20
	rel 28+4 t=28 go.loc."".InterfaceInvoke+0
	rel 33+4 t=28 go.info."".InterfaceInvoke$abstract+28
go.range."".InterfaceInvoke SDWARFRANGE size=0
go.isstmt."".InterfaceInvoke SDWARFMISC size=0
	0x0000 04 13 04 0e 03 05 01 10 02 05 01 1b 02 10 01 14  ................
	0x0010 02 12 01 41 02 10 00                             ...A...
go.loc."".main SDWARFLOC size=0
go.info."".main SDWARFINFO size=51
	0x0000 03 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 07 00 00 00 00 00 00 00 00 00 00 00 00 15 00 00  ................
	0x0030 00 00 00                                         ...
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+107
	rel 27+4 t=29 gofile../Users/louyuting/Desktop/go/study_golang/study/basic/assertion/assertion.go+0
	rel 33+4 t=28 go.info."".InterfaceInvoke$abstract+0
	rel 37+4 t=28 go.range."".main+0
	rel 41+4 t=29 gofile../Users/louyuting/Desktop/go/study_golang/study/basic/assertion/assertion.go+0
go.range."".main SDWARFRANGE size=48
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=50 "".main+31
	rel 8+8 t=50 "".main+37
	rel 16+8 t=50 "".main+38
	rel 24+8 t=50 "".main+97
go.isstmt."".main SDWARFMISC size=0
	0x0000 08 0e 03 03 01 0e 02 04 01 02 02 01 01 14 02 12  ................
	0x0010 01 0c 02 09 01 0a 00                             .......
go.loc.type..hash."".Student SDWARFLOC dupok size=71
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 01 00 9c 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 02 00 91 08 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00                             .......
	rel 0+8 t=50 type..hash."".Student+0
	rel 8+8 t=50 type..hash."".Student+189
	rel 35+8 t=50 type..hash."".Student+0
	rel 43+8 t=50 type..hash."".Student+189
go.info.type..hash."".Student SDWARFINFO dupok size=85
	0x0000 03 74 79 70 65 2e 2e 68 61 73 68 2e 22 22 2e 53  .type..hash."".S
	0x0010 74 75 64 65 6e 74 00 00 00 00 00 00 00 00 00 00  tudent..........
	0x0020 00 00 00 00 00 00 00 01 9c 00 00 00 00 01 10 70  ...............p
	0x0030 00 00 01 00 00 00 00 00 00 00 00 10 68 00 00 01  ............h...
	0x0040 00 00 00 00 00 00 00 00 0f 7e 72 32 00 01 01 00  .........~r2....
	0x0050 00 00 00 00 00                                   .....
	rel 23+8 t=1 type..hash."".Student+0
	rel 31+8 t=1 type..hash."".Student+189
	rel 41+4 t=29 gofile..<autogenerated>+0
	rel 51+4 t=28 go.info.*"".Student+0
	rel 55+4 t=28 go.loc.type..hash."".Student+0
	rel 64+4 t=28 go.info.uintptr+0
	rel 68+4 t=28 go.loc.type..hash."".Student+35
	rel 79+4 t=28 go.info.uintptr+0
go.range.type..hash."".Student SDWARFRANGE dupok size=0
go.isstmt.type..hash."".Student SDWARFMISC dupok size=0
	0x0000 04 13 04 0e 03 05 01 0e 02 05 01 20 02 05 01 17  ........... ....
	0x0010 02 05 01 20 02 05 01 14 02 0a 00                 ... .......
go.loc.type..eq."".Student SDWARFLOC dupok size=71
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 01 00 9c 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 02 00 91 08 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00                             .......
	rel 0+8 t=50 type..eq."".Student+0
	rel 8+8 t=50 type..eq."".Student+221
	rel 35+8 t=50 type..eq."".Student+0
	rel 43+8 t=50 type..eq."".Student+221
go.info.type..eq."".Student SDWARFINFO dupok size=83
	0x0000 03 74 79 70 65 2e 2e 65 71 2e 22 22 2e 53 74 75  .type..eq."".Stu
	0x0010 64 65 6e 74 00 00 00 00 00 00 00 00 00 00 00 00  dent............
	0x0020 00 00 00 00 00 01 9c 00 00 00 00 01 10 70 00 00  .............p..
	0x0030 01 00 00 00 00 00 00 00 00 10 71 00 00 01 00 00  ..........q.....
	0x0040 00 00 00 00 00 00 0f 7e 72 32 00 01 01 00 00 00  .......~r2......
	0x0050 00 00 00                                         ...
	rel 21+8 t=1 type..eq."".Student+0
	rel 29+8 t=1 type..eq."".Student+221
	rel 39+4 t=29 gofile..<autogenerated>+0
	rel 49+4 t=28 go.info.*"".Student+0
	rel 53+4 t=28 go.loc.type..eq."".Student+0
	rel 62+4 t=28 go.info.*"".Student+0
	rel 66+4 t=28 go.loc.type..eq."".Student+35
	rel 77+4 t=28 go.info.bool+0
go.range.type..eq."".Student SDWARFRANGE dupok size=0
go.isstmt.type..eq."".Student SDWARFMISC dupok size=0
	0x0000 04 13 04 0e 03 05 01 15 02 04 01 02 02 04 01 18  ................
	0x0010 02 04 01 0d 02 04 01 0a 02 02 01 10 02 05 01 11  ................
	0x0020 02 02 01 02 02 02 01 10 02 05 01 14 02 0a 00     ...............
type..hashfunc."".Student SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..hash."".Student+0
type..eqfunc."".Student SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq."".Student+0
type..alg."".Student SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc."".Student+0
	rel 8+8 t=1 type..eqfunc."".Student+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*main.Student. SRODATA dupok size=16
	0x0000 01 00 0d 2a 6d 61 69 6e 2e 53 74 75 64 65 6e 74  ...*main.Student
type.*"".Student SRODATA size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 0c 31 79 12 00 08 08 36 00 00 00 00 00 00 00 00  .1y....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.Student.+0
	rel 48+8 t=1 type."".Student+0
runtime.gcbits.09 SRODATA dupok size=1
	0x0000 09                                               .
type..namedata.Name. SRODATA dupok size=7
	0x0000 01 00 04 4e 61 6d 65                             ...Name
type..namedata.Age. SRODATA dupok size=6
	0x0000 01 00 03 41 67 65                                ...Age
type..namedata.Class. SRODATA dupok size=8
	0x0000 01 00 05 43 6c 61 73 73                          ...Class
type..namedata.Score. SRODATA dupok size=8
	0x0000 01 00 05 53 63 6f 72 65                          ...Score
type."".Student SRODATA size=192
	0x0000 30 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00  0....... .......
	0x0010 da 9f 20 d4 07 08 08 19 00 00 00 00 00 00 00 00  .. .............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 04 00 00 00 00 00 00 00 04 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 70 00 00 00 00 00 00 00  ........p.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00  ........ .......
	0x0090 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 30 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  0...............
	0x00b0 00 00 00 00 00 00 00 00 50 00 00 00 00 00 00 00  ........P.......
	rel 24+8 t=1 type..alg."".Student+0
	rel 32+8 t=1 runtime.gcbits.09+0
	rel 40+4 t=5 type..namedata.*main.Student.+0
	rel 44+4 t=5 type.*"".Student+0
	rel 56+8 t=1 type."".Student+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.Name.+0
	rel 104+8 t=1 type.string+0
	rel 120+8 t=1 type..namedata.Age.+0
	rel 128+8 t=1 type.int+0
	rel 144+8 t=1 type..namedata.Class.+0
	rel 152+8 t=1 type.string+0
	rel 168+8 t=1 type..namedata.Score.+0
	rel 176+8 t=1 type.int+0
""..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
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
gclocals·09cf9819fc716118c209c2d2155a3632 SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 02 00                    ..........
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·45c8961f671182b3b054a4e91816cc28 SRODATA dupok size=12
	0x0000 04 00 00 00 07 00 00 00 00 04 40 01              ..........@.
gclocals·b9909dea60731102c58abcfb4db0fb31 SRODATA dupok size=10
	0x0000 02 00 00 00 06 00 00 00 00 09                    ..........
gclocals·9fb7f0986f647f17cb53dda1484e0f7a SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
"".main.stkobj SRODATA dupok size=24
	0x0000 01 00 00 00 00 00 00 00 d0 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type."".Student+0
gclocals·1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals·96839595c383af6ae8227769d90a999e SRODATA dupok size=12
	0x0000 04 00 00 00 03 00 00 00 00 01 02 04              ............
gclocals·ef6c193a450e4116e290c9970add59e0 SRODATA dupok size=11
	0x0000 03 00 00 00 02 00 00 00 03 00 02                 ...........
gclocals·7d2d5fca80364273fb07d5820a76fef4 SRODATA dupok size=8
	0x0000 03 00 00 00 00 00 00 00                          ........
gclocals·05c9b3a68f2cb1c8399666bbacb49eaa SRODATA dupok size=18
	0x0000 0a 00 00 00 06 00 00 00 00 01 05 0d 2d 09 0b 2b  ............-..+
	0x0010 02 20                                            . 
