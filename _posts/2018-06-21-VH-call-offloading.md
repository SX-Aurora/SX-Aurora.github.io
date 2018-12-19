---
layout: post
title: VHcall offloading from native VE program to VH
excerpt: Using the vector engine host as an accelerator for unportable or poorly vectorizable scalar code.
category: posts
comments: true
tags: [api, vector, sxaurora, offloading]
---

*Erich Focht*

## Overview

Programs running in native VE mode on the SX-Aurora TSUBASA Vector
Engine, i.e. programs written in Fortran, C, C++ or Assembler and
built for the VE, can run pieces of code on the vector host (VH),
which is usually a x86_64 machine.

VHcall provides a mechanism for offloading function calls from VE to
VH. The call is done synchronously, inside a VE system call which is
specific to SX-Aurora VEOS. The system call is executed in the context
of the pseudo process responsible for running the VE program that
invokes the syscall.

In order to compile and build offloaded kernels the VH (or compile
host) must have the RPMs *veos-headers* and *veos-devel* installed.

Functions called on VH side must be compiled and linked in the form of
a shared object, a .so library. See the [VHcall
example](https://github.com/efocht/vhcall-example) for compile and
link options as well as simple use cases. The examples include a
Fortran 2003 interface and Fortran 2003 function offloaded to the VH.

VHcall can be used for code that is not vectorized or not even ported
to the VE, for example specialized IO libraries or communication with
a daemon running on the VH.


## Usage and API

### 1. Load a dynamic library on VH

Example:
```
vhcall_handle h = vhcall_install(const char *libname);
```

Arguments:

* `const char *name`: The file name of a dynamic library. VH call searches the library as *dlopen()* on VH does.

Result:

* `vhcall_handle h`: The handle of the dynamic library. If the VH failed to load the specified library, this function returns -1.


### 2. Find a function in a loaded VHcall library

Example:
```
int64_t symid = vhcall_find(vhcall_handle h, const char *symbolname);
```

Arguments:

* `vhcall_handle h`: The handle of the dynamic library returned by *vhcall_install()*.
* `const char *symbolname`: The name of a function in the dynamic library.

Return value:

* `int64_t symid`: The identifier of the function on VH. -1 upon failure.


Error:

*EINVAL* : The symbol was not found in the library. On VE the errno variable is set.


### 3. Invoke a function in a loaded VHcall library

Example:
```
long res = vhcall_invoke(uint64_t symid, const void *inptr, size_t in_len,
                         void *outptr, size_t out_len);
```


Arguments:

* `uint64_t symid`: Symbol ID from vhcall_find().
* `const void *inptr`: Pointer to the argument of the function. If non-zero,
the data it points to is copied into the VH.
* `size_t in_len`: length of the inptr data.
* `void *outptr`: Pointer to the buffer where the called function can store
its result data. If the argument is not NULL and the out_len argument is
non-zero, VH allocates a buffer of this size and copies its content over
to the VE after the function invokation.
* `size_t out_len`: length of buffer outptr points to.


Return value:

* `long res`: Return value of the invoked vhcall function.

Error:

If the invoked function returns a value between -4095 and -1, the VE libc
treats the value as the errno, sets the errno variable and returns -1.



### 4. Unload the VH library

Example:
```
long res = vhcall_uninstall(vhcall_handle h);
```

Return value:

0 if unload has succeeded, non-zero if it failed.



---

[Wikipedia](https://en.wikipedia.org/wiki/SX-Aurora_TSUBASA)
