hello_c.a: hello.c
	clang -c -o hello_c.o hello.c
	ar rcs hello_c.a hello_c.o

hs: hello_c.a
	stack ghc -- hello_c.a main.hs -o app

clean:
	rm -f *.h *.a *.o *.hi app
