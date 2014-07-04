# -*- coding: utf-8 -*-
from distutils.core import setup, Extension
from Cython.Distutils import build_ext

setup(
    ext_modules=[
        Extension("hello_c", ["hello_c.c"]),
        Extension("hello_cython", ["hello_cython.pyx"]),
    ],
    cmdclass={'build_ext': build_ext}
)
