package trie_tree

import (
	"fmt"
	"testing"
	"time"
)

func prepareData() *TrieNode {
	root := &TrieNode{
		freq:     -1,
		nodeChar: 0,
		childs:   make([]*TrieNode, 26),
	}
	for i := 0; i < 1000000; i++ {
		addNode(root, GetRandomString(32))
	}
	return root
}

func TestTrie(t *testing.T) {
	root := prepareData()
	str := GetRandomString(32)
	addNode(root, str)
	fmt.Println(str)
	start := time.Now().UnixNano()
	freq := get(root, str) - 1
	end := time.Now().UnixNano()
	fmt.Println(freq)
	fmt.Println(end - start)
}
