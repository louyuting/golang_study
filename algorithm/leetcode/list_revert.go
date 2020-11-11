package main

func revertList(l *ListNode) *ListNode {
	head := &ListNode{
		Val:  -1,
		Next: nil,
	}

	//头插法
	p := l
	pn := l.Next
	for pn != nil {
		//把p节点插入到head的后面
		p.Next = head.Next
		head.Next = p

		// 两个指针后移动
		p = pn
		pn = pn.Next
	}
	p.Next = head.Next
	head.Next = p

	revertHead := head.Next
	head.Next = nil
	return revertHead
}
