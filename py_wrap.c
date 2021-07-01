// /usr/include/下にPython.h があるので探してください。
//#include <Python.h>
#include "/usr/local/include/python3.8/Python.h"

// c_file.c で定義した関数を使用します。
extern int func1(int,int);

// Pythonのオブジェクトを作成しています。おまじないです。
PyObject* f_func1(PyObject* self, PyObject* args)
{
// ローカル変数定義
    int x; // func1のxの型
    int y; // func1のyの型
    int result; // funct1の戻り値の型

// "ii" はx と yの型をpythonの型に変換したものです。x, yがint型なので ii、他の型は下の表を参照。
    if (!PyArg_ParseTuple(args, "ii", &x, &y))
        return NULL;

// c_file.c の関数を実行
    result = func1(x, y);

// 結果を返す。ここで、"i"はresult の型です。下の表を参照。
    return Py_BuildValue("i", result);
}

// 上記とほぼ一緒なので割愛します。
extern void func2(char*,char*);

PyObject* f_func2(PyObject* self, PyObject* args)
{
    char* adrs;
    char* name;

    if (!PyArg_ParseTuple(args, "ss", &adrs, &name))
        return NULL;
    func2(adrs,name);
    return Py_BuildValue("");
}


// おまじないです。{Pythonで使う名前, このファイルで定義されている名前,METH_VARARGS}
static PyMethodDef methods[] = {
        {"func1", f_func1, METH_VARARGS},
        {"func2", f_func2, METH_VARARGS},
        {NULL}
};

// おまじない。
static struct PyModuleDef test1 =
        {
                PyModuleDef_HEAD_INIT,
                "test1",  // Python でimport する名前。import module_name になる。
                "",
                -1,
                methods
        };

// おまじない。
PyMODINIT_FUNC PyInit_test1(void)  // PyInit_<Python でimportする名前。>
{
    return PyModule_Create(&test1);  // Python でimportする名前。
}
