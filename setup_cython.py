# -*- coding: utf-8 -*-
from distutils.core import setup, Extension
from Cython.Distutils import build_ext
from Cython.Build import cythonize

setup(
    ext_modules=cythonize([
        Extension(
            "hello_cython",
            ["hello_cython.pyx"],
            extra_compile_args=["-Wno-unused-function"]
        ),
        Extension(
            "hello_rust",
            ["hello_rust.pyx"],
            libraries=['hello_rust'],
            library_dirs=['./build'],
            extra_compile_args=["-Wno-unused-function"]
        ),
    ]),
    cmdclass={'build_ext': build_ext}
)
