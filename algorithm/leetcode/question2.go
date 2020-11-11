package main

type ListNode struct {
	Val  int
	Next *ListNode
}

func main() {

}

func addTwoNumbers(l1 *ListNode, l2 *ListNode) *ListNode {
	r := &ListNode{
		Val:  -1,
		Next: nil,
	}
	p := r
	p1 := l1
	p2 := l2

	for p1 != nil && p2 != nil {
		p.Next = &ListNode{
			Val:  p1.Val + p2.Val,
			Next: nil,
		}
		p = p.Next
		p1 = p1.Next
		p2 = p2.Next
	}
	for p1 != nil {
		p.Next = &ListNode{
			Val:  p1.Val,
			Next: nil,
		}
		p = p.Next
		p1 = p1.Next
	}
	for p2 != nil {
		p.Next = &ListNode{
			Val:  p2.Val,
			Next: nil,
		}
		p = p.Next
		p2 = p2.Next
	}

	p = r.Next
	up := false
	var last *ListNode
	for p != nil {
		if up {
			p.Val += 1
		}
		if p.Val >= 10 {
			up = true
			p.Val = p.Val % 10
		} else {
			up = false
		}
		if p.Next == nil {
			last = p
		}
		p = p.Next
	}
	if up && last != nil {
		last.Next = &ListNode{
			Val:  1,
			Next: nil,
		}
		last.Val = last.Val % 10
	}

	return r.Next
}
