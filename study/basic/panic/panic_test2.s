"".main STEXT size=118 args=0x0 locals=0x50
	0x0000 00000 (panic_test2.go:5)	TEXT	"".main(SB), ABIInternal, $80-0
	0x0000 00000 (panic_test2.go:5)	MOVQ	(TLS), CX
	0x0009 00009 (panic_test2.go:5)	CMPQ	SP, 16(CX)
	0x000d 00013 (panic_test2.go:5)	JLS	111
	0x000f 00015 (panic_test2.go:5)	SUBQ	$80, SP
	0x0013 00019 (panic_test2.go:5)	MOVQ	BP, 72(SP)
	0x0018 00024 (panic_test2.go:5)	LEAQ	72(SP), BP
	0x001d 00029 (panic_test2.go:5)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (panic_test2.go:5)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (panic_test2.go:5)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x001d 00029 (panic_test2.go:6)	PCDATA	$0, $0
	0x001d 00029 (panic_test2.go:6)	PCDATA	$1, $0
	0x001d 00029 (panic_test2.go:6)	MOVL	$0, ""..autotmp_1+16(SP)
	0x0025 00037 (panic_test2.go:6)	PCDATA	$0, $1
	0x0025 00037 (panic_test2.go:6)	LEAQ	"".main.func1·f(SB), AX
	0x002c 00044 (panic_test2.go:6)	PCDATA	$0, $0
	0x002c 00044 (panic_test2.go:6)	MOVQ	AX, ""..autotmp_1+40(SP)
	0x0031 00049 (panic_test2.go:6)	PCDATA	$0, $1
	0x0031 00049 (panic_test2.go:6)	LEAQ	""..autotmp_1+16(SP), AX
	0x0036 00054 (panic_test2.go:6)	PCDATA	$0, $0
	0x0036 00054 (panic_test2.go:6)	MOVQ	AX, (SP)
	0x003a 00058 (panic_test2.go:6)	CALL	runtime.deferprocStack(SB)
	0x003f 00063 (panic_test2.go:6)	TESTL	AX, AX
	0x0041 00065 (panic_test2.go:6)	JNE	95
	0x0043 00067 (panic_test2.go:12)	PCDATA	$0, $1
	0x0043 00067 (panic_test2.go:12)	LEAQ	type.string(SB), AX
	0x004a 00074 (panic_test2.go:12)	PCDATA	$0, $0
	0x004a 00074 (panic_test2.go:12)	MOVQ	AX, (SP)
	0x004e 00078 (panic_test2.go:12)	PCDATA	$0, $1
	0x004e 00078 (panic_test2.go:12)	LEAQ	""..stmp_0(SB), AX
	0x0055 00085 (panic_test2.go:12)	PCDATA	$0, $0
	0x0055 00085 (panic_test2.go:12)	MOVQ	AX, 8(SP)
	0x005a 00090 (panic_test2.go:12)	CALL	runtime.gopanic(SB)
	0x005f 00095 (panic_test2.go:6)	XCHGL	AX, AX
	0x0060 00096 (panic_test2.go:6)	CALL	runtime.deferreturn(SB)
	0x0065 00101 (panic_test2.go:6)	MOVQ	72(SP), BP
	0x006a 00106 (panic_test2.go:6)	ADDQ	$80, SP
	0x006e 00110 (panic_test2.go:6)	RET
	0x006f 00111 (panic_test2.go:6)	NOP
	0x006f 00111 (panic_test2.go:5)	PCDATA	$1, $-1
	0x006f 00111 (panic_test2.go:5)	PCDATA	$0, $-1
	0x006f 00111 (panic_test2.go:5)	CALL	runtime.morestack_noctxt(SB)
	0x0074 00116 (panic_test2.go:5)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 60 48  eH..%....H;a.v`H
	0x0010 83 ec 50 48 89 6c 24 48 48 8d 6c 24 48 c7 44 24  ..PH.l$HH.l$H.D$
	0x0020 10 00 00 00 00 48 8d 05 00 00 00 00 48 89 44 24  .....H......H.D$
	0x0030 28 48 8d 44 24 10 48 89 04 24 e8 00 00 00 00 85  (H.D$.H..$......
	0x0040 c0 75 1c 48 8d 05 00 00 00 00 48 89 04 24 48 8d  .u.H......H..$H.
	0x0050 05 00 00 00 00 48 89 44 24 08 e8 00 00 00 00 90  .....H.D$.......
	0x0060 e8 00 00 00 00 48 8b 6c 24 48 48 83 c4 50 c3 e8  .....H.l$HH..P..
	0x0070 00 00 00 00 eb 8a                                ......
	rel 5+4 t=16 TLS+0
	rel 40+4 t=15 "".main.func1·f+0
	rel 59+4 t=8 runtime.deferprocStack+0
	rel 70+4 t=15 type.string+0
	rel 81+4 t=15 ""..stmp_0+0
	rel 91+4 t=8 runtime.gopanic+0
	rel 97+4 t=8 runtime.deferreturn+0
	rel 112+4 t=8 runtime.morestack_noctxt+0
"".main.func1 STEXT size=151 args=0x0 locals=0x40
	0x0000 00000 (panic_test2.go:6)	TEXT	"".main.func1(SB), ABIInternal, $64-0
	0x0000 00000 (panic_test2.go:6)	MOVQ	(TLS), CX
	0x0009 00009 (panic_test2.go:6)	CMPQ	SP, 16(CX)
	0x000d 00013 (panic_test2.go:6)	JLS	141
	0x000f 00015 (panic_test2.go:6)	SUBQ	$64, SP
	0x0013 00019 (panic_test2.go:6)	MOVQ	BP, 56(SP)
	0x0018 00024 (panic_test2.go:6)	LEAQ	56(SP), BP
	0x001d 00029 (panic_test2.go:6)	FUNCDATA	$0, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x001d 00029 (panic_test2.go:6)	FUNCDATA	$1, gclocals·568470801006e5c0dc3947ea998fe279(SB)
	0x001d 00029 (panic_test2.go:6)	FUNCDATA	$2, gclocals·1cf923758aae2e428391d1783fe59973(SB)
	0x001d 00029 (panic_test2.go:6)	FUNCDATA	$3, "".main.func1.stkobj(SB)
	0x001d 00029 (panic_test2.go:7)	PCDATA	$0, $1
	0x001d 00029 (panic_test2.go:7)	PCDATA	$1, $0
	0x001d 00029 (panic_test2.go:7)	LEAQ	""..fp+72(SP), AX
	0x0022 00034 (panic_test2.go:7)	PCDATA	$0, $0
	0x0022 00034 (panic_test2.go:7)	MOVQ	AX, (SP)
	0x0026 00038 (panic_test2.go:7)	CALL	runtime.gorecover(SB)
	0x002b 00043 (panic_test2.go:7)	MOVQ	8(SP), AX
	0x0030 00048 (panic_test2.go:7)	PCDATA	$0, $2
	0x0030 00048 (panic_test2.go:7)	MOVQ	16(SP), CX
	0x0035 00053 (panic_test2.go:7)	TESTQ	AX, AX
	0x0038 00056 (panic_test2.go:7)	JNE	68
	0x003a 00058 (<unknown line number>)	PCDATA	$0, $-2
	0x003a 00058 (<unknown line number>)	PCDATA	$1, $-2
	0x003a 00058 (<unknown line number>)	MOVQ	56(SP), BP
	0x003f 00063 (<unknown line number>)	ADDQ	$64, SP
	0x0043 00067 (<unknown line number>)	RET
	0x0044 00068 (panic_test2.go:8)	PCDATA	$0, $2
	0x0044 00068 (panic_test2.go:8)	PCDATA	$1, $1
	0x0044 00068 (panic_test2.go:8)	XORPS	X0, X0
	0x0047 00071 (panic_test2.go:8)	MOVUPS	X0, ""..autotmp_1+40(SP)
	0x004c 00076 (panic_test2.go:8)	MOVQ	AX, ""..autotmp_1+40(SP)
	0x0051 00081 (panic_test2.go:8)	PCDATA	$0, $0
	0x0051 00081 (panic_test2.go:8)	MOVQ	CX, ""..autotmp_1+48(SP)
	0x0056 00086 (panic_test2.go:8)	PCDATA	$0, $1
	0x0056 00086 (panic_test2.go:8)	LEAQ	go.string."recover: %v"(SB), AX
	0x005d 00093 (panic_test2.go:8)	PCDATA	$0, $0
	0x005d 00093 (panic_test2.go:8)	MOVQ	AX, (SP)
	0x0061 00097 (panic_test2.go:8)	MOVQ	$11, 8(SP)
	0x006a 00106 (panic_test2.go:8)	PCDATA	$0, $1
	0x006a 00106 (panic_test2.go:8)	PCDATA	$1, $0
	0x006a 00106 (panic_test2.go:8)	LEAQ	""..autotmp_1+40(SP), AX
	0x006f 00111 (panic_test2.go:8)	PCDATA	$0, $0
	0x006f 00111 (panic_test2.go:8)	MOVQ	AX, 16(SP)
	0x0074 00116 (panic_test2.go:8)	MOVQ	$1, 24(SP)
	0x007d 00125 (panic_test2.go:8)	MOVQ	$1, 32(SP)
	0x0086 00134 (panic_test2.go:8)	CALL	log.Printf(SB)
	0x008b 00139 (panic_test2.go:8)	JMP	58
	0x008d 00141 (panic_test2.go:8)	NOP
	0x008d 00141 (panic_test2.go:6)	PCDATA	$1, $-1
	0x008d 00141 (panic_test2.go:6)	PCDATA	$0, $-1
	0x008d 00141 (panic_test2.go:6)	CALL	runtime.morestack_noctxt(SB)
	0x0092 00146 (panic_test2.go:6)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 7e 48  eH..%....H;a.v~H
	0x0010 83 ec 40 48 89 6c 24 38 48 8d 6c 24 38 48 8d 44  ..@H.l$8H.l$8H.D
	0x0020 24 48 48 89 04 24 e8 00 00 00 00 48 8b 44 24 08  $HH..$.....H.D$.
	0x0030 48 8b 4c 24 10 48 85 c0 75 0a 48 8b 6c 24 38 48  H.L$.H..u.H.l$8H
	0x0040 83 c4 40 c3 0f 57 c0 0f 11 44 24 28 48 89 44 24  ..@..W...D$(H.D$
	0x0050 28 48 89 4c 24 30 48 8d 05 00 00 00 00 48 89 04  (H.L$0H......H..
	0x0060 24 48 c7 44 24 08 0b 00 00 00 48 8d 44 24 28 48  $H.D$.....H.D$(H
	0x0070 89 44 24 10 48 c7 44 24 18 01 00 00 00 48 c7 44  .D$.H.D$.....H.D
	0x0080 24 20 01 00 00 00 e8 00 00 00 00 eb ad e8 00 00  $ ..............
	0x0090 00 00 e9 69 ff ff ff                             ...i...
	rel 5+4 t=16 TLS+0
	rel 39+4 t=8 runtime.gorecover+0
	rel 89+4 t=15 go.string."recover: %v"+0
	rel 135+4 t=8 log.Printf+0
	rel 142+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
go.string."qwertyuiop." SRODATA dupok size=11
	0x0000 71 77 65 72 74 79 75 69 6f 70 2e                 qwertyuiop.
go.loc."".main SDWARFLOC size=0
go.info."".main SDWARFINFO size=33
	0x0000 03 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+118
	rel 27+4 t=29 gofile../Users/ytlou/Desktop/golang/golang_study/study/basic/panic/panic_test2.go+0
go.range."".main SDWARFRANGE size=0
go.isstmt."".main SDWARFMISC size=0
	0x0000 04 0f 04 0e 03 08 01 15 02 07 01 02 02 07 01 10  ................
	0x0010 02 05 01 01 02 16 00                             .......
go.string."recover: %v" SRODATA dupok size=11
	0x0000 72 65 63 6f 76 65 72 3a 20 25 76                 recover: %v
go.loc."".main.func1 SDWARFLOC size=86
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 05 00 50 93 08 93 08 00 00 00 00 00 00 00 00 00  ..P.............
	0x0020 00 00 00 00 00 00 00 06 00 50 93 08 52 93 08 00  .........P..R...
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 05  ................
	0x0040 00 93 08 52 93 08 00 00 00 00 00 00 00 00 00 00  ...R............
	0x0050 00 00 00 00 00 00                                ......
	rel 0+8 t=50 "".main.func1+48
	rel 8+8 t=50 "".main.func1+53
	rel 23+8 t=50 "".main.func1+53
	rel 31+8 t=50 "".main.func1+58
	rel 47+8 t=50 "".main.func1+93
	rel 55+8 t=50 "".main.func1+139
go.info."".main.func1 SDWARFINFO size=59
	0x0000 03 22 22 2e 6d 61 69 6e 2e 66 75 6e 63 31 00 00  ."".main.func1..
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 01  ................
	0x0020 9c 00 00 00 00 01 14 00 00 00 00 0b 65 72 72 00  ............err.
	0x0030 07 00 00 00 00 00 00 00 00 00 00                 ...........
	rel 15+8 t=1 "".main.func1+0
	rel 23+8 t=1 "".main.func1+151
	rel 33+4 t=29 gofile../Users/ytlou/Desktop/golang/golang_study/study/basic/panic/panic_test2.go+0
	rel 39+4 t=28 go.range."".main.func1+0
	rel 49+4 t=28 go.info.interface {}+0
	rel 53+4 t=28 go.loc."".main.func1+0
go.range."".main.func1 SDWARFRANGE size=48
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 0+8 t=50 "".main.func1+29
	rel 8+8 t=50 "".main.func1+58
	rel 16+8 t=50 "".main.func1+68
	rel 24+8 t=50 "".main.func1+141
go.isstmt."".main.func1 SDWARFMISC size=0
	0x0000 04 0f 04 0e 03 05 01 04 02 05 01 19 02 03 01 3f  ...............?
	0x0010 02 05 01 02 02 0a 00                             .......
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
""..inittask SNOPTRDATA size=32
	0x0000 00 00 00 00 00 00 00 00 01 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	rel 24+8 t=1 log..inittask+0
""..stmp_0 SRODATA size=16
	0x0000 00 00 00 00 00 00 00 00 0b 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."qwertyuiop."+0
"".main.func1·f SRODATA dupok size=8
	0x0000 00 00 00 00 00 00 00 00                          ........
	rel 0+8 t=1 "".main.func1+0
type..namedata.*[]uint8- SRODATA dupok size=11
	0x0000 00 00 08 2a 5b 5d 75 69 6e 74 38                 ...*[]uint8
type.*[]uint8 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 a5 8e d0 69 00 08 08 36 00 00 00 00 00 00 00 00  ...i...6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]uint8-+0
	rel 48+8 t=1 type.[]uint8+0
type.[]uint8 SRODATA dupok size=56
	0x0000 18 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 df 7e 2e 38 02 08 08 17 00 00 00 00 00 00 00 00  .~.8............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[]uint8-+0
	rel 44+4 t=6 type.*[]uint8+0
	rel 48+8 t=1 type.uint8+0
type..namedata.*[0]uint8- SRODATA dupok size=12
	0x0000 00 00 09 2a 5b 30 5d 75 69 6e 74 38              ...*[0]uint8
type.*[0]uint8 SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 be a5 63 b3 00 08 08 36 00 00 00 00 00 00 00 00  ..c....6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*[0]uint8-+0
	rel 48+8 t=1 type.[0]uint8+0
runtime.gcbits. SRODATA dupok size=0
type.[0]uint8 SRODATA dupok size=72
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 93 13 6c e9 02 01 01 11 00 00 00 00 00 00 00 00  ..l.............
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+16
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*[0]uint8-+0
	rel 44+4 t=6 type.*[0]uint8+0
	rel 48+8 t=1 type.uint8+0
	rel 56+8 t=1 type.[]uint8+0
type..namedata.*struct { siz uint32; started bool; heap bool; sp uintptr; pc uintptr; fn uintptr; _panic uintptr; link uintptr; args [0]uint8 }- SRODATA dupok size=131
	0x0000 00 00 80 2a 73 74 72 75 63 74 20 7b 20 73 69 7a  ...*struct { siz
	0x0010 20 75 69 6e 74 33 32 3b 20 73 74 61 72 74 65 64   uint32; started
	0x0020 20 62 6f 6f 6c 3b 20 68 65 61 70 20 62 6f 6f 6c   bool; heap bool
	0x0030 3b 20 73 70 20 75 69 6e 74 70 74 72 3b 20 70 63  ; sp uintptr; pc
	0x0040 20 75 69 6e 74 70 74 72 3b 20 66 6e 20 75 69 6e   uintptr; fn uin
	0x0050 74 70 74 72 3b 20 5f 70 61 6e 69 63 20 75 69 6e  tptr; _panic uin
	0x0060 74 70 74 72 3b 20 6c 69 6e 6b 20 75 69 6e 74 70  tptr; link uintp
	0x0070 74 72 3b 20 61 72 67 73 20 5b 30 5d 75 69 6e 74  tr; args [0]uint
	0x0080 38 20 7d                                         8 }
type.*struct { "".siz uint32; "".started bool; "".heap bool; "".sp uintptr; "".pc uintptr; "".fn uintptr; ""._panic uintptr; "".link uintptr; "".args [0]uint8 } SRODATA dupok size=56
	0x0000 08 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0010 c6 0d d3 ff 00 08 08 36 00 00 00 00 00 00 00 00  .......6........
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00                          ........
	rel 24+8 t=1 runtime.algarray+80
	rel 32+8 t=1 runtime.gcbits.01+0
	rel 40+4 t=5 type..namedata.*struct { siz uint32; started bool; heap bool; sp uintptr; pc uintptr; fn uintptr; _panic uintptr; link uintptr; args [0]uint8 }-+0
	rel 48+8 t=1 type.noalg.struct { "".siz uint32; "".started bool; "".heap bool; "".sp uintptr; "".pc uintptr; "".fn uintptr; ""._panic uintptr; "".link uintptr; "".args [0]uint8 }+0
type..namedata.siz- SRODATA dupok size=6
	0x0000 00 00 03 73 69 7a                                ...siz
type..namedata.started- SRODATA dupok size=10
	0x0000 00 00 07 73 74 61 72 74 65 64                    ...started
type..namedata.heap- SRODATA dupok size=7
	0x0000 00 00 04 68 65 61 70                             ...heap
type..namedata.sp- SRODATA dupok size=5
	0x0000 00 00 02 73 70                                   ...sp
type..namedata.pc- SRODATA dupok size=5
	0x0000 00 00 02 70 63                                   ...pc
type..namedata.fn- SRODATA dupok size=5
	0x0000 00 00 02 66 6e                                   ...fn
type..namedata._panic- SRODATA dupok size=9
	0x0000 00 00 06 5f 70 61 6e 69 63                       ..._panic
type..namedata.link- SRODATA dupok size=7
	0x0000 00 00 04 6c 69 6e 6b                             ...link
type..namedata.args- SRODATA dupok size=7
	0x0000 00 00 04 61 72 67 73                             ...args
type.noalg.struct { "".siz uint32; "".started bool; "".heap bool; "".sp uintptr; "".pc uintptr; "".fn uintptr; ""._panic uintptr; "".link uintptr; "".args [0]uint8 } SRODATA dupok size=296
	0x0000 38 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  8...............
	0x0010 f9 ae b1 ad 02 08 08 19 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0040 09 00 00 00 00 00 00 00 09 00 00 00 00 00 00 00  ................
	0x0050 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0060 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0070 00 00 00 00 00 00 00 00 08 00 00 00 00 00 00 00  ................
	0x0080 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0090 0a 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00a0 00 00 00 00 00 00 00 00 10 00 00 00 00 00 00 00  ................
	0x00b0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00c0 20 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00   ...............
	0x00d0 00 00 00 00 00 00 00 00 30 00 00 00 00 00 00 00  ........0.......
	0x00e0 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x00f0 40 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  @...............
	0x0100 00 00 00 00 00 00 00 00 50 00 00 00 00 00 00 00  ........P.......
	0x0110 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0120 60 00 00 00 00 00 00 00                          `.......
	rel 24+8 t=1 runtime.algarray+0
	rel 32+8 t=1 runtime.gcbits.+0
	rel 40+4 t=5 type..namedata.*struct { siz uint32; started bool; heap bool; sp uintptr; pc uintptr; fn uintptr; _panic uintptr; link uintptr; args [0]uint8 }-+0
	rel 44+4 t=6 type.*struct { "".siz uint32; "".started bool; "".heap bool; "".sp uintptr; "".pc uintptr; "".fn uintptr; ""._panic uintptr; "".link uintptr; "".args [0]uint8 }+0
	rel 48+8 t=1 type..importpath."".+0
	rel 56+8 t=1 type.noalg.struct { "".siz uint32; "".started bool; "".heap bool; "".sp uintptr; "".pc uintptr; "".fn uintptr; ""._panic uintptr; "".link uintptr; "".args [0]uint8 }+80
	rel 80+8 t=1 type..namedata.siz-+0
	rel 88+8 t=1 type.uint32+0
	rel 104+8 t=1 type..namedata.started-+0
	rel 112+8 t=1 type.bool+0
	rel 128+8 t=1 type..namedata.heap-+0
	rel 136+8 t=1 type.bool+0
	rel 152+8 t=1 type..namedata.sp-+0
	rel 160+8 t=1 type.uintptr+0
	rel 176+8 t=1 type..namedata.pc-+0
	rel 184+8 t=1 type.uintptr+0
	rel 200+8 t=1 type..namedata.fn-+0
	rel 208+8 t=1 type.uintptr+0
	rel 224+8 t=1 type..namedata._panic-+0
	rel 232+8 t=1 type.uintptr+0
	rel 248+8 t=1 type..namedata.link-+0
	rel 256+8 t=1 type.uintptr+0
	rel 272+8 t=1 type..namedata.args-+0
	rel 280+8 t=1 type.[0]uint8+0
type..importpath.log. SRODATA dupok size=6
	0x0000 00 00 03 6c 6f 67                                ...log
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·9fb7f0986f647f17cb53dda1484e0f7a SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·568470801006e5c0dc3947ea998fe279 SRODATA dupok size=10
	0x0000 02 00 00 00 02 00 00 00 00 02                    ..........
gclocals·1cf923758aae2e428391d1783fe59973 SRODATA dupok size=11
	0x0000 03 00 00 00 02 00 00 00 00 01 02                 ...........
"".main.func1.stkobj SRODATA dupok size=24
	0x0000 01 00 00 00 00 00 00 00 f0 ff ff ff ff ff ff ff  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
	rel 16+8 t=1 type.[1]interface {}+0
