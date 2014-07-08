# -*- coding: utf-8 -*-
from distutils.core import setup, Extension

setup(
    ext_modules=[
        Extension('hello_c', ['hello_c.c']),
    ]
)
