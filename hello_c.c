#include <Python.h>

static char module_docstring[] = "This module provides a very useful 'hello world' function.";
static char hello_c_docstring[] = "THE 'hello world' function.";

static PyObject *hello_c() {
	PyObject *result = PyString_FromString("Hello World!");
	return result;
}

static PyMethodDef module_methods[] = {
	{"hello_c", hello_c, METH_VARARGS, hello_c_docstring},
	{NULL, NULL, 0, NULL}
};

PyMODINIT_FUNC inithello_c(void) {
	PyObject *m = Py_InitModule3("hello_c", module_methods, module_docstring);
	if (m == NULL)
		return;
	// Module-level initialization here.
}
