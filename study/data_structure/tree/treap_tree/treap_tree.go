package treap_tree

type TreapNode struct {
	key   int
	value string
	// 优先级，维护最小堆用的
	priority int
	left     *TreapNode
	right    *TreapNode
}
