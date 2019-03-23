package trie_tree

import (
	"math/rand"
	"time"
)

/**
字典树
*/
type TrieNode struct {
	/* 子节点 */
	childs []*TrieNode

	freq int

	nodeChar byte
}

func addNode(root *TrieNode, word string) {
	if len(word) == 0 {
		return
	}
	//找到word的第一个字符在root节点的第k个子节点
	k := word[0] - 'a'

	if root.childs[k] == nil {
		root.childs[k] = &TrieNode{
			freq:     1,
			nodeChar: word[0],
			childs:   make([]*TrieNode, 26),
		}
	}
	nextWord := word[1:]
	if len(nextWord) == 0 {
		root.childs[k].freq++
		return
	}
	addNode(root.childs[k], nextWord)
}

func deleteNode(root *TrieNode, word string) {
	if len(word) == 0 {
		return
	}
	//找到word的第一个字符在root节点的第k个子节点
	k := word[0] - 'a'
	if root.childs[k] == nil {
		return
	}
	nextWord := word[1:]
	if len(nextWord) == 0 && root.childs[k].freq > 0 {
		root.childs[k].freq--
	}
	deleteNode(root.childs[k], nextWord)
}

/**
获取word出现的频率；
频率大于0表示存在，如果不存在频率为0
*/
func get(root *TrieNode, word string) int {
	if len(word) == 0 {
		return 0
	}
	k := word[0] - 'a'
	if root.childs[k] == nil {
		return 0
	}
	nextWord := word[1:]
	if len(nextWord) == 0 {
		return root.childs[k].freq
	}
	return get(root.childs[k], nextWord)
}

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
