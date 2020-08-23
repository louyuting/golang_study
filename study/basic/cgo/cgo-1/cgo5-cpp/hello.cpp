#include <iostream>

//通过extern "C"语句指示该函数的链接符号遵循C语言的规则。
extern "C" {
    #include "hello.h"
}

void SayHello(const char* s) {
    std::cout << s;
}