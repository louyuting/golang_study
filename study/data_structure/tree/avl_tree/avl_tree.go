package avl_tree

import (
	"math"
)

/*
				33  h=3
			  /    \
		    22      44 h=2
		   /  \     / \
      h=0 11  28  40  49 h=1
               /\   \    \
		      25 30  42   60 h=0

父节点的左子树和右子树的高度之差不能大于1，

*/
type AvlNode struct {
	key   int
	value string
	// 树的高度, 以当前结点为根节点的子树的最大高度
	height int
	left   *AvlNode
	right  *AvlNode
}

func height(node *AvlNode) int {
	if node != nil {
		return node.height
	} else {
		return -1
	}
}

/**
左左旋转，新节点增加在左子树的左结点导致失衡,如下图新增节点1导致节点5失衡：
       5                                  3
     /   \                              /   \
    3     6        单旋转               2     5
   / \          ------------>          /    / \
  2   4                               1    4    6
 /
1
*/
func rotateLL(root *AvlNode) *AvlNode {
	/* 这里的root节点类似于上图中的节点5的存在 */
	// 获得到顶层节点
	top := root.left
	// 先截断当前结点的左孩子
	root.left = top.right
	// 将当前结点作为新的top节点的右孩子
	top.right = root

	root.height = int(math.Max(float64(height(root.left)), float64(height(root.right)))) + 1
	top.height = int(math.Max(float64(height(top.left)), float64(height(top.right)))) + 1

	return top
}

/**
右右旋转，新节点增加在右子树的右结点导致失衡,如下图新增节点9导致节点5失衡：
       5                                  7
     /   \                              /   \
    3     7         单旋转              5     8
         / \     ------------>        / \     \
        6   8                        3   6     9
             \
              9
*/
func rotateRR(root *AvlNode) *AvlNode {
	/* 这里的root节点类似于上图中的节点5的存在 */
	// 获得到顶层节点
	top := root.right
	// 先截断当前结点的左孩子
	root.right = top.left
	// 将当前结点作为新的top节点的右孩子
	top.left = root

	root.height = int(math.Max(float64(height(root.left)), float64(height(root.right)))) + 1
	top.height = int(math.Max(float64(height(top.left)), float64(height(top.right)))) + 1

	return top
}

/**
左右旋转，新节点增加在左子树的右结点导致失衡,如下图新增节点9导致节点5失衡：
       5                                  5                              3
     /   \                              /   \                           / \
    3     6    先对1进行右右旋转          3     6    再对5进行左左旋转      2   5
   / \          ------------>          /\        -------------->      /   /  \
  1   4        转换成左左的case         2  4                           1   4   6
   \                                 /
    2                               1
*/
func rotateLR(root *AvlNode) *AvlNode {
	/* 这里的root节点类似于上图中的节点5的存在 */
	root.left = rotateRR(root.left)
	return rotateLL(root)
}

/**
右左旋转，新节点增加在右子树的左结点导致失衡,如下图新增节点9导致节点5失衡：
       5                                  5                                7
     /   \                              /   \                             / \
    3     7    先对9进行左左旋转          3    7       再对5进行右右旋转      5   8
         / \     ------------>              /\        -------------->   / \   \
        6   9    转换成右右的case            6  8                        3  6    9
           /                                   \
          8                                    9

*/
func rotateRL(root *AvlNode) *AvlNode {
	/* 这里的root节点类似于上图中的节点5的存在 */
	root.right = rotateLL(root.right)
	return rotateRR(root)
}

func AddNode(root *AvlNode, k int, v string) *AvlNode {
	if root == nil {
		root = &AvlNode{
			key:    k,
			value:  v,
			height: 0,
			left:   nil,
			right:  nil,
		}
		return root
	}

	if k < root.key {
		//recursion and get slot for inserting
		root.left = AddNode(root.left, k, v)
		if height(root.left)-height(root.right) == 2 {
			if k < root.left.key {
				// 左左旋转
				root = rotateLL(root)
			} else {
				// 左右旋转
				root = rotateLR(root)
			}
		}
	} else if k > root.key {
		root.right = AddNode(root.right, k, v)
		if height(root.right)-height(root.left) == 2 {
			if k > root.key {
				// 右右旋转
				root = rotateRR(root)
			} else {
				// 右左旋转
				root = rotateRL(root)
			}
		}
	} else {
		// update
		root.value = v
	}

	root.height = int(math.Max(float64(height(root.left)), float64(height(root.right)))) + 1
	return root
}

func DeleteNode(root *AvlNode, k int) *AvlNode {
	if root == nil {
		return nil
	}
	//
	if k < root.key {
		//Recursively delete the left child node
		root.left = DeleteNode(root.left, k)
		if height(root.left)-height(root.right) == 2 {
			if k < root.left.key {
				// 左左旋转
				root = rotateLL(root)
			} else {
				// 左右旋转
				root = rotateLR(root)
			}
		}
	} else if k > root.key {
		root.right = DeleteNode(root.right, k)
		if height(root.right)-height(root.left) == 2 {
			if k > root.key {
				// 右右旋转
				root = rotateRR(root)
			} else {
				// 右左旋转
				root = rotateRL(root)
			}
		}
	} else {
		// equals
		if root.left != nil && root.right != nil {
			root.key = FindMin(root.right).key
			DeleteNode(root.right, root.key)
		} else {
			if root.left == nil {
				root = root.right
			} else {
				root = root.left
			}
			if root == nil {
				return nil
			}
		}
	}

	// Statistical height
	root.height = int(math.Max(float64(height(root.left)), float64(height(root.right)))) + 1
	return root
}

func FindMin(root *AvlNode) *AvlNode {
	if root == nil {
		return nil
	} else if root.left == nil {
		return root
	}
	return FindMin(root.left)
}
