package binary_search_tree

import (
	"fmt"
	"strconv"
	"testing"
)

/*
		33
      /    \
    22      44
  /   \     / \
 11    28  40  49
/ \    /\   \    \
7  16 25 30  42   60
*/
func prepare_data() (*BinarySearchNode, int) {
	root := &BinarySearchNode{
		key:   33,
		value: "33",
	}
	key_22 := &BinarySearchNode{
		key:   22,
		value: "22",
	}
	key_44 := &BinarySearchNode{
		key:   44,
		value: "44",
	}
	key_11 := &BinarySearchNode{
		key:   11,
		value: "11",
	}
	key_28 := &BinarySearchNode{
		key:   28,
		value: "28",
	}
	key_40 := &BinarySearchNode{
		key:   40,
		value: "40",
	}
	key_49 := &BinarySearchNode{
		key:   49,
		value: "49",
	}
	key_7 := &BinarySearchNode{
		key:   7,
		value: "7",
	}
	key_16 := &BinarySearchNode{
		key:   16,
		value: "16",
	}
	key_25 := &BinarySearchNode{
		key:   25,
		value: "25",
	}
	key_30 := &BinarySearchNode{
		key:   30,
		value: "30",
	}
	key_42 := &BinarySearchNode{
		key:   42,
		value: "42",
	}
	key_60 := &BinarySearchNode{
		key:   60,
		value: "60",
	}
	/*
				33
			  /    \
			22      44
		  /   \     / \
		 11    28  40  49
		/ \    /\   \    \
		7  16 25 30  42   60
	*/
	root.left = key_22
	root.right = key_44
	key_22.left = key_11
	key_22.right = key_28
	key_44.left = key_40
	key_44.right = key_49
	key_11.left = key_7
	key_11.right = key_16
	key_28.left = key_25
	key_28.right = key_30
	key_40.right = key_42
	key_49.right = key_60

	return root, 13
}

func TestBinarySearchTree_Get(t *testing.T) {
	root, num := prepare_data()
	bst := &BinarySearchTree{
		root: root,
		size: num,
	}
	fmt.Println(bst.Get(42))
}

/*
			33
		  /    \
		22      44
	  /   \     / \
	 11    28  40  49
	/ \    /\   \    \
	7  16 25 30  42   60
*/
func TestBinarySearchTree_Put(t *testing.T) {
	root, num := prepare_data()
	bst := &BinarySearchTree{
		root: root,
		size: num,
	}
	fmt.Println(bst.Put(7, "6"))
	val, ok := bst.Get(7)
	fmt.Println("Get key = 7, ", ok, ", val=", val)
}

/*
			33
		  /    \
		22      44
	  /   \     / \
	 11    28  40  49
	/ \    /\   \    \
	7  16 25 30  42   60
*/
func TestBinarySearchTree_Delete(t *testing.T) {
	root, num := prepare_data()
	bst := &BinarySearchTree{
		root: root,
		size: num,
	}
	ok := bst.Delete(33)
	fmt.Println(ok)
	fmt.Println(bst.Get(7))
}

func TestBinarySearchTree_Put2(b *testing.T) {
	root, num := prepare_data()
	bst := &BinarySearchTree{
		root: root,
		size: num,
	}
	for i := 0; i < 10000; i++ {
		bst.Put(int(i), strconv.Itoa(i))
	}
	for i := 0; i < 10000; i++ {
		fmt.Println(bst.Get(int(i)))
	}
}

func TestBinarySearchTree_Put3(b *testing.T) {
	prepare_data()
	m := make(map[int]*BinarySearchNode)
	for i := 0; i < 10000; i++ {
		m[i] = &BinarySearchNode{
			key:   i,
			value: strconv.Itoa(i),
			left:  nil,
			right: nil,
		}
	}
	for i := 0; i < 10000; i++ {
		fmt.Println(m[i])
	}
}

func BenchmarkBinarySearchTree_Put(b *testing.B) {
	root, num := prepare_data()
	bst := &BinarySearchTree{
		root: root,
		size: num,
	}
	for i := 0; i < 10000; i++ {
		bst.Put(int(i), strconv.Itoa(i))
	}
	for i := 0; i < 10000; i++ {
		bst.Get(int(i))
	}
}
