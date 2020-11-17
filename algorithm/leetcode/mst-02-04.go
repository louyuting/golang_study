package main

//输入: head = 3->5->8->5->10->2->1, x = 5
//输出: 3->1->2->10->5->5->8

func partition(head *ListNode, x int) *ListNode {
	if head == nil || head.Next == nil{
		return head
	}
	h := &ListNode{
		Val:  0,
		Next: head,
	}
	p := head
	pn := head.Next
	for pn!=nil {
		if pn.Val < x {
			//把pn移动到h后面
			tmp := pn
			pn = pn.Next
			p.Next = pn
			tmp.Next = h.Next
			h.Next = tmp
		} else {
			p = pn
			pn = pn.Next
		}
	}
	return h.Next
}