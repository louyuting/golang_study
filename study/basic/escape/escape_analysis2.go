package main

type User2 struct {
	ID     int64
	Name   string
	Avatar string
}

func PrintUserName() {
	user := &User2{
		ID:     666666,
		Name:   "sim lou",
		Avatar: "https://www.baidu.com/avatar/666666",
	}
	println(user.Name)
}

func main() {
	PrintUserName()
}
