package main

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func preorderTraversal(root *TreeNode) []int {
	r := make([]int, 0)
	helper(root, &r)
	return r
}

func helper(root *TreeNode, r *[]int) {
	if root == nil {
		return
	}
	*r = append(*r, root.Val)
	helper(root.Left, r)
	helper(root.Right, r)
}
