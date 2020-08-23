package main

import (
	"testing"
)

var Result int

func addf(a, b int) int {
	return a + b
}

func BenchmarkAddNative(b *testing.B) {
	var r int
	for i := 0; i < b.N; i++ {
		r = addf(i, i)
	}
	Result = r
}

func BenchmarkAddAsm(b *testing.B) {
	var r int
	for i := 0; i < b.N; i++ {
		r = add(int(i), int(i))
	}
	Result = r
}
