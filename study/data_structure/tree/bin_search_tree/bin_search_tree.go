package binary_search_tree

/**
定义数据结构
*/
type BinarySearchNode struct {
	key   int
	value string
	left  *BinarySearchNode
	right *BinarySearchNode
}

/**
定义一个二叉查找树
*/
type BinarySearchTree struct {
	root *BinarySearchNode
	size int
}

func newBinarySearchNode(k int, v string) *BinarySearchNode {
	return &BinarySearchNode{
		key:   k,
		value: v,
		left:  nil,
		right: nil,
	}
}

func newBinarySearchTree() *BinarySearchTree {
	return &BinarySearchTree{
		root: nil,
		size: 0,
	}
}

/**
返回是否插入成功
*/
func (bst *BinarySearchTree) Put(k int, v string) bool {
	if bst.root == nil {
		bst.root = &BinarySearchNode{
			key:   k,
			value: v,
			left:  nil,
			right: nil,
		}
		bst.size++
		return true
	}
	succ := insert(bst.root, k, v)
	if succ {
		bst.size++
	}
	return succ
}

func (bst *BinarySearchTree) Delete(k int) bool {
	if bst == nil {
		panic("binary search tree is nil")
	}
	return delete(bst.root, k) != nil
}

func (bst *BinarySearchTree) Get(k int) (string, bool) {
	if bst == nil {
		panic("binary search tree is nil")
	}
	return get(bst.root, k)
}

/**
insert or update
precondition: root is not nil
如果当前结点为nil, 表示bsn为根节点，且为nil, 直接panic
如果当前结点的key大于k, 那么递归插入左结点；
如果当前结点的key小于k, 那么递归插入右结点；
*/
func insert(root *BinarySearchNode, k int, v string) bool {
	if root == nil {
		// occur only root is nil
		panic("root is nil")
	}
	if k < root.key && root.left != nil {
		//recursively insert into left
		return insert(root.left, k, v)
	} else if k < root.key && root.left == nil {
		//insert into left
		root.left = &BinarySearchNode{
			key:   k,
			value: v,
			left:  nil,
			right: nil,
		}
		return true
	} else if k > root.key && root.right != nil {
		//recursively insert into right
		return insert(root.right, k, v)
	} else if k > root.key && root.right == nil {
		root.right = &BinarySearchNode{
			key:   k,
			value: v,
			left:  nil,
			right: nil,
		}
		return true
	} else {
		// update current node
		root.value = v
		return true
	}
}

/**
delete a node named k
*/
func delete(root *BinarySearchNode, k int) *BinarySearchNode {
	if root == nil {
		panic("delete from nil tree")
	}
	if root.key > k && root.left != nil {
		root.left = delete(root.left, k)
	} else if root.key > k && root.left == nil {
		// k is not existed, return success
		return nil
	} else if root.key < k && root.right != nil {
		root.right = delete(root.right, k)
	} else if root.key < k && root.right == nil {
		// k is not existed, return success
		return nil
	} else {
		// root.key == key， delete current node
		if root.left != nil && root.right != nil {
			// both left child and right child of this bsn are not nill
			// find the min key which is greater than root.key
			minNode := findMin(root.right)
			root.key = minNode.key
			root.value = minNode.value
			delete(root.right, root.key)
		} else {
			// single child or no child
			if root.left == nil {
				root = root.right
			} else {
				root = root.left
			}
		}
	}
	return root
}

func get(root *BinarySearchNode, k int) (string, bool) {
	if root == nil {
		return "", false
	}
	if root.key == k {
		return root.value, true
	} else if root.key > k && root.left != nil {
		return get(root.left, k)
	} else if root.key < k && root.right != nil {
		return get(root.right, k)
	} else {
		return "", false
	}
}

/**
从root结点开始找到最小key的节点
*/
func findMin(root *BinarySearchNode) *BinarySearchNode {
	if root == nil {
		panic("the tree is nil")
	}
	if root.left != nil {
		return findMin(root.left)
	} else {
		return root
	}
}
