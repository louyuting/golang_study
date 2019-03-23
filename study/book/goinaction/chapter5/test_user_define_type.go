package main

import "fmt"

/**
结构类型的声明
*/
type user struct {
	name       string
	email      string
	ext        int
	privileged bool
}

type admin struct {
	person user
	level  string
}

type Duration int64

func main() {
	lisa := user{
		name:       "Lisa",
		email:      "lisa@email.com",
		ext:        123,
		privileged: true,
	}
	lisa2 := user{"Lisa2", "lisa@email.com2", 123, true}

	fred := admin{
		person: user{
			name:       "Lisa",
			email:      "lisa@email.com",
			ext:        123,
			privileged: true,
		},
		level: "super",
	}

	fmt.Println(lisa)
	fmt.Println(lisa2)
	fmt.Println(fred)

	//var dur Duration
	//dur = int64(1111)
}
