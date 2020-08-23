package main

import (
	"fmt"
	"github.com/satori/go.uuid"
	"github.com/stretchr/testify/assert"
	"sync/atomic"
)

func main() {
	a := uint64(99999999999)
	sub := uint64(999)
	atomic.AddUint64(&a, ^(sub - 1))
	fmt.Println(atomic.LoadUint64(&a))

	fmt.Println(^(128 - 1))
	assert.InEpsilon()

	value := uuid.NewV4().String()

}
