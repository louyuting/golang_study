package main

import "container/list"

/**
 * Definition for a binary tree node.
 * type TreeNode struct {
 *     Val int
 *     Left *TreeNode
 *     Right *TreeNode
 * }
 */
func levelOrder(root *TreeNode) [][]int {
	result := make([][]int, 0)

	if root == nil {
		return nil
	}

	queue := list.New()
	queue.PushFront(root)

	for queue.Len() > 0 {
		//保存当前层的数据
		var curLevel []int
		count := queue.Len()

		for count > 0 {
			//取队列尾部
			elem := queue.Back()
			node := elem.Value.(*TreeNode)
			curLevel = append(curLevel, node.Val)
			if node.Left != nil {
				queue.PushFront(node.Left)
			}
			if node.Right != nil {
				queue.PushFront(node.Right)
			}
			queue.Remove(elem)
			count--
		}
		result = append(result, curLevel)
	}
	return result
}
