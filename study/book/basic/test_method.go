package basic

import (
	"fmt"
)

type user2 struct {
	name  string
	email string
}

//值接收者
func (u user2) notify() {
	fmt.Println("Sending User Email To %s<%s>",
		u.name, u.email)
}

// 指针接收者
func (u *user2) changeEmail(email string) {
	u.email = email
}

func main() {
	fmt.Println("--user2的值来调用使用值接受者的方法, 实际上是bill的一个副本调用notify方法---------------------------")
	bill := user2{"BIll", "bill@email.com"}
	bill.notify()

	fmt.Println("--user2类型的指针调用使用值接收者的方法，实际上Go编译器会将lisa自动做(*lisa)操作---------------------------")
	lisa := &user2{"BIll", "bill@email.com"}
	lisa.notify()

	fmt.Println("--user2类型的指针调用使用指针接收者的方法---------------------------")
	lisa.changeEmail("lisa@comcast.com")

	fmt.Println("--user2类型的值类型调用使用指针接收者的方法，实际上(&bill).changeEmail()---------------------------")
	bill.changeEmail("bill@comcast.com")
}
