package main

import (
    "bufio"
    "bytes"
    "encoding/json"
    "flag"
    "fmt"
    "io"
    "log"
    "os"
    "strings"
)

func init() {
    var logFile *os.File
    logFile, err := os.OpenFile("./out.log", os.O_RDWR|os.O_CREATE|os.O_APPEND, 0777)
    if err != nil {
        log.Fatal("open log file error, ", err)
    }
    log.SetFlags(0)
    log.SetOutput(logFile)
}

func main()  {
    path := flag.String("logpath", "/Users/ytlou/Desktop/golang/golang_study/study/basic/json/watch.log.json", "")
    flag.Parse()
    file, err := os.OpenFile(*path, os.O_RDONLY, os.ModePerm)
    defer file.Close()
    if err!=nil {
        panic(fmt.Sprintf("fail to open log file, err: %+v\n", err))
    }
    buf := bufio.NewReader(file)
    cnt :=0
    ret := make([]string, 0)
    for {
        cnt++
        lineBytes, _, err := buf.ReadLine()
        if err == io.EOF{
            break
        }
        if err != nil {
            panic(fmt.Sprintf("fail to read line:%d\n", cnt))
        }
        line := string(lineBytes)
        line = strings.TrimSpace(line)
        
        isBegin := strings.Contains(line, "Diagnostic Info watch:")
        if !isBegin {
            continue
        }
        
        //begin to handle watch begin
        builder := &strings.Builder{}
        for { // cut json array
            cnt++
            lineBytes, _, err = buf.ReadLine()
            if err != nil {
                panic(fmt.Sprintf("fail to read line:%d\n", cnt))
            }
            line = string(lineBytes)
            if line!="[" {
                continue
            }
            builder.Write(lineBytes)
            for {
                cnt++
                lineBytes, _, _ = buf.ReadLine()
                builder.Write(lineBytes)
                line = string(lineBytes)
                if line == "]" {
                    break
                }
            }
            var jsonIndent bytes.Buffer
            _ = json.Indent(&jsonIndent, []byte(builder.String()), "", "    ")
            ret = append(ret, jsonIndent.String())
            break
        }
        builder.Reset()
    }
    log.Println("ending")
    for idx, out := range ret {
        log.Printf("####%d####\n", idx)
        log.Println(out)
    }
}