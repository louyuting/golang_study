"".add STEXT nosplit size=20 args=0x10 locals=0x0
	0x0000 00000 (test1.go:5)	TEXT	"".add(SB), NOSPLIT|ABIInternal, $0-16
	0x0000 00000 (test1.go:5)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (test1.go:5)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (test1.go:5)	FUNCDATA	$2, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x0000 00000 (test1.go:6)	PCDATA	$0, $0
	0x0000 00000 (test1.go:6)	PCDATA	$1, $0
	0x0000 00000 (test1.go:6)	MOVL	"".b+12(SP), AX
	0x0004 00004 (test1.go:6)	MOVL	"".a+8(SP), CX
	0x0008 00008 (test1.go:6)	ADDL	CX, AX
	0x000a 00010 (test1.go:6)	MOVL	AX, "".~r2+16(SP)
	0x000e 00014 (test1.go:6)	MOVB	$1, "".~r3+20(SP)
	0x0013 00019 (test1.go:6)	RET
	0x0000 8b 44 24 0c 8b 4c 24 08 01 c8 89 44 24 10 c6 44  .D$..L$....D$..D
	0x0010 24 14 01 c3                                      $...
"".main STEXT size=65 args=0x0 locals=0x18
	0x0000 00000 (test1.go:9)	TEXT	"".main(SB), ABIInternal, $24-0
	0x0000 00000 (test1.go:9)	MOVQ	(TLS), CX
	0x0009 00009 (test1.go:9)	CMPQ	SP, 16(CX)
	0x000d 00013 (test1.go:9)	JLS	58
	0x000f 00015 (test1.go:9)	SUBQ	$24, SP
	0x0013 00019 (test1.go:9)	MOVQ	BP, 16(SP)
	0x0018 00024 (test1.go:9)	LEAQ	16(SP), BP
	0x001d 00029 (test1.go:9)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (test1.go:9)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (test1.go:9)	FUNCDATA	$2, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (test1.go:10)	PCDATA	$0, $0
	0x001d 00029 (test1.go:10)	PCDATA	$1, $0
	0x001d 00029 (test1.go:10)	MOVQ	$137438953482, AX
	0x0027 00039 (test1.go:10)	MOVQ	AX, (SP)
	0x002b 00043 (test1.go:10)	CALL	"".add(SB)
	0x0030 00048 (test1.go:11)	MOVQ	16(SP), BP
	0x0035 00053 (test1.go:11)	ADDQ	$24, SP
	0x0039 00057 (test1.go:11)	RET
	0x003a 00058 (test1.go:11)	NOP
	0x003a 00058 (test1.go:9)	PCDATA	$1, $-1
	0x003a 00058 (test1.go:9)	PCDATA	$0, $-1
	0x003a 00058 (test1.go:9)	CALL	runtime.morestack_noctxt(SB)
	0x003f 00063 (test1.go:9)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 2b 48  eH..%....H;a.v+H
	0x0010 83 ec 18 48 89 6c 24 10 48 8d 6c 24 10 48 b8 0a  ...H.l$.H.l$.H..
	0x0020 00 00 00 20 00 00 00 48 89 04 24 e8 00 00 00 00  ... ...H..$.....
	0x0030 48 8b 6c 24 10 48 83 c4 18 c3 e8 00 00 00 00 eb  H.l$.H..........
	0x0040 bf                                               .
	rel 5+4 t=16 TLS+0
	rel 44+4 t=8 "".add+0
	rel 59+4 t=8 runtime.morestack_noctxt+0
go.cuinfo.packagename. SDWARFINFO dupok size=0
	0x0000 6d 61 69 6e                                      main
go.loc."".add SDWARFLOC size=71
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 01 00 9c 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0020 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0030 00 00 00 02 00 91 04 00 00 00 00 00 00 00 00 00  ................
	0x0040 00 00 00 00 00 00 00                             .......
	rel 0+8 t=50 "".add+0
	rel 8+8 t=50 "".add+20
	rel 35+8 t=50 "".add+0
	rel 43+8 t=50 "".add+20
go.info."".add SDWARFINFO size=82
	0x0000 03 22 22 2e 61 64 64 00 00 00 00 00 00 00 00 00  ."".add.........
	0x0010 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01 10  ................
	0x0020 61 00 00 05 00 00 00 00 00 00 00 00 10 62 00 00  a............b..
	0x0030 05 00 00 00 00 00 00 00 00 0f 7e 72 32 00 01 05  ..........~r2...
	0x0040 00 00 00 00 00 0f 7e 72 33 00 01 05 00 00 00 00  ......~r3.......
	0x0050 00 00                                            ..
	rel 8+8 t=1 "".add+0
	rel 16+8 t=1 "".add+20
	rel 26+4 t=29 gofile../Users/ytlou/Desktop/golang/golang_study/study/basic/assembly/test1.go+0
	rel 36+4 t=28 go.info.int32+0
	rel 40+4 t=28 go.loc."".add+0
	rel 49+4 t=28 go.info.int32+0
	rel 53+4 t=28 go.loc."".add+35
	rel 64+4 t=28 go.info.int32+0
	rel 76+4 t=28 go.info.bool+0
go.range."".add SDWARFRANGE size=0
go.isstmt."".add SDWARFMISC size=0
	0x0000 04 04 01 10 00                                   .....
go.loc."".main SDWARFLOC size=0
go.info."".main SDWARFINFO size=33
	0x0000 03 22 22 2e 6d 61 69 6e 00 00 00 00 00 00 00 00  ."".main........
	0x0010 00 00 00 00 00 00 00 00 00 01 9c 00 00 00 00 01  ................
	0x0020 00                                               .
	rel 9+8 t=1 "".main+0
	rel 17+8 t=1 "".main+65
	rel 27+4 t=29 gofile../Users/ytlou/Desktop/golang/golang_study/study/basic/assembly/test1.go+0
go.range."".main SDWARFRANGE size=0
go.isstmt."".main SDWARFMISC size=0
	0x0000 04 0f 04 0e 03 0a 01 04 02 16 00                 ...........
""..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
