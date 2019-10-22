"".main STEXT size=65 args=0x0 locals=0x18
	0x0000 00000 (panic_test1.go:3)	TEXT	"".main(SB), ABIInternal, $24-0
	0x0000 00000 (panic_test1.go:3)	MOVQ	(TLS), CX
	0x0009 00009 (panic_test1.go:3)	CMPQ	SP, 16(CX)
	0x000d 00013 (panic_test1.go:3)	JLS	58
	0x000f 00015 (panic_test1.go:3)	SUBQ	$24, SP
	0x0013 00019 (panic_test1.go:3)	MOVQ	BP, 16(SP)
	0x0018 00024 (panic_test1.go:3)	LEAQ	16(SP), BP
	0x001d 00029 (panic_test1.go:3)	FUNCDATA	$0, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (panic_test1.go:3)	FUNCDATA	$1, gclocals·33cdeccccebe80329f1fdbee7f5874cb(SB)
	0x001d 00029 (panic_test1.go:3)	FUNCDATA	$2, gclocals·9fb7f0986f647f17cb53dda1484e0f7a(SB)
	0x001d 00029 (panic_test1.go:4)	PCDATA	$0, $1
	0x001d 00029 (panic_test1.go:4)	PCDATA	$1, $0
	0x001d 00029 (panic_test1.go:4)	LEAQ	type.string(SB), AX
	0x0024 00036 (panic_test1.go:4)	PCDATA	$0, $0
	0x0024 00036 (panic_test1.go:4)	MOVQ	AX, (SP)
	0x0028 00040 (panic_test1.go:4)	PCDATA	$0, $1
	0x0028 00040 (panic_test1.go:4)	LEAQ	""..stmp_0(SB), AX
	0x002f 00047 (panic_test1.go:4)	PCDATA	$0, $0
	0x002f 00047 (panic_test1.go:4)	MOVQ	AX, 8(SP)
	0x0034 00052 (panic_test1.go:4)	CALL	runtime.gopanic(SB)
	0x0039 00057 (panic_test1.go:4)	XCHGL	AX, AX
	0x003a 00058 (panic_test1.go:4)	NOP
	0x003a 00058 (panic_test1.go:3)	PCDATA	$1, $-1
	0x003a 00058 (panic_test1.go:3)	PCDATA	$0, $-1
	0x003a 00058 (panic_test1.go:3)	CALL	runtime.morestack_noctxt(SB)
	0x003f 00063 (panic_test1.go:3)	JMP	0
	0x0000 65 48 8b 0c 25 00 00 00 00 48 3b 61 10 76 2b 48  eH..%....H;a.v+H
	0x0010 83 ec 18 48 89 6c 24 10 48 8d 6c 24 10 48 8d 05  ...H.l$.H.l$.H..
	0x0020 00 00 00 00 48 89 04 24 48 8d 05 00 00 00 00 48  ....H..$H......H
	0x0030 89 44 24 08 e8 00 00 00 00 90 e8 00 00 00 00 eb  .D$.............
	0x0040 bf                                               .
	rel 5+4 t=16 TLS+0
	rel 32+4 t=15 type.string+0
	rel 43+4 t=15 ""..stmp_0+0
	rel 53+4 t=8 runtime.gopanic+0
	rel 59+4 t=8 runtime.morestack_noctxt+0
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
	rel 17+8 t=1 "".main+65
	rel 27+4 t=29 gofile../Users/ytlou/Desktop/golang/golang_study/study/basic/panic/panic_test1.go+0
go.range."".main SDWARFRANGE size=0
go.isstmt."".main SDWARFMISC size=0
	0x0000 04 0f 04 0e 03 07 01 10 02 0d 00                 ...........
""..inittask SNOPTRDATA size=24
	0x0000 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00  ................
	0x0010 00 00 00 00 00 00 00 00                          ........
""..stmp_0 SRODATA size=16
	0x0000 00 00 00 00 00 00 00 00 0b 00 00 00 00 00 00 00  ................
	rel 0+8 t=1 go.string."qwertyuiop."+0
gclocals·33cdeccccebe80329f1fdbee7f5874cb SRODATA dupok size=8
	0x0000 01 00 00 00 00 00 00 00                          ........
gclocals·9fb7f0986f647f17cb53dda1484e0f7a SRODATA dupok size=10
	0x0000 02 00 00 00 01 00 00 00 00 01                    ..........
