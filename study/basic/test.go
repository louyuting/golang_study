// +build ignore

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

const Goarch386 = 0
const GoarchAmd64 = 1
const GoarchAmd64p32 = 0
const GoarchArm = 0
const GoarchArmbe = 0
const GoarchArm64 = 0
const GoarchArm64be = 0
const GoarchPpc64 = 0
const GoarchPpc64le = 0
const GoarchMips = 0
const GoarchMipsle = 0
const GoarchMips64 = 0
const GoarchMips64le = 0
const GoarchMips64p32 = 0
const GoarchMips64p32le = 0
const GoarchPpc = 0
const GoarchRiscv = 0
const GoarchRiscv64 = 0
const GoarchS390 = 0
const GoarchS390x = 0
const GoarchSparc = 0
const GoarchSparc64 = 0
const GoarchWasm = 0
const GoosAix = 0
const GoosAndroid = 0
const GoosDarwin = 1
const GoosDragonfly = 0
const GoosFreebsd = 0
const GoosHurd = 0
const GoosIllumos = 0
const GoosJs = 0
const GoosLinux = 0
const GoosNacl = 0
const GoosNetbsd = 0
const GoosOpenbsd = 0
const GoosPlan9 = 0
const GoosSolaris = 0
const GoosWindows = 0
const GoosZos = 0

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

	_64bit := 1 << (^uintptr(0) >> 63) / 2
	fmt.Println(":", (6+20)*(_64bit*(1-GoosWindows)*(1-GoosAix)*(1-GoarchWasm))+(2+20)*(_64bit*GoosWindows)+(2+20)*(1-_64bit)+(8+20)*GoosAix+(2+20)*GoarchWasm)
	fmt.Println(4 << (^uintptr(0) >> 63))

	fmt.Println(">>", 0<<1)
}
