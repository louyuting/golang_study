package main

import (
	"log"
	"sync"
)

func main() {
	// 建立对象
	var pipe = &sync.Pool{New: func() interface{} { return "Hello, BeiJing" }}

	// 准备放入的字符串
	val := "Hello,World!"
	log.Println("first:", &val)

	// 放入
	pipe.Put(val)

	// 取出
	first := pipe.Get().(string)
	log.Println("second:", &first)

	// 再取就没有了,会自动调用NEW
	second := pipe.Get().(string)
	log.Println("third:", &second)

	var pipe2 = &sync.Pool{New: func() interface{} { return 1111 }}
	pipe2.Put(11)
	tmp := pipe2.Get().(int)
	log.Println("four:", &tmp)
}
