package main


func findNumberIn2DArray(matrix [][]int, target int) bool {
	if len(matrix) == 0 || len(matrix[0]) == 0 {
		return false
	}

	rows := len(matrix)
	cols := len(matrix[0])

	row := 0
	col := cols-1
	for row < rows && col>=0 {
		num := matrix[row][col]
		if target == num {
			 return true
		}

		if num < target {
			row++
		} else{
			col--
		}
	}
	return false
}

