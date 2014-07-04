#include <stdio.h>

extern char* hello_rust();

int main() {
    printf("%s", hello_rust());
	return 0;
}
