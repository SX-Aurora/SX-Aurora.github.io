---
layout: post
title: NEC compilers need no license any more
author: Erich Focht
excerpt: NEC's proprietary ncc, nc++, nfort compilers for the SX-Aurora Tsubasa can now be used without the need for a license.
category: posts
comments: true
tags: [VE, vector engine, compiler, vectorization, vector, sxaurora]
---

*Erich Focht*

NEC has recently changed its policy for providing the proprietary NEC
compiler collection (ncc, nc++, nfort). The need for a compiler
license has been eliminated. Compiler support packages are still
available and can be purchased through your local NEC sales
representative.

These compilers are auto-vectorizing and auto-parallelizing and rely
on 30 years of vector compilers experience. They offer many methods
for controling the optimizations done by the compiler, down to
programming with vector registers (but without intrinsics). They
provide very detailed information on the performed optimizations and
loop transformations and reasons for (eg.) skipped optimizations,
helping the users to tune their codes.

The documentation of the compilers is availabe at NEC's documentation site:

* [C/C++ compiler user guide](https://sxauroratsubasa.sakura.ne.jp/documents/sdk/pdfs/g2af01e-C++UsersGuide-032.pdf)
* [Fortran compiler user guide](https://sxauroratsubasa.sakura.ne.jp/documents/sdk/pdfs/g2af02e-FortranUsersGuide-032.pdf)

The RPM packages for the compilers are available in the following yum repositories:

* for RHEL7 and compatible distributions: https://sxauroratsubasa.sakura.ne.jp/repos/community/sdk/sdk_el7/
* for RHEL8 and compatible distributions: https://sxauroratsubasa.sakura.ne.jp/repos/community/sdk/sdk_el8/

Package dependencies are available in the other NEC SX-Aurora VE
related repositories located at
https://sxauroratsubasa.sakura.ne.jp/repos/ .

PS: NEC's proprietary MPI can be also downloaded freely now. The
packages are located at
https://sxauroratsubasa.sakura.ne.jp/repos/community/mpi/ .


---

[Wikipedia](https://en.wikipedia.org/wiki/SX-Aurora_TSUBASA)
