package unsafe

import (
	"fmt"
	"unsafe"
)

type Part1 struct {
	a bool
	b int32
	c int8
	d int64
	e byte
}
type Part2 struct {
	e byte
	c int8
	a bool
	b int32
	d int64
}

func main() {
	fmt.Printf("bool size: %d\n", unsafe.Sizeof(bool(true)))
	fmt.Printf("int32 size: %d\n", unsafe.Sizeof(int32(0)))
	fmt.Printf("int8 size: %d\n", unsafe.Sizeof(int8(0)))
	fmt.Printf("int64 size: %d\n", unsafe.Sizeof(int64(0)))
	fmt.Printf("byte size: %d\n", unsafe.Sizeof(byte(0)))
	fmt.Printf("string size: %d\n", unsafe.Sizeof("EDDYCJY"))

	part1 := Part1{}
	fmt.Printf("part1 size: %d, align: %d\n", unsafe.Sizeof(part1), unsafe.Alignof(part1))

	fmt.Println("===========================================================================")
	fmt.Printf("bool align: %d\n", unsafe.Alignof(bool(true)))
	fmt.Printf("int32 align: %d\n", unsafe.Alignof(int32(0)))
	fmt.Printf("int8 align: %d\n", unsafe.Alignof(int8(0)))
	fmt.Printf("int64 align: %d\n", unsafe.Alignof(int64(0)))
	fmt.Printf("byte align: %d\n", unsafe.Alignof(byte(0)))
	fmt.Printf("string align: %d\n", unsafe.Alignof("EDDYCJY"))
	fmt.Printf("map align: %d\n", unsafe.Alignof(map[string]string{}))

	part2 := Part2{}
	fmt.Printf("part1 size: %d, align: %d\n", unsafe.Sizeof(part1), unsafe.Alignof(part1))
	fmt.Printf("part2 size: %d, align: %d\n", unsafe.Sizeof(part2), unsafe.Alignof(part2))

	fmt.Println("4 << (^uintptr(0) >> 63)")
	fmt.Println(4 << (^uintptr(0) >> 63))
}
