package sync

import (
	"fmt"
	"math/rand"
	"sync"
	"time"
)

var wg2 sync.WaitGroup

func init() {
	rand.Seed(time.Now().UnixNano())
}

func main() {

	court := make(chan int)
	wg2.Add(2)

	go player("A", court)
	go player("B", court)

	// 发球
	court <- 1

	wg2.Wait()
	fmt.Println("finished")
}

func player(name string, court chan int) {

	defer wg2.Done()

	for {
		//等待球被击过来
		ball, ok := <-court
		if !ok {
			//如果通道被关闭，就赢了
			fmt.Printf("Player %s Won\n", name)
			return
		}

		// 选随机数，用这个数去判断是否丢球
		n := rand.Intn(100)
		if n > 98 {
			// 退出比赛的条件
			fmt.Printf("Player %s Missed\n", name)
			close(court)
			return
		}

		fmt.Printf("Player %s Hit %d, \n", name, ball)
		ball++

		//把球打回去
		court <- ball
	}
}
