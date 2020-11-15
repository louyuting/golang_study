package main

type node struct {
	child []string
	next *node
}

func main()  {
	letterCombinations("23")
}
func letterCombinations(digits string) []string {
	if len(digits)==0 {
		return nil
	}
	ds := []byte(digits)
	root := &node{
		child: nil,
	}
	p := root
	for _, d := range ds {
		switch d {
		case '2':
			p.next = &node{
				child: []string{"a","b","c"},
				next:  nil,
			}
		case '3':
			p.next = &node{
				child: []string{"d","e","f"},
				next:  nil,
			}
		case '4':
			p.next = &node{
				child: []string{"g","h","i"},
				next:  nil,
			}
		case '5':
			p.next = &node{
				child: []string{"j","k","l"},
				next:  nil,
			}
		case '6':
			p.next = &node{
				child: []string{"m","n","o"},
				next:  nil,
			}
		case '7':
			p.next = &node{
				child: []string{"p","q","r","s"},
				next:  nil,
			}
		case '8':
			p.next = &node{
				child: []string{"t","u","v"},
				next:  nil,
			}
		case '9':
			p.next = &node{
				child: []string{"w","x","y","z"},
				next:  nil,
			}
		default:
		}
		p = p.next
	}

	ret := make([]string, 0, 100)
	p = root.next

	for _, c := range p.child {
		ret = append(ret, c)
	}
	p = p.next

	for p!= nil {
		levelRet := make([]string,0, 100)
		for _, s := range ret {
			for _, c := range p.child {
				levelRet = append(levelRet, s + c)
			}
		}
		ret = levelRet
		p = p.next
	}
	return ret
}



