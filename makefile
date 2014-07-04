all:
	@echo Targets:
	@echo \* c_distutils
	@echo \* cython_manual
	@echo \* cython_distutils

c_distutils:
	python setup.py build_ext --inplace

cython_manual:
	cython hello_cython.pyx
	gcc $(shell pkg-config --cflags --libs python2) -fPIC -shared hello_cython.c -o hello_cython.so

cython_distutils:
	python setup_cython.py build_ext --inplace
