all: hello_c.so hello_cython.so hello_rust.so
	@echo build all

# c_distutils
hello_c.so: build/
	python setup.py build_ext --inplace

# cython_manual:
# 	cython hello_cython.pyx
# 	gcc $(shell pkg-config --cflags --libs python2) -fPIC -shared hello_cython.c -o hello_cython.so

# cython_distutils
hello_cython.so hello_rust.so: build/libhello_rust.a
	python setup_cython.py build_ext --inplace

# rust_static
build/libhello_rust.a: build/
	rustc hello_rust.rs -o build/libhello_rust.a
	gcc -L./build -lhello_rust hello.c -o build/hello

build:
	mkdir build

clean:
	rm -f *.so
	rm -rf build/
	rm hello_cython.c hello_rust.c
