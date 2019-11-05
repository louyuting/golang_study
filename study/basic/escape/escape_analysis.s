"".GetUserInfo STEXT size=190 args=0x8 locals=0x18
	0x0000 00000 (escape_analysis.go:9)	TEXT	"".GetUserInfo(SB), ABIInternal, $24-8
	0x0000 00000 (escape_analysis.go:9)	MOVQ	(TLS), CX
	0x0009 00009 (escape_analysis.go:9)	CMPQ	SP, 16(CX)
	0x000d 00013 (escape_analysis.go:9)	JLS	180
	0x0013 00019 (escape_analysis.go:9)	SUBQ	$24, SP
	0x0017 00023 (escape_analysis.go:9)	MOVQ	BP, 16(SP)
	0x001c 00028 (escape_analysis.go:9)	LEAQ	16(SP), BP
	0x0021 00033 (escape_analysis.go:9)	FUNCDATA	$0, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x0021 00033 (escape_analysis.go:9)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x0021 00033 (escape_analysis.go:9)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x0021 00033 (escape_analysis.go:13)	PCDATA	$0, $1
	0x0021 00033 (escape_analysis.go:13)	PCDATA	$1, $0
	0x0021 00033 (escape_analysis.go:13)	LEAQ	type."".User(SB), AX
	0x0028 00040 (escape_analysis.go:13)	PCDATA	$0, $0
	0x0028 00040 (escape_analysis.go:13)	MOVQ	AX, (SP)
	0x002c 00044 (escape_analysis.go:13)	CALL	runtime.newobject(SB)
	0x0031 00049 (escape_analysis.go:13)	PCDATA	$0, $1
	0x0031 00049 (escape_analysis.go:13)	MOVQ	8(SP), AX
	0x0036 00054 (escape_analysis.go:11)	MOVQ	$666666, (AX)
	0x003d 00061 (escape_analysis.go:12)	MOVQ	$7, 16(AX)
	0x0045 00069 (escape_analysis.go:12)	PCDATA	$0, $-2
	0x0045 00069 (escape_analysis.go:12)	PCDATA	$1, $-2
	0x0045 00069 (escape_analysis.go:12)	CMPL	runtime.writeBarrier(SB), $0
	0x004c 00076 (escape_analysis.go:12)	JNE	156
	0x004e 00078 (escape_analysis.go:12)	LEAQ	go.string."sim lou"(SB), CX
	0x0055 00085 (escape_analysis.go:12)	MOVQ	CX, 8(AX)
	0x0059 00089 (escape_analysis.go:13)	PCDATA	$0, $1
	0x0059 00089 (escape_analysis.go:13)	PCDATA	$1, $0
	0x0059 00089 (escape_analysis.go:13)	MOVQ	$35, 32(AX)
	0x0061 00097 (escape_analysis.go:13)	PCDATA	$0, $-2
	0x0061 00097 (escape_analysis.go:13)	PCDATA	$1, $-2
	0x0061 00097 (escape_analysis.go:13)	CMPL	runtime.writeBarrier(SB), $0
	0x0068 00104 (escape_analysis.go:13)	JNE	132
	0x006a 00106 (escape_analysis.go:13)	LEAQ	go.string."https://www.baidu.com/avatar/666666"(SB), CX
	0x0071 00113 (escape_analysis.go:13)	MOVQ	CX, 24(AX)
	0x0075 00117 (escape_analysis.go:10)	PCDATA	$0, $0
	0x0075 00117 (escape_analysis.go:10)	PCDATA	$1, $1
	0x0075 00117 (escape_analysis.go:10)	MOVQ	AX, "".~r0+32(SP)
	0x007a 00122 (escape_analysis.go:10)	MOVQ	16(SP), BP
	0x007f 00127 (escape_analysis.go:10)	ADDQ	$24, SP
	0x0083 00131 (escape_analysis.go:10)	RET
	0x0084 00132 (escape_analysis.go:13)	PCDATA	$0, $-2
	0x0084 00132 (escape_analysis.go:13)	PCDATA	$1, $-2
	0x0084 00132 (escape_analysis.go:13)	LEAQ	24(AX), DI
	0x0088 00136 (escape_analysis.go:13)	MOVQ	AX, CX
	0x008b 00139 (escape_analysis.go:13)	LEAQ	go.string."https://www.baidu.com/avatar/666666"(SB), AX
	0x0092 00146 (escape_analysis.go:13)	CALL	runtime.gcWriteBarrier(SB)
	0x0097 00151 (escape_analysis.go:10)	MOVQ	CX, AX
	0x009a 00154 (escape_analysis.go:13)	JMP	117
	0x009c 00156 (escape_analysis.go:12)	LEAQ	8(AX), DI
	0x00a0 00160 (escape_analysis.go:13)	MOVQ	AX, CX
	0x00a3 00163 (escape_analysis.go:12)	LEAQ	go.string."sim lou"(SB), AX
	0x00aa 00170 (escape_analysis.go:12)	CALL	runtime.gcWriteBarrier(SB)
	0x00af 00175 (escape_analysis.go:13)	MOVQ	CX, AX
	0x00b2 00178 (escape_analysis.go:12)	JMP	89
	0x00b4 00180 (escape_analysis.go:12)	NOP
	0x00b4 00180 (escape_analysis.go:9)	PCDATA	$1, $-1
	0x00b4 00180 (escape_analysis.go:9)	PCDATA	$0, $-1
	0x00b4 00180 (escape_analysis.go:9)	CALL	runtime.morestack_noctxt(SB)
	0x00b9 00185 (escape_analysis.go:9)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 a1  eH..%....H;a....
	0x0010 00 00 00 48 83 ec 18 48 89 6c 24 10 48 8d 6c 24  ...H...H.l$.H.l$
	0x0020 10 48 8d 05 00 00 00 00 48 89 04 24 e8 00 00 00  .H......H..$....
	0x0030 00 48 8b 44 24 08 48 c7 00 2a 2c 0a 00 48 c7 40  .H.D$.H..*,..H.@
	0x0040 10 07 00 00 00 83 3d 00 00 00 00 00 75 4e 48 8d  ......=.....uNH.
	0x0050 0d 00 00 00 00 48 89 48 08 48 c7 40 20 23 00 00  .....H.H.H.@ #..
	0x0060 00 83 3d 00 00 00 00 00 75 1a 48 8d 0d 00 00 00  ..=.....u.H.....
	0x0070 00 48 89 48 18 48 89 44 24 20 48 8b 6c 24 10 48  .H.H.H.D$ H.l$.H
	0x0080 83 c4 18 c3 48 8d 78 18 48 89 c1 48 8d 05 00 00  ....H.x.H..H....
	0x0090 00 00 e8 00 00 00 00 48 89 c8 eb d9 48 8d 78 08  .......H....H.x.
	0x00a0 48 89 c1 48 8d 05 00 00 00 00 e8 00 00 00 00 48  H..H...........H
	0x00b0 89 c8 eb a5 e8 00 00 00 00 e9 42 ff ff ff        ..........B...
	rel 5+4 t=16 TLS+0
	rel 36+4 t=15 type."".User+0
	rel 45+4 t=8 runtime.newobject+0
	rel 71+4 t=15 runtime.writeBarrier+-1
	rel 81+4 t=15 go.string."sim lou"+0
	rel 99+4 t=15 runtime.writeBarrier+-1
	rel 109+4 t=15 go.string."https://www.baidu.com/avatar/666666"+0
	rel 142+4 t=15 go.string."https://www.baidu.com/avatar/666666"+0
	rel 147+4 t=8 runtime.gcWriteBarrier+0
	rel 166+4 t=15 go.string."sim lou"+0
	rel 171+4 t=8 runtime.gcWriteBarrier+0
	rel 181+4 t=8 runtime.morestack_noctxt+0
"".main STEXT size=86 args=0x0 locals=0x18
	0x0000 00000 (escape_analysis.go:18)	TEXT	"".main(SB), ABIInternal, $24-0
	0x0000 00000 (escape_analysis.go:18)	MOVQ	(TLS), CX
	0x0009 00009 (escape_analysis.go:18)	CMPQ	SP, 16(CX)
	0x000d 00013 (escape_analysis.go:18)	JLS	79
	0x000f 00015 (escape_analysis.go:18)	SUBQ	$24, SP
	0x0013 00019 (escape_analysis.go:18)	MOVQ	BP, 16(SP)
	0x0018 00024 (escape_analysis.go:18)	LEAQ	16(SP), BP
	0x001d 00029 (escape_analysis.go:18)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (escape_analysis.go:18)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (escape_analysis.go:18)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x001d 00029 (escape_analysis.go:20)	PCDATA	$0, $0
	0x001d 00029 (escape_analysis.go:20)	PCDATA	$1, $0
	0x001d 00029 (escape_analysis.go:20)	CALL	runtime.printlock(SB)
	0x0022 00034 (escape_analysis.go:20)	PCDATA	$0, $1
	0x0022 00034 (escape_analysis.go:20)	LEAQ	go.string."sim lou"(SB), AX
	0x0029 00041 (escape_analysis.go:20)	PCDATA	$0, $0
	0x0029 00041 (escape_analysis.go:20)	MOVQ	AX, (SP)
	0x002d 00045 (escape_analysis.go:20)	MOVQ	$7, 8(SP)
	0x0036 00054 (escape_analysis.go:20)	CALL	runtime.printstring(SB)
	0x003b 00059 (escape_analysis.go:20)	CALL	runtime.printnl(SB)
	0x0040 00064 (escape_analysis.go:20)	CALL	runtime.printunlock(SB)
	0x0045 00069 (escape_analysis.go:21)	MOVQ	16(SP), BP
	0x004a 00074 (escape_analysis.go:21)	ADDQ	$24, SP
	0x004e 00078 (escape_analysis.go:21)	RET
	0x004f 00079 (escape_analysis.go:21)	NOP
	0x004f 00079 (escape_analysis.go:18)	PCDATA	$1, $-1
	0x004f 00079 (escape_analysis.go:18)	PCDATA	$0, $-1
	0x004f 00079 (escape_analysis.go:18)	CALL	runtime.morestack_noctxt(SB)
	0x0054 00084 (escape_analysis.go:18)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 40 48  eH..%....H;a.v@H
	0x0010 83 ec 18 48 89 6c 24 10 48 8d 6c 24 10 e8 00 00  ...H.l$.H.l$....
	0x0020 00 00 48 8d 05 00 00 00 00 48 89 04 24 48 c7 44  ..H......H..$H.D
	0x0030 24 08 07 00 00 00 e8 00 00 00 00 e8 00 00 00 00  $...............
	0x0040 e8 00 00 00 00 48 8b 6c 24 10 48 83 c4 18 c3 e8  .....H.l$.H.....
	0x0050 00 00 00 00 eb aa                                ......
	rel 5+4 t=16 TLS+0
	rel 30+4 t=8 runtime.printlock+0
	rel 37+4 t=15 go.string."sim lou"+0
	rel 55+4 t=8 runtime.printstring+0
	rel 60+4 t=8 runtime.printnl+0
	rel 65+4 t=8 runtime.printunlock+0
	rel 80+4 t=8 runtime.morestack_noctxt+0
type..hash."".User STEXT dupok size=148 args=0x18 locals=0x28
	0x0000 00000 (<autogenerated>:1)	TEXT	type..hash."".User(SB), DUPOK|ABIInternal, $40-24
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	138
	0x000f 00015 (<autogenerated>:1)	SUBQ	$40, SP
	0x0013 00019 (<autogenerated>:1)	MOVQ	BP, 32(SP)
	0x0018 00024 (<autogenerated>:1)	LEAQ	32(SP), BP
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$0, gclocals·1a65e721a2ccc325b382662e7ffee780(SB)
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x001d 00029 (<autogenerated>:1)	FUNCDATA	$2, gclocals·96839595c383af6ae8227769d90a999e(SB)
	0x001d 00029 (<autogenerated>:1)	PCDATA	$0, $1
	0x001d 00029 (<autogenerated>:1)	PCDATA	$1, $0
	0x001d 00029 (<autogenerated>:1)	MOVQ	"".p+48(SP), AX
	0x0022 00034 (<autogenerated>:1)	PCDATA	$0, $0
	0x0022 00034 (<autogenerated>:1)	MOVQ	AX, (SP)
	0x0026 00038 (<autogenerated>:1)	MOVQ	"".h+56(SP), CX
	0x002b 00043 (<autogenerated>:1)	MOVQ	CX, 8(SP)
	0x0030 00048 (<autogenerated>:1)	MOVQ	$8, 16(SP)
	0x0039 00057 (<autogenerated>:1)	CALL	runtime.memhash(SB)
	0x003e 00062 (<autogenerated>:1)	MOVQ	24(SP), AX
	0x0043 00067 (<autogenerated>:1)	PCDATA	$0, $2
	0x0043 00067 (<autogenerated>:1)	MOVQ	"".p+48(SP), CX
	0x0048 00072 (<autogenerated>:1)	PCDATA	$0, $3
	0x0048 00072 (<autogenerated>:1)	LEAQ	8(CX), DX
	0x004c 00076 (<autogenerated>:1)	PCDATA	$0, $0
	0x004c 00076 (<autogenerated>:1)	MOVQ	DX, (SP)
	0x0050 00080 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0055 00085 (<autogenerated>:1)	CALL	runtime.strhash(SB)
	0x005a 00090 (<autogenerated>:1)	MOVQ	16(SP), AX
	0x005f 00095 (<autogenerated>:1)	PCDATA	$0, $2
	0x005f 00095 (<autogenerated>:1)	PCDATA	$1, $1
	0x005f 00095 (<autogenerated>:1)	MOVQ	"".p+48(SP), CX
	0x0064 00100 (<autogenerated>:1)	ADDQ	$24, CX
	0x0068 00104 (<autogenerated>:1)	PCDATA	$0, $0
	0x0068 00104 (<autogenerated>:1)	MOVQ	CX, (SP)
	0x006c 00108 (<autogenerated>:1)	MOVQ	AX, 8(SP)
	0x0071 00113 (<autogenerated>:1)	CALL	runtime.strhash(SB)
	0x0076 00118 (<autogenerated>:1)	MOVQ	16(SP), AX
	0x007b 00123 (<autogenerated>:1)	MOVQ	AX, "".~r2+64(SP)
	0x0080 00128 (<autogenerated>:1)	MOVQ	32(SP), BP
	0x0085 00133 (<autogenerated>:1)	ADDQ	$40, SP
	0x0089 00137 (<autogenerated>:1)	RET
	0x008a 00138 (<autogenerated>:1)	NOP
	0x008a 00138 (<autogenerated>:1)	PCDATA	$1, $-1
	0x008a 00138 (<autogenerated>:1)	PCDATA	$0, $-1
	0x008a 00138 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x008f 00143 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 7b 48  eH..%....H;a.v{H
	0x0010 83 ec 28 48 89 6c 24 20 48 8d 6c 24 20 48 8b 44  ..(H.l$ H.l$ H.D
	0x0020 24 30 48 89 04 24 48 8b 4c 24 38 48 89 4c 24 08  $0H..$H.L$8H.L$.
	0x0030 48 c7 44 24 10 08 00 00 00 e8 00 00 00 00 48 8b  H.D$..........H.
	0x0040 44 24 18 48 8b 4c 24 30 48 8d 51 08 48 89 14 24  D$.H.L$0H.Q.H..$
	0x0050 48 89 44 24 08 e8 00 00 00 00 48 8b 44 24 10 48  H.D$......H.D$.H
	0x0060 8b 4c 24 30 48 83 c1 18 48 89 0c 24 48 89 44 24  .L$0H...H..$H.D$
	0x0070 08 e8 00 00 00 00 48 8b 44 24 10 48 89 44 24 40  ......H.D$.H.D$@
	0x0080 48 8b 6c 24 20 48 83 c4 28 c3 e8 00 00 00 00 e9  H.l$ H..(.......
	0x0090 6c ff ff ff                                      l...
	rel 5+4 t=16 TLS+0
	rel 58+4 t=8 runtime.memhash+0
	rel 86+4 t=8 runtime.strhash+0
	rel 114+4 t=8 runtime.strhash+0
	rel 139+4 t=8 runtime.morestack_noctxt+0
type..eq."".User STEXT dupok size=189 args=0x18 locals=0x28
	0x0000 00000 (<autogenerated>:1)	TEXT	type..eq."".User(SB), DUPOK|ABIInternal, $40-24
	0x0000 00000 (<autogenerated>:1)	MOVQ	(TLS), CX
	0x0009 00009 (<autogenerated>:1)	CMPQ	SP, 16(CX)
	0x000d 00013 (<autogenerated>:1)	JLS	179
	0x0013 00019 (<autogenerated>:1)	SUBQ	$40, SP
	0x0017 00023 (<autogenerated>:1)	MOVQ	BP, 32(SP)
	0x001c 00028 (<autogenerated>:1)	LEAQ	32(SP), BP
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$0, gclocals·bc41a5648be0e22a9555dec75d49ff55(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$1, gclocals·7d2d5fca80364273fb07d5820a76fef4(SB)
	0x0021 00033 (<autogenerated>:1)	FUNCDATA	$2, gclocals·4e9100e345206c70952023a91dd9a8ed(SB)
	0x0021 00033 (<autogenerated>:1)	PCDATA	$0, $1
	0x0021 00033 (<autogenerated>:1)	PCDATA	$1, $0
	0x0021 00033 (<autogenerated>:1)	MOVQ	"".q+56(SP), AX
	0x0026 00038 (<autogenerated>:1)	MOVQ	(AX), CX
	0x0029 00041 (<autogenerated>:1)	PCDATA	$0, $2
	0x0029 00041 (<autogenerated>:1)	MOVQ	"".p+48(SP), DX
	0x002e 00046 (<autogenerated>:1)	CMPQ	(DX), CX
	0x0031 00049 (<autogenerated>:1)	JNE	175
	0x0033 00051 (<autogenerated>:1)	PCDATA	$0, $3
	0x0033 00051 (<autogenerated>:1)	MOVQ	8(AX), CX
	0x0037 00055 (<autogenerated>:1)	MOVQ	16(DX), BX
	0x003b 00059 (<autogenerated>:1)	PCDATA	$0, $4
	0x003b 00059 (<autogenerated>:1)	MOVQ	8(DX), SI
	0x003f 00063 (<autogenerated>:1)	CMPQ	16(AX), BX
	0x0043 00067 (<autogenerated>:1)	JEQ	139
	0x0045 00069 (<autogenerated>:1)	PCDATA	$0, $2
	0x0045 00069 (<autogenerated>:1)	PCDATA	$1, $1
	0x0045 00069 (<autogenerated>:1)	XORL	CX, CX
	0x0047 00071 (<autogenerated>:1)	TESTB	CL, CL
	0x0049 00073 (<autogenerated>:1)	JEQ	135
	0x004b 00075 (<autogenerated>:1)	PCDATA	$0, $3
	0x004b 00075 (<autogenerated>:1)	MOVQ	24(AX), CX
	0x004f 00079 (<autogenerated>:1)	PCDATA	$0, $5
	0x004f 00079 (<autogenerated>:1)	MOVQ	24(DX), BX
	0x0053 00083 (<autogenerated>:1)	PCDATA	$0, $6
	0x0053 00083 (<autogenerated>:1)	MOVQ	32(DX), DX
	0x0057 00087 (<autogenerated>:1)	PCDATA	$0, $7
	0x0057 00087 (<autogenerated>:1)	CMPQ	32(AX), DX
	0x005b 00091 (<autogenerated>:1)	JEQ	109
	0x005d 00093 (<autogenerated>:1)	PCDATA	$0, $0
	0x005d 00093 (<autogenerated>:1)	XORL	AX, AX
	0x005f 00095 (<autogenerated>:1)	MOVB	AL, "".~r2+64(SP)
	0x0063 00099 (<autogenerated>:1)	MOVQ	32(SP), BP
	0x0068 00104 (<autogenerated>:1)	ADDQ	$40, SP
	0x006c 00108 (<autogenerated>:1)	RET
	0x006d 00109 (<autogenerated>:1)	PCDATA	$0, $8
	0x006d 00109 (<autogenerated>:1)	MOVQ	BX, (SP)
	0x0071 00113 (<autogenerated>:1)	PCDATA	$0, $0
	0x0071 00113 (<autogenerated>:1)	MOVQ	CX, 8(SP)
	0x0076 00118 (<autogenerated>:1)	MOVQ	DX, 16(SP)
	0x007b 00123 (<autogenerated>:1)	CALL	runtime.memequal(SB)
	0x0080 00128 (<autogenerated>:1)	MOVBLZX	24(SP), AX
	0x0085 00133 (<autogenerated>:1)	JMP	95
	0x0087 00135 (<autogenerated>:1)	XORL	AX, AX
	0x0089 00137 (<autogenerated>:1)	JMP	95
	0x008b 00139 (<autogenerated>:1)	PCDATA	$0, $8
	0x008b 00139 (<autogenerated>:1)	PCDATA	$1, $0
	0x008b 00139 (<autogenerated>:1)	MOVQ	SI, (SP)
	0x008f 00143 (<autogenerated>:1)	PCDATA	$0, $0
	0x008f 00143 (<autogenerated>:1)	MOVQ	CX, 8(SP)
	0x0094 00148 (<autogenerated>:1)	MOVQ	BX, 16(SP)
	0x0099 00153 (<autogenerated>:1)	CALL	runtime.memequal(SB)
	0x009e 00158 (<autogenerated>:1)	MOVBLZX	24(SP), CX
	0x00a3 00163 (<autogenerated>:1)	PCDATA	$0, $1
	0x00a3 00163 (<autogenerated>:1)	PCDATA	$1, $2
	0x00a3 00163 (<autogenerated>:1)	MOVQ	"".q+56(SP), AX
	0x00a8 00168 (<autogenerated>:1)	PCDATA	$0, $2
	0x00a8 00168 (<autogenerated>:1)	PCDATA	$1, $1
	0x00a8 00168 (<autogenerated>:1)	MOVQ	"".p+48(SP), DX
	0x00ad 00173 (<autogenerated>:1)	JMP	71
	0x00af 00175 (<autogenerated>:1)	XORL	CX, CX
	0x00b1 00177 (<autogenerated>:1)	JMP	71
	0x00b3 00179 (<autogenerated>:1)	NOP
	0x00b3 00179 (<autogenerated>:1)	PCDATA	$1, $-1
	0x00b3 00179 (<autogenerated>:1)	PCDATA	$0, $-1
	0x00b3 00179 (<autogenerated>:1)	CALL	runtime.morestack_noctxt(SB)
	0x00b8 00184 (<autogenerated>:1)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 0f 86 a0  eH..%....H;a....
	0x0010 00 00 00 48 83 ec 28 48 89 6c 24 20 48 8d 6c 24  ...H..(H.l$ H.l$
	0x0020 20 48 8b 44 24 38 48 8b 08 48 8b 54 24 30 48 39   H.D$8H..H.T$0H9
	0x0030 0a 75 7c 48 8b 48 08 48 8b 5a 10 48 8b 72 08 48  .u|H.H.H.Z.H.r.H
	0x0040 39 58 10 74 46 31 c9 84 c9 74 3c 48 8b 48 18 48  9X.tF1...t<H.H.H
	0x0050 8b 5a 18 48 8b 52 20 48 39 50 20 74 10 31 c0 88  .Z.H.R H9P t.1..
	0x0060 44 24 40 48 8b 6c 24 20 48 83 c4 28 c3 48 89 1c  D$@H.l$ H..(.H..
	0x0070 24 48 89 4c 24 08 48 89 54 24 10 e8 00 00 00 00  $H.L$.H.T$......
	0x0080 0f b6 44 24 18 eb d8 31 c0 eb d4 48 89 34 24 48  ..D$...1...H.4$H
	0x0090 89 4c 24 08 48 89 5c 24 10 e8 00 00 00 00 0f b6  .L$.H.\$........
	0x00a0 4c 24 18 48 8b 44 24 38 48 8b 54 24 30 eb 98 31  L$.H.D$8H.T$0..1
	0x00b0 c9 eb 94 e8 00 00 00 00 e9 43 ff ff ff           .........C...
	rel 5+4 t=16 TLS+0
	rel 124+4 t=8 runtime.memequal+0
	rel 154+4 t=8 runtime.memequal+0
	rel 180+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
go.info."".GetUserInfo$abstract SDWARFINFO dupok size=17
	0x0000 04 2e 47 65 74 55 73 65 72 49 6e 66 6f 00 01 01  ..GetUserInfo...
	0x0010 00                                               .
go.string."sim lou" SRODATA dupok size=7
	0x0000 73 69 6d 20 6c 6f 75                             sim lou
go.string."https://www.baidu.com/avatar/666666" SRODATA dupok size=35
	0x0000 68 74 74 70 73 3a 2f 2f 77 77 77 2e 62 61 69 64  https://www.baid
	0x0010 75 2e 63 6f 6d 2f 61 76 61 74 61 72 2f 36 36 36  u.com/avatar/666
	0x0020 36 36 36                                         666
go.loc."".GetUserInfo SDWARFLOC size=0
go.info."".GetUserInfo SDWARFINFO size=36
	0x0000 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 01 9c 0f 7e 72 30 00 01 09 00 00  ........~r0.....
	0x0020 00 00 00 00                                      ....
	rel 1+4 t=28 go.info."".GetUserInfo$abstract+0
	rel 5+8 t=1 "".GetUserInfo+0
	rel 13+8 t=1 "".GetUserInfo+190
	rel 30+4 t=28 go.info.*"".User+0
go.range."".GetUserInfo SDWARFRANGE size=0
go.isstmt."".GetUserInfo SDWARFMISC size=0
	0x0000 04 13 04 0e 03 07 01 04 02 05 01 05 02 0f 01 30  ...............0
	0x0010 02 05 01 0a 02 04 01 2c 02 0a 00                 .......,...
go.loc."".main SDWARFLOC size=0
go.info."".main SDWARFINFO size=33
	0x0000 03 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+86
	rel 27+4 t=29 gofile../Users/ytlou/Desktop/golang/golang_study/study/basic/escape/escape_analysis.go+0
go.range."".main SDWARFRANGE size=0
go.isstmt."".main SDWARFMISC size=0
	0x0000 04 0f 04 0e 03 05 01 14 02 20 00                 ......... .
go.loc.type..hash."".User SDWARFLOC dupok size=71
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 01 00 9c 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 02 00 91 08 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00                             .......
	rel 0+8 t=50 type..hash."".User+0
	rel 8+8 t=50 type..hash."".User+148
	rel 35+8 t=50 type..hash."".User+0
	rel 43+8 t=50 type..hash."".User+148
go.info.type..hash."".User SDWARFINFO dupok size=82
	0x0000 03 74 79 70 65 2e 2e 68 61 73 68 2e 22 22 2e 55  .type..hash."".U
	0x0010 73 65 72 00 00 00 00 00 00 00 00 00 00 00 00 00  ser.............
	0x0020 00 00 00 00 01 9c 00 00 00 00 01 10 70 00 00 01  ............p...
	0x0030 00 00 00 00 00 00 00 00 10 68 00 00 01 00 00 00  .........h......
	0x0040 00 00 00 00 00 0f 7e 72 32 00 01 01 00 00 00 00  ......~r2.......
	0x0050 00 00                                            ..
	rel 20+8 t=1 type..hash."".User+0
	rel 28+8 t=1 type..hash."".User+148
	rel 38+4 t=29 gofile..<autogenerated>+0
	rel 48+4 t=28 go.info.*"".User+0
	rel 52+4 t=28 go.loc.type..hash."".User+0
	rel 61+4 t=28 go.info.uintptr+0
	rel 65+4 t=28 go.loc.type..hash."".User+35
	rel 76+4 t=28 go.info.uintptr+0
go.range.type..hash."".User SDWARFRANGE dupok size=0
go.isstmt.type..hash."".User SDWARFMISC dupok size=0
	0x0000 04 0f 04 0e 03 05 01 17 02 05 01 17 02 05 01 17  ................
	0x0010 02 05 01 14 02 0a 00                             .......
go.loc.type..eq."".User SDWARFLOC dupok size=71
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 01 00 9c 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 02 00 91 08 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00                             .......
	rel 0+8 t=50 type..eq."".User+0
	rel 8+8 t=50 type..eq."".User+189
	rel 35+8 t=50 type..eq."".User+0
	rel 43+8 t=50 type..eq."".User+189
go.info.type..eq."".User SDWARFINFO dupok size=80
	0x0000 03 74 79 70 65 2e 2e 65 71 2e 22 22 2e 55 73 65  .type..eq."".Use
	0x0010 72 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  r...............
	0x0020 00 00 01 9c 00 00 00 00 01 10 70 00 00 01 00 00  ..........p.....
	0x0030 00 00 00 00 00 00 10 71 00 00 01 00 00 00 00 00  .......q........
	0x0040 00 00 00 0f 7e 72 32 00 01 01 00 00 00 00 00 00  ....~r2.........
	rel 18+8 t=1 type..eq."".User+0
	rel 26+8 t=1 type..eq."".User+189
	rel 36+4 t=29 gofile..<autogenerated>+0
	rel 46+4 t=28 go.info.*"".User+0
	rel 50+4 t=28 go.loc.type..eq."".User+0
	rel 59+4 t=28 go.info.*"".User+0
	rel 63+4 t=28 go.loc.type..eq."".User+35
	rel 74+4 t=28 go.info.bool+0
go.range.type..eq."".User SDWARFRANGE dupok size=0
go.isstmt.type..eq."".User SDWARFMISC dupok size=0
	0x0000 04 13 04 0e 03 05 01 1f 02 04 01 14 02 06 01 18  ................
	0x0010 02 05 01 07 02 02 01 10 02 05 01 11 02 02 01 02  ................
	0x0020 02 0a 00                                         ...
type..hashfunc."".User SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..hash."".User+0
type..eqfunc."".User SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 type..eq."".User+0
type..alg."".User SRODATA dupok size=16
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 type..hashfunc."".User+0
	rel 8+8 t=1 type..eqfunc."".User+0
runtime.gcbits.01 SRODATA dupok size=1
	0x0000 01                                               .
type..namedata.*main.User. SRODATA dupok size=13
	0x0000 01 00 0a 2a 6d 61 69 6e 2e 55 73 65 72           ...*main.User
type.*"".User SRODATA size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 02 fa 53 6d 00 08 08 36 00 00 00 00 00 00 00 00  ..Sm...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*main.User.+0
	rel 48+8 t=1 type."".User+0
runtime.gcbits.0a SRODATA dupok size=1
	0x0000 0a                                               .
type..namedata.ID. SRODATA dupok size=5
	0x0000 01 00 02 49 44                                   ...ID
type..namedata.Name. SRODATA dupok size=7
	0x0000 01 00 04 4e 61 6d 65                             ...Name
type..namedata.Avatar. SRODATA dupok size=9
	0x0000 01 00 06 41 76 61 74 61 72                       ...Avatar
type."".User SRODATA size=168
	0x0000 28 00 00 00 00 00 00 00 20 00 00 00 00 00 00 00  (....... .......
	0x0010 64 15 5a 77 07 08 08 19 00 00 00 00 00 00 00 00  d.Zw............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 03 00 00 00 00 00 00 00 03 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 58 00 00 00 00 00 00 00  ........X.......
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x0090 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 30 00 00 00 00 00 00 00                          0.......
	rel 24+8 t=1 type..alg."".User+0
	rel 32+8 t=1 runtime.gcbits.0a+0
	rel 40+4 t=5 type..namedata.*main.User.+0
	rel 44+4 t=5 type.*"".User+0
	rel 56+8 t=1 type."".User+96
	rel 80+4 t=5 type..importpath."".+0
	rel 96+8 t=1 type..namedata.ID.+0
	rel 104+8 t=1 type.int64+0
	rel 120+8 t=1 type..namedata.Name.+0
	rel 128+8 t=1 type.string+0
	rel 144+8 t=1 type..namedata.Avatar.+0
	rel 152+8 t=1 type.string+0
""..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
gclocals·9fb7f0986f647f17cb53dda1484e0f7a SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
"".main.stkobj SRODATA dupok size=0
gclocals·1a65e721a2ccc325b382662e7ffee780 SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 01 00                    ..........
gclocals·96839595c383af6ae8227769d90a999e SRODATA dupok size=12
	0x0000 04 00 00 00 03 00 00 00 00 01 02 04              ............
gclocals·bc41a5648be0e22a9555dec75d49ff55 SRODATA dupok size=11
	0x0000 03 00 00 00 02 00 00 00 03 00 01                 ...........
gclocals·7d2d5fca80364273fb07d5820a76fef4 SRODATA dupok size=8
	0x0000 03 00 00 00 00 00 00 00                          ........
gclocals·4e9100e345206c70952023a91dd9a8ed SRODATA dupok size=17
	0x0000 09 00 00 00 06 00 00 00 00 01 05 07 27 0f 0b 0a  ............'...
	0x0010 02                                               .
