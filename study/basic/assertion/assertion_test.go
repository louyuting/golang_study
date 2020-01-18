package main

import (
	"testing"
	"unsafe"
)

type Student struct {
	Name  string
	Age   int
	Class string
	Score int
}

func DirectInvoke(s *Student) {
	s.Name = "Jerry"
	s.Age = 18
	s.Class = "20005"
	s.Score = 100
}

func PointerInvoke(p unsafe.Pointer) {
	s := (*Student)(p)
	s.Name = "Jerry"
	s.Age = 18
	s.Class = "20005"
	s.Score = 100
}
func InterfaceInvoke(i interface{}) {
	s := i.(*Student)
	s.Name = "Jerry"
	s.Age = 18
	s.Class = "20005"
	s.Score = 100
}

func BenchmarkAssertDirectInvoke(b *testing.B) {
	s := new(Student)
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		DirectInvoke(s)
	}
	_ = s
}

func BenchmarkAssertPointerInvoke(b *testing.B) {
	s := new(Student)
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		PointerInvoke(unsafe.Pointer(s))
	}
	_ = s
}

func BenchmarkAssertInterfaceInvoke(b *testing.B) {
	s := new(Student)
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		InterfaceInvoke(s)
	}
	_ = s
}
