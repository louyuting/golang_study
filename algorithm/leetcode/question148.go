package main


func quickSort(head *ListNode, tail *ListNode) {
	if head == tail {
		return
	}
	node :=partion(head, tail)
	quickSort(head, node)
	quickSort(node.Next, tail)
}

func partion(head, tail *ListNode)  *ListNode{
	mid := head.Val
	p1, p2 := head, head.Next
	for p2 != tail {
		if p2.Val < mid {
			p1 = p1.Next
			p1.Val,p2.Val = p2.Val, p1.Val
		}
		p2 = p2.Next
	}

	if p1 != head {
		head.Val, p1.Val = p1.Val, head.Val
	}
	return p1
}