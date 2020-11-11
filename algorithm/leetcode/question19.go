package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func removeNthFromEnd(head *ListNode, n int) *ListNode {
	// n is less than len of list
	p0 := head
	p1 := head
	p2 := head
	for n > 0 {
		p2 = p2.Next
		n--
	}

	first := true
	for p2 != nil {
		if !first {
			p0 = p0.Next
		}
		first = false
		p1 = p1.Next
		p2 = p2.Next
	}
	//删除p1节点
	if p1 == head {
		return head.Next
	}
	p0.Next = p1.Next
	return head
}
