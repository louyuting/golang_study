package main

import (
    "bufio"
    "fmt"
    "github.com/tidwall/gjson"
    "io"
    "os"
    "strings"
)

func main()  {
    flie,_ := os.Open("/Users/ytlou/Desktop/golang/golang_study/study/basic/json/out.json")
    buf := bufio.NewReader(flie)
    lineBytes, _, _ := buf.ReadLine()
    fmt.Println(lineBytes)
    cnt := 1
    ret := make([]string, 0)
    
    finish := false
    for  {
        builder := strings.Builder{}
        for  {
            cnt++
            lineBytes, _, err := buf.ReadLine()
            if err == io.EOF{
                finish = true
                break
            }
            line := string(lineBytes)
            if strings.Contains(line,"####") {
                break
            }
            builder.Write(lineBytes)
        }
        ret = append(ret, builder.String())
        if finish {
            break
        }
    }
    
    count := make(map[string]int)
    for _, s := range ret {
        js := gjson.Parse(s)
        jss := js.Array()
        for _, watchlog := range jss {
            msgs1 := watchlog.Get("watch.msgs").Array()
            for _, v := range msgs1 {
                k := v.String()
                c, existed := count[k]
                if !existed {
                    count[k] = 1
                } else {
                    count[k] = c+1
                }
            }
            slots := watchlog.Get("watch.slots").Array()
            if len(slots) == 0 {
                continue
            }
            for _, slot := range slots {
                msgs2 := slot.Get("msgs").Array()
                for _, v := range msgs2 {
                    k := v.String()
                    c, existed := count[k]
                    if !existed {
                        count[k] = 1
                    } else {
                        count[k] = c+1
                    }
                }
                
                creatives := slot.Get("creatives").Array()
                for _, creative := range creatives {
                    msgs3 := creative.Get("msgs").Array()
                    for _, v := range msgs3 {
                        k := v.String()
                        c, existed := count[k]
                        if !existed {
                            count[k] = 1
                        } else {
                            count[k] = c+1
                        }
                    }
    
                    profiles := creative.Get("profiles").Array()
                    for _, profile := range profiles {
                        msgs4 := profile.Get("msgs").Array()
                        for _, v := range msgs4 {
                            k := v.String()
                            c, existed := count[k]
                            if !existed {
                                count[k] = 1
                            } else {
                                count[k] = c+1
                            }
                        }
                    }
                }
            }
        }
    }
    for key, value := range count {
        fmt.Printf("%s:%d \n", key, value)
    }
}