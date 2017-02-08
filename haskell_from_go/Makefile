libhello.so:
	stack ghc -- -dynamic -shared -optl -undefined -optl dynamic_lookup -fPIC lib/hello.hs lib/hello_wrapper.c -o libhello.so -lHSrts -lCffi

go: libhello.so
	go build -o app
	install_name_tool -change @rpath/libhello.so @executable_path/libhello.so app

clean:
	rm -f lib/*.h *.o lib/*.hi *.so app
