__BUGFIX = 'This fixes Cython empty init bug'

cdef extern char* _hello_rust "hello_rust" ()

def hello_rust():
    return _hello_rust()
