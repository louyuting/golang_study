package main

import (
	"fmt"
	"math/rand"
	"time"
	"unsafe"
)

func main() {
	str := "dddddeee"
	int666 := int64(1)
	start := time.Now().UnixNano()
	for i := 0; i < 1000000; i++ {
		memhash(unsafe.Pointer(&int666), 1, 8)
	}
	end := time.Now().UnixNano()
	fmt.Println(memhash(unsafe.Pointer(&str), 1, unsafe.Sizeof(str)))
	fmt.Println("total time:", end-start, "ns")
}

// used in hash{32,64}.go to seed the hash function
var hashkey [4]uintptr

const PtrSize = 4 << (^uintptr(0) >> 63)

func init() {
	for i := 0; i < 4; i++ {
		hashkey[i] = uintptr(rand.Int63())
	}
	hashkey[0] |= 1 // make sure these numbers are odd
	hashkey[1] |= 1
	hashkey[2] |= 1
	hashkey[3] |= 1
}

func add(p unsafe.Pointer, x uintptr) unsafe.Pointer {
	return unsafe.Pointer(uintptr(p) + x)
}
func rotl_31(x uint64) uint64 {
	return (x << 31) | (x >> (64 - 31))
}

const (
	// Constants for multiplication: four random odd 64-bit numbers.
	m1 = 16877499708836156737
	m2 = 2820277070424839065
	m3 = 9497967016996688599
	m4 = 15839092249703872147
)

const (
	BigEndian           = false
	DefaultPhysPageSize = 4096
	PCQuantum           = 1
	Int64Align          = 8
	MinFrameSize        = 0
)

func readUnaligned64(p unsafe.Pointer) uint64 {
	q := (*[8]byte)(p)
	if BigEndian {
		return uint64(q[7]) | uint64(q[6])<<8 | uint64(q[5])<<16 | uint64(q[4])<<24 |
			uint64(q[3])<<32 | uint64(q[2])<<40 | uint64(q[1])<<48 | uint64(q[0])<<56
	}
	return uint64(q[0]) | uint64(q[1])<<8 | uint64(q[2])<<16 | uint64(q[3])<<24 | uint64(q[4])<<32 | uint64(q[5])<<40 | uint64(q[6])<<48 | uint64(q[7])<<56
}

// Note: These routines perform the read with an native endianness.
func readUnaligned32(p unsafe.Pointer) uint32 {
	q := (*[4]byte)(p)
	if BigEndian {
		return uint32(q[3]) | uint32(q[2])<<8 | uint32(q[1])<<16 | uint32(q[0])<<24
	}
	return uint32(q[0]) | uint32(q[1])<<8 | uint32(q[2])<<16 | uint32(q[3])<<24
}

func memhash(p unsafe.Pointer, seed, s uintptr) uintptr {
	h := uint64(seed + s*hashkey[0])
tail:
	switch {
	case s == 0:
	case s < 4:
		h ^= uint64(*(*byte)(p))
		h ^= uint64(*(*byte)(add(p, s>>1))) << 8
		h ^= uint64(*(*byte)(add(p, s-1))) << 16
		h = rotl_31(h*m1) * m2
	case s <= 8:
		h ^= uint64(readUnaligned32(p))
		h ^= uint64(readUnaligned32(add(p, s-4))) << 32
		h = rotl_31(h*m1) * m2
	case s <= 16:
		h ^= readUnaligned64(p)
		h = rotl_31(h*m1) * m2
		h ^= readUnaligned64(add(p, s-8))
		h = rotl_31(h*m1) * m2
	case s <= 32:
		h ^= readUnaligned64(p)
		h = rotl_31(h*m1) * m2
		h ^= readUnaligned64(add(p, 8))
		h = rotl_31(h*m1) * m2
		h ^= readUnaligned64(add(p, s-16))
		h = rotl_31(h*m1) * m2
		h ^= readUnaligned64(add(p, s-8))
		h = rotl_31(h*m1) * m2
	default:
		v1 := h
		v2 := uint64(seed * hashkey[1])
		v3 := uint64(seed * hashkey[2])
		v4 := uint64(seed * hashkey[3])
		for s >= 32 {
			v1 ^= readUnaligned64(p)
			v1 = rotl_31(v1*m1) * m2
			p = add(p, 8)
			v2 ^= readUnaligned64(p)
			v2 = rotl_31(v2*m2) * m3
			p = add(p, 8)
			v3 ^= readUnaligned64(p)
			v3 = rotl_31(v3*m3) * m4
			p = add(p, 8)
			v4 ^= readUnaligned64(p)
			v4 = rotl_31(v4*m4) * m1
			p = add(p, 8)
			s -= 32
		}
		h = v1 ^ v2 ^ v3 ^ v4
		goto tail
	}

	h ^= h >> 29
	h *= m3
	h ^= h >> 32
	return uintptr(h)
}
