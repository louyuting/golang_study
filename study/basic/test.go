package main

import (
	"fmt"
	"math/rand"
	"time"
)

func GetRandomString(l int) string {
	str := "abcdefghijklmnopqrstuvwxyz"
	bytes := []byte(str)
	result := []byte{}
	r := rand.New(rand.NewSource(time.Now().UnixNano()))
	for i := 0; i < l; i++ {
		result = append(result, bytes[r.Intn(len(bytes))])
	}
	return string(result)
}

type I interface {
	Get() string
}
type III struct {
	s string
}

func (i *III) Get() string {
	return i.s
}

const (
	mutexLocked = 1 << iota // mutex is locked
	mutexWoken
	mutexStarving
	mutexWaiterShift = iota

	starvationThresholdNs = 1e6
)

func main() {

	fmt.Println(mutexLocked)
	fmt.Println(mutexWoken)
	fmt.Println(mutexStarving)
	fmt.Println(mutexWaiterShift)
	fmt.Println(starvationThresholdNs)

	//fmt.Println(GetRandomString(32))
	//fmt.Println(time.Now().UnixNano())
	//fmt.Println(unsafe.Sizeof(trie_tree.TrieNode{}))

	//fmt.Println(unsafe.Sizeof(int(1)))
	//fmt.Println(unsafe.Sizeof(int64(1)))

	var a interface{} = &III{
		s: "test",
	}
	b, ok := a.(III)
	if ok {
		fmt.Println("yes")
		fmt.Println("b=", b.Get())
	} else {
		fmt.Println("no")
	}

	tt := time.Now()
	fmt.Println(tt.Unix())
	fmt.Println(tt.Nanosecond())
	fmt.Println(tt.UnixNano())
}
