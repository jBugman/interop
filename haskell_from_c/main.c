#include "HsFFI.h"
#include <stdio.h>

extern HsPtr helloFromHaskell(void);

int main(int argc, char *argv[])
{
    int i;
    hs_init(&argc, &argv);

    char* result = helloFromHaskell();
    printf("%s\n", result);

    hs_exit();
    return 0;
}
