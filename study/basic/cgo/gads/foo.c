#include <stdio.h>
#include <stdlib.h>
#include "foo.h"

#define LENGTH 16
char* foo(char *input) {
    char* m = malloc(LENGTH*sizeof(char));
    sprintf(m, "%s", input);
    return m;
}