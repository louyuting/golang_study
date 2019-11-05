package main

type User struct {
	ID     int64
	Name   string
	Avatar string
}

func GetUserInfo() *User {
	return &User{
		ID:     666666,
		Name:   "sim lou",
		Avatar: "https://www.baidu.com/avatar/666666",
	}
}

func main() {
	u := GetUserInfo()
	println(u.Name)
}
