#!/usr/bin/env python
# -*- coding: utf-8 -*-

from hello_c import hello_c
from hello_cython import hello_cython
from hello_rust import hello_rust


def hello_py():
    return u'Hello World!'


if __name__ == '__main__':
    print hello_py()
    print hello_c()
    print hello_cython()
    print hello_rust()
