package main

import (
	"database/sql"
	"fmt"

	_ "github.com/go-sql-driver/mysql"
)

func main() {

	db, err := sql.Open("mysql", "ads:ads@tcp(192.168.14.139:50022)/fwmrm_oltp?charset=utf8")
	checkErr(err)
	//插入数据
	//stmt, err := db.Prepare("INSERT userinfo SET username=?,department=?,created=?")
	//checkErr(err)
	//
	//res, err := stmt.Exec("astaxie", "研发部门", "2012-12-09")
	//checkErr(err)
	//
	//id, err := res.LastInsertId()
	//checkErr(err)
	//
	//fmt.Println(id)
	////更新数据
	//stmt, err = db.Prepare("update userinfo set username=? where uid=?")
	//checkErr(err)
	//
	//res, err = stmt.Exec("astaxieupdate", id)
	//checkErr(err)
	//
	//affect, err := res.RowsAffected()
	//checkErr(err)
	//
	//fmt.Println(affect)

	//查询数据
	rows, err := db.Query("SELECT * FROM lu_country")
	checkErr(err)

	for rows.Next() {
		var uid int
		var name string
		var description string
		var city_targeting_enabled int
		var postal_code_targeting_enabled int
		err = rows.Scan(&uid, &name, &description, &city_targeting_enabled, &postal_code_targeting_enabled)
		checkErr(err)
		fmt.Println(uid)
		fmt.Println(name)
		fmt.Println(description)
		fmt.Println(city_targeting_enabled)
		fmt.Println(postal_code_targeting_enabled)
	}

	////删除数据
	//stmt, err = db.Prepare("delete from userinfo where uid=?")
	//checkErr(err)
	//
	//res, err = stmt.Exec(id)
	//checkErr(err)
	//
	//affect, err = res.RowsAffected()
	//checkErr(err)
	//
	//fmt.Println(affect)

	db.Close()
}

func checkErr(err error) {
	if err != nil {
		panic(err)
	}
}
