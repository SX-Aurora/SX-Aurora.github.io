---
layout: post
title: NEC vector engine compilers support intrinsics!
author: Erich Focht
excerpt: NEC's proprietary ncc, nc++, nfort compilers for the SX-Aurora Tsubasa support vector intrinsics. In Japanese.
category: posts
comments: true
tags: [VE, vector engine, compiler, vectorization, vector, intrinsics, builtins, sxaurora]
---

*Erich Focht*

## Normal ncc, nc++, nfort behavior

The NEC Vector Engine (VE) compilers offer a large number of ways to
optimize loops, vectorize and parallelize them. The actions of the
compilers are being controlled by using compiler options (with a
global scope) or specific compiler directives (`#pragma _NEC` in
C/C++), as described in the following two compiler manuals:

* [C/C++ compiler user guide](https://sxauroratsubasa.sakura.ne.jp/documents/sdk/pdfs/g2af01e-C++UsersGuide-033.pdf)
* [Fortran compiler user guide](https://sxauroratsubasa.sakura.ne.jp/documents/sdk/pdfs/g2af02e-FortranUsersGuide-033.pdf)

While the control of loop transformations and vectorization through
directives is very fine-grained, the lowest level of control over the
generated code was to use `VREG` directives. They can assign local
arrays to vector registers:
```
double xv[256];
#pragma _NEC vreg(xv)
```
Still, the compiler had to be left to do its thing and sometimes chose
other vector instructions than intended by the programmer.


## The LLVM-VE compiler

Sometimes programmers have a very clear idea of what they want the
vector processor to do. ncc, nc++, nfort could not be forced to do
that, so the remaining choices were limited:

* use assembler,
* use the LLVM-VE compiler with [intrinsics](https://sx-aurora.github.io/posts/ve-llvm-intrinsics/). These are supported also in the upstream LLVM project, but the safer bet is probably still LLVM-VE.

In assembler code get quickly ugly and hard to change or
extend. LLVM-VE intrinsics on the other hand allow C-alike programming
with intrinsics able to map every instruction of the vector engine
with every possible flag and option. A very detailed list is in the
generated page https://sx-aurora-dev.github.io/velintrin.html with
links into the assembler manual and ISA guide of the VE.

Below is an example of a BLAS `daxpy` implementation with LLVM-VE intrinsics:
```
#include <velintrin.h>
#define VLEN (256)
void daxpy(int n, double alpha, double *x, int incx,
           double *y, int incy)
{

  const double *xp = (const double *)x;
  double *yp = y;
  uint64_t incx_b = sizeof(double) * incx;
  uint64_t incy_b = sizeof(double) * incy;

  for (size_t i = 0; i < n; i += VLEN) {
    const int vl = (n-i < VLEN ? n-i : VLEN);
    __vr xv = _vel_vld_vssl(incx_b, xp+i, vl);
    __vr yv = _vel_vld_vssl(incy_b, yp+i, vl);
    __vr yr = _vel_vfmadd_vvsvl(yv, alpha, xv, vl);
    _vel_vst_vssl(yr, incy_b, yp+i, vl);
  }
}
```

Vector registers are declared with `__vr` and intrinsics have the form
`_vel_<mnemonic>_<arg_options>`.


## NEC VE compiler intrinsics

The proprietary NEC VE (C) compilers were supporting intrinsics since
quite a while but that wasn't made public. The support was limited and
usually code generation broke when using optimization levels larger
tha `-O1`. So basically, they were not safely usable.

In the last version of the C/C++ Compiler Guide a new section has appeared, that
describes the [Vector Type Extension](https://sxauroratsubasa.sakura.ne.jp/documents/sdk/pdfs/g2af01e-C++UsersGuide-033.pdf#%5B%7B%22num%22%3A259%2C%22gen%22%3A0%7D%2C%7B%22name%22%3A%22XYZ%22%7D%2C68%2C655%2C0%5D) while a much more detailed Japaneze documentation page showed up in the SX-Aurora SDK documentation that had an interesting title: [NEC C/C++ Compiler:
Vector Type
Extension](https://sxauroratsubasa.sakura.ne.jp/documents/sdk/SDK_VectorTypeExtention/index.html)

For those who are not able to read Japaneze, like me, google (or other) translate is an invaluable tool. It revealed that the NEC VE C/C++ compilers support builtins and the document version 1.0.0 means, that this support seems pretty stable. [Here is the english translation](https://sxauroratsubasa-sakura-ne-jp.translate.goog/documents/sdk/SDK_VectorTypeExtention/index.html?_x_tr_sl=ja&_x_tr_tl=en&_x_tr_hl=en&_x_tr_pto=wapp).

With these new intrinsics the BLAS `daxpy` example from above looks pretty similar, but with significant differences:
```
#define VLEN (256)
typedef double __vr_dp256 __attribute__((ext_vector_type(256)));

void daxpy(int n, double alpha, double *x, int incx,
           double *y, int incy)
{

  const double *xp = (const double *)x;
  double *yp = y;
  uint64_t incx_b = sizeof(double) * incx;
  uint64_t incy_b = sizeof(double) * incy;

  for (size_t i = 0; i < n; i += VLEN) {
    const int vl = (n-i < VLEN ? n-i : VLEN);

    __vr_dp256 xv, yv, yr;
    __builtin_ve_vld(xv, xp+i, incx_b, vl);
    __builtin_ve_vld(yv, yp+i, incy_b, vl);
    __builtin_ve_vfmadd(yr, xv, alpha, yv, vl);
    __builtin_ve_vst(yr, yp+i, incy_b, vl);
  }
}
```

The vector register type must be defined with `typedef` and is
typed. In this case the compiler knows that we deal with a double!

The `__builtin_ve_*` intrinsics offer less control about the generated
instructions. No flags (like `.nc`) can be specified and it looks like
we can't specify packed instructions explicitly, these are probably
generated by the compiler depending on the context and arguments (I
didn't check this assumption).

The good news is: intrinsics are supported now in ncc and nc++ and
work even with higher optimization levels than `-O1`. Still, they
don't seem to be aimed at a wide public... So you're on your own if
you play with them.

<iframe src="https://sxauroratsubasa-sakura-ne-jp.translate.goog/documents/sdk/SDK_VectorTypeExtention/index.html?_x_tr_sl=ja&_x_tr_tl=en&_x_tr_hl=en&_x_tr_pto=wapp" style="width:1400px; height: 900px;"></iframe>


---

[LLVM-VE project](https://github.com/sx-aurora-dev/llvm-project)

[Wikipedia](https://en.wikipedia.org/wiki/SX-Aurora_TSUBASA)
