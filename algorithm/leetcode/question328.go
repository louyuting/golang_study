package main

/**
 * Definition for singly-linked list.
 * type ListNode struct {
 *     Val int
 *     Next *ListNode
 * }
 */
func oddEvenList(head *ListNode) *ListNode {
	if head == nil {
		return nil
	}
	if head.Next == nil || head.Next.Next==nil {
		return head
	}
	l1 := &ListNode{
		Val:  -1,
		Next: nil,
	}
	p1 := l1
	l2 := &ListNode{
		Val:  -1,
		Next: nil,
	}
	p2 := l2
	p := head
	i:=0
	for p!=nil {
		tmp :=p
		p = p.Next
		tmp.Next = nil
		if i%2 == 0 {
			p1.Next = tmp
			p1 = p1.Next
		} else {
			p2.Next = tmp
			p2 = p2.Next
		}
		i++
	}
	p1.Next = l2.Next

	return l1.Next
}