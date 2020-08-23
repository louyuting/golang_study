#include "buffer.h"

int main() {
    auto pBuf = new MyBuffer(1024);
    auto data = pBuf->Data();
    auto size = pBuf->Size();
    delete pBuf;
}