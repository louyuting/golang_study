package main

import (
	"sync"
	"testing"
)

func BenchmarkSyncMap_Get(b *testing.B) {
	m := sync.Map{}
	m.Store("1", &Student{})
	m.Store("2", &Student{})
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		for i := 0; i < 10000; i++ {
			_, ok := m.Load("1")
			if !ok {
				b.Errorf("illegal")
			}
		}
		m.Store("3", &Student{})
	}
}

func BenchmarkWRMutex_Get(b *testing.B) {
	m := make(map[string]*Student)
	m["1"] = &Student{}
	m["2"] = &Student{}
	l := sync.RWMutex{}
	b.ResetTimer()
	for i := 0; i < b.N; i++ {
		for i := 0; i < 10000; i++ {
			l.RLock()
			_, ok := m["1"]
			l.RUnlock()
			if !ok {
				b.Errorf("illegal")
			}
		}
		l.Lock()
		m["3"] = &Student{}
		l.Unlock()
	}
}

type Student struct {
	Name  string
	Age   int
	Class string
	Score int
}
