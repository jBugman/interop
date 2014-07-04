#include <stdio.h>

extern char* hello_rust();

int main() {
    printf("%s\n", hello_rust());
	return 0;
}
