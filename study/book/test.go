package main

import (
	"fmt"
	"math/rand"
	"study_golang/study/data_structure/tree/trie_tree"
	"time"
	"unsafe"
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

func main() {
	fmt.Println(GetRandomString(32))
	fmt.Println(time.Now().UnixNano())

	fmt.Println(unsafe.Sizeof(trie_tree.TrieNode{}))
}
