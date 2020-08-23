package main

import (
	"github.com/shirou/gopsutil/cpu"
	"github.com/shirou/gopsutil/load"
)

func main() {
	cpu.Times(false)
	load.Avg()
}
