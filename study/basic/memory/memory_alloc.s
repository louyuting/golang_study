"".f1 STEXT size=79 args=0x8 locals=0x18
	0x0000 00000 (memory_alloc.go:4)	TEXT	"".f1(SB), ABIInternal, $24-8
	0x0000 00000 (memory_alloc.go:4)	MOVQ	(TLS), CX
	0x0009 00009 (memory_alloc.go:4)	CMPQ	SP, 16(CX)
	0x000d 00013 (memory_alloc.go:4)	JLS	72
	0x000f 00015 (memory_alloc.go:4)	SUBQ	$24, SP
	0x0013 00019 (memory_alloc.go:4)	MOVQ	BP, 16(SP)
	0x0018 00024 (memory_alloc.go:4)	LEAQ	16(SP), BP
	0x001d 00029 (memory_alloc.go:4)	FUNCDATA	$0, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x001d 00029 (memory_alloc.go:4)	FUNCDATA	$1, gclocals·69c1753bd5f81501d95132d08af04464(SB)
	0x001d 00029 (memory_alloc.go:4)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x001d 00029 (memory_alloc.go:5)	PCDATA	$0, $1
	0x001d 00029 (memory_alloc.go:5)	PCDATA	$1, $0
	0x001d 00029 (memory_alloc.go:5)	LEAQ	type.int(SB), AX
	0x0024 00036 (memory_alloc.go:5)	PCDATA	$0, $0
	0x0024 00036 (memory_alloc.go:5)	MOVQ	AX, (SP)
	0x0028 00040 (memory_alloc.go:5)	CALL	runtime.newobject(SB)
	0x002d 00045 (memory_alloc.go:5)	PCDATA	$0, $1
	0x002d 00045 (memory_alloc.go:5)	MOVQ	8(SP), AX
	0x0032 00050 (memory_alloc.go:5)	MOVQ	$2, (AX)
	0x0039 00057 (memory_alloc.go:6)	PCDATA	$0, $0
	0x0039 00057 (memory_alloc.go:6)	PCDATA	$1, $1
	0x0039 00057 (memory_alloc.go:6)	MOVQ	AX, "".~r0+32(SP)
	0x003e 00062 (memory_alloc.go:6)	MOVQ	16(SP), BP
	0x0043 00067 (memory_alloc.go:6)	ADDQ	$24, SP
	0x0047 00071 (memory_alloc.go:6)	RET
	0x0048 00072 (memory_alloc.go:6)	NOP
	0x0048 00072 (memory_alloc.go:4)	PCDATA	$1, $-1
	0x0048 00072 (memory_alloc.go:4)	PCDATA	$0, $-1
	0x0048 00072 (memory_alloc.go:4)	CALL	runtime.morestack_noctxt(SB)
	0x004d 00077 (memory_alloc.go:4)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 39 48  eH..%....H;a.v9H
	0x0010 83 ec 18 48 89 6c 24 10 48 8d 6c 24 10 48 8d 05  ...H.l$.H.l$.H..
	0x0020 00 00 00 00 48 89 04 24 e8 00 00 00 00 48 8b 44  ....H..$.....H.D
	0x0030 24 08 48 c7 00 02 00 00 00 48 89 44 24 20 48 8b  $.H......H.D$ H.
	0x0040 6c 24 10 48 83 c4 18 c3 e8 00 00 00 00 eb b1     l$.H...........
	rel 5+4 t=16 TLS+0
	rel 32+4 t=15 type.int+0
	rel 41+4 t=8 runtime.newobject+0
	rel 73+4 t=8 runtime.morestack_noctxt+0
"".main STEXT size=84 args=0x0 locals=0x18
	0x0000 00000 (memory_alloc.go:9)	TEXT	"".main(SB), ABIInternal, $24-0
	0x0000 00000 (memory_alloc.go:9)	MOVQ	(TLS), CX
	0x0009 00009 (memory_alloc.go:9)	CMPQ	SP, 16(CX)
	0x000d 00013 (memory_alloc.go:9)	JLS	77
	0x000f 00015 (memory_alloc.go:9)	SUBQ	$24, SP
	0x0013 00019 (memory_alloc.go:9)	MOVQ	BP, 16(SP)
	0x0018 00024 (memory_alloc.go:9)	LEAQ	16(SP), BP
	0x001d 00029 (memory_alloc.go:9)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (memory_alloc.go:9)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (memory_alloc.go:9)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x001d 00029 (memory_alloc.go:10)	PCDATA	$0, $0
	0x001d 00029 (memory_alloc.go:10)	PCDATA	$1, $0
	0x001d 00029 (<unknown line number>)	NOP
	0x001d 00029 (memory_alloc.go:10)	MOVQ	$2, "".y+8(SP)
	0x0026 00038 (memory_alloc.go:11)	CALL	runtime.printlock(SB)
	0x002b 00043 (memory_alloc.go:11)	PCDATA	$0, $1
	0x002b 00043 (memory_alloc.go:11)	LEAQ	"".y+8(SP), AX
	0x0030 00048 (memory_alloc.go:11)	PCDATA	$0, $0
	0x0030 00048 (memory_alloc.go:11)	MOVQ	AX, (SP)
	0x0034 00052 (memory_alloc.go:11)	CALL	runtime.printpointer(SB)
	0x0039 00057 (memory_alloc.go:11)	CALL	runtime.printnl(SB)
	0x003e 00062 (memory_alloc.go:11)	CALL	runtime.printunlock(SB)
	0x0043 00067 (memory_alloc.go:12)	MOVQ	16(SP), BP
	0x0048 00072 (memory_alloc.go:12)	ADDQ	$24, SP
	0x004c 00076 (memory_alloc.go:12)	RET
	0x004d 00077 (memory_alloc.go:12)	NOP
	0x004d 00077 (memory_alloc.go:9)	PCDATA	$1, $-1
	0x004d 00077 (memory_alloc.go:9)	PCDATA	$0, $-1
	0x004d 00077 (memory_alloc.go:9)	CALL	runtime.morestack_noctxt(SB)
	0x0052 00082 (memory_alloc.go:9)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 3e 48  eH..%....H;a.v>H
	0x0010 83 ec 18 48 89 6c 24 10 48 8d 6c 24 10 48 c7 44  ...H.l$.H.l$.H.D
	0x0020 24 08 02 00 00 00 e8 00 00 00 00 48 8d 44 24 08  $..........H.D$.
	0x0030 48 89 04 24 e8 00 00 00 00 e8 00 00 00 00 e8 00  H..$............
	0x0040 00 00 00 48 8b 6c 24 10 48 83 c4 18 c3 e8 00 00  ...H.l$.H.......
	0x0050 00 00 eb ac                                      ....
	rel 5+4 t=16 TLS+0
	rel 39+4 t=8 runtime.printlock+0
	rel 53+4 t=8 runtime.printpointer+0
	rel 58+4 t=8 runtime.printnl+0
	rel 63+4 t=8 runtime.printunlock+0
	rel 78+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
go.info."".f1$abstract SDWARFINFO dupok size=16
	0x0000 04 2e 66 31 00 01 01 0c 79 00 05 00 00 00 00 00  ..f1....y.......
	rel 11+4 t=28 go.info.int+0
go.loc."".f1 SDWARFLOC size=35
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 01 00 50 00 00 00 00 00 00 00 00 00 00 00 00 00  ..P.............
	0x0020 00 00 00                                         ...
	rel 0+8 t=50 "".f1+50
	rel 8+8 t=50 "".f1+79
go.info."".f1 SDWARFINFO size=55
	0x0000 05 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 01 9c 0f 7e 72 30 00 01 04 00 00  ........~r0.....
	0x0020 00 00 00 0d 00 00 00 00 00 0b 26 79 00 05 00 00  ..........&y....
	0x0030 00 00 00 00 00 00 00                             .......
	rel 1+4 t=28 go.info."".f1$abstract+0
	rel 5+8 t=1 "".f1+0
	rel 13+8 t=1 "".f1+79
	rel 30+4 t=28 go.info.*int+0
	rel 36+4 t=28 go.info."".f1$abstract+7
	rel 46+4 t=28 go.info.*int+0
	rel 50+4 t=28 go.loc."".f1+0
go.range."".f1 SDWARFRANGE size=0
go.isstmt."".f1 SDWARFMISC size=0
	0x0000 04 0f 04 0e 03 07 01 04 02 05 01 0c 02 05 01 0a  ................
	0x0010 02 07 00                                         ...
go.loc."".main SDWARFLOC size=0
go.info."".main SDWARFINFO size=33
	0x0000 03 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+84
	rel 27+4 t=29 gofile../Users/ytlou/Desktop/golang/golang_study/study/basic/memory/memory_alloc.go+0
go.range."".main SDWARFRANGE size=0
go.isstmt."".main SDWARFMISC size=0
	0x0000 04 0f 04 0e 03 0e 01 09 02 20 00                 ......... .
""..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
gclocals·9fb7f0986f647f17cb53dda1484e0f7a SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
gclocals·69c1753bd5f81501d95132d08af04464 SRODATA dupok size=8
	0x0000 02 00 00 00 00 00 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
