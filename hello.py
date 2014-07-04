#!/usr/bin/env python
# -*- coding: utf-8 -*-
from __future__ import print_function

from hello_c import hello_c


def hello_py():
    return u'Hello World!'


if __name__ == '__main__':
    print(hello_py())
    print(hello_c())
