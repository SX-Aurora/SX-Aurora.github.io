---
layout: post
title: LLVM-VE-RV (Update)
author: Erich Focht
excerpt: "An easy way to build the LLVM-VE-RV stack and use it for testing the compiler."
image: /img/VE_Dragon.png
category: posts
comments: true
tags: [llvm, compiler, vector sxaurora, projects]
---

*Erich Focht*

As mentioned in a notice at the beginning of the post [Building and
Testing
LLVM-VE-RV](https://sx-aurora.github.io/posts/Testing-LLVM-VE-RV/),
LLVM has changed the license to Apache 2 while the LLVM-VE
repositories at
[https://github.com/SXAuroraTSUBASAResearch/](https://github.com/SXAuroraTSUBASAResearch/)
were released under the former LLVM license: BSD-2. The change of the
license is currently being discussed, until this is solved, the
repositories were removed from github.

Instead, those interested in the LLVM-VE development can check out the
repositories at
[https://github.com/sx-aurora-dev](https://github.com/sx-aurora-dev/)
where the VE development is reflected on the
pre-license-change state of LLVM. These repositories (branches
*develop2*) are still under legacy LLVM license.

This post describes an easy way of building the LLVM backend for the
SX-Aurora TSUBASA Vector Engine (VE) augmented with the
RegionVectorizer (RV) written by Simon Moll at
[CDL](http://compilers.cs.uni-saarland.de/).


## What's New?

For those who read the previous post on this subject ([Building and
Testing
LLVM-VE-RV](https://sx-aurora.github.io/posts/Testing-LLVM-VE-RV/)),
there was quite some progress on the LLVM backend, libraries as well
as the RegionVectorizer.

The backend has learned about quite a few vector instructions and we
have now a *libcxx* for the first steps into C++ support. There is
also a *libomp* such that basic OpenMP support is possible. Building
executables is now possible without the proprietary *ncc*, all that is
needed is the VE binutils package, its assembler and linker. *All this
is experimental!*

The RegionVectorizer RV has implemented FP32 vectorization (not
packed) and research was done on generalizing the concept of
vectorization towards tensors and multi-dimensional vectorization. The
later concepts were presented at the [WPMVP 2019
workshop](https://ppopp19.sigplan.org/home/WPMVP-2019#program). Furthermore,
a presentation at the [29th Workshop on Sustained Simulation
Performance](https://www.sc.cc.tohoku.ac.jp/wssp29/en/program.html)
showed an example of how RV's whole function vectorizer can be used to
vectorize some SIMT style code like tree traversals.




## Clone, Build and Install


My colleagues K. Marukawa and K. Ishizaka have put together a set of
scripts driven by a Makefile which simplify the cloning of all needed
repositories, building and installing llvm, clang and the related
libraries. The procedure allows sufficient control over the build to
really be a great help while developing. I modified these scripts a
bit in order to integrate the LLVM backend build with the
RegionVectorizer.

Following steps lead to an installation of LLVM-VE-RV:

### 0. Prerequisites

A machine with installed SX-Aurora TSUBASA vector engines. Makes sense
to do all this on it. It should have the SDK installed, well, at least
the binutils-ve package.

Lots of disk space! At least 12GB! Preferably on SSD. The LLVM and
clang repositories are huge and the build requires a lot of disk
space. A shallow clone (see step 2, below) will save some disk space.

Connection to the internet and/or appropriate proxy setup. For *git*
and *wget* you'd need to set up the *http_proxy* and *ftp_proxy*
environment variables.

A rather new version of gcc is needed for build, preferable gcc
version 7 or above. On CentOS 7 or RHEL 7 use the Software Collections
repositories (SCL). On CentOS 7, enable the *extras* repository,
eg. in */etc/yum.repos.d/CentOS-Base.repo*. Then install
```sh
yum install centos-release-scl
```

Now install the *scl-utils* package (this step should be sufficient on RHEL7):
```sh
yum install scl-utils
```

Finally install the new *gcc* and *gcc-c++* packages:
```sh
yum install devtoolset-8 devtoolset-8-gcc devtoolset-8-gcc-c++
```

### 1. Clone the build environment

Clone the branch *develop2_rv* of the *llvm-dev* repository:
```bash
git clone https://github.com/sx-aurora-dev/llvm-dev.git -b develop2_rv
```
The default branch of the repository (*develop2*) will build only
*llvm* and *clang* but not integrate *RV*.

All subsequent actions are supposed to be done from within the
checkout of *llvm-dev*. Make sure there is enough space for the
repositories of llvm and clang!
```bash
cd llvm-dev
```


### 2. Clone the repositories

The fastest and most disk space saving way is to do a shallow clone of the repositories:
```bash
make shallow
```

The repositories are cloned with depth=1 and can be expanded later, if needed, by doing
```bash
make deep
```
You'll know when you must do this: when you really do development and
commit things and push merge requests.


### 3. Build and install

The following pasteable block does three things:

* activate the newer gcc from devtoolset-8
* create the installation directory, here we chose $HOME/LLVM-VE
* build and install llvm, clang, the libraries

If the installation directory is not specified by `DEST=...` then the
binaries will all be installed into the subdirectory `install`.

```bash
scl enable devtoolset-8 bash
mkdir $HOME/LLVM-VE
make DEST=$HOME/LLVM-VE
```

If you want to rebuild from scratch and install in another place:

* remove all `build*` directories
* call `make DEST=...` again.


## Usage

Set the paths appropriately by sourcing the fllowing shell script:
```bash
source $HOME/LLVM-VE/bin/set_llvm_env.sh
```
Modify the path according to the location where you installed
LLVM.

Now call
```bash
rvclang --target=ve-linux -O2 ...
```
or
```bash
rvclang++ --target=ve-linux -O2 ...
```
or any of the usual LLVM tools. RV will start vectorizing at optimization level `-O1`.

You will see messages like
```bash
llvm: LLVM LoopVectorizer disabled!
```
They mean that the basic loop vectorizer insode LLVM was disabled.
This is done on purpose as the LoopVectorizer is not able to vectorize
code for the SX-Aurora VE, therefore it is disabled by options hidden
inside **rvclang** such that it cannot "take away" loops for
vectorization from RV.

RV reports rather verbosely its actions when the environment variable
`$RV_REPORT` is set to a value which is not 0. The script
*set_llvm_env.sh* is setting this variable, such that one can notice
the effect of RV.


### Limitations

At the current stage LLVM-CLANG-VE-RV is experimental, has bugs and
does not have full functionality. Without RV LLVM-VE can only produce
vector code with the help of the intrinsics. With RV (*rvclang*,
*rvclang++*) uses a "guided vectorization" approach. Loops/regions
preceeded by the directive
```c
#pragma clang loop vectorize(assume_safety) vectorize_width(256)
```
or
```c
#pragma omp simd safelen(256)
```
will be forcibly vectorized. There is no dependency analysis which
would currently enable automatic vectorization.

Right now RV vectorizes only double precision and 64 bit integers, as
well as 32 bit floats (non-packed) and integers on VE. Vector masks
are not yet supported properly with RV, only by explicit use with
intrinsics.

The list of VE intrinsics is now [here](/posts/ve-llvm-intrinsics).

LLVM currently produces assembler code and uses the *nas* assembler
and the *nld* linker from the *binutils-ve* package for creating
object files and executables.


## Conclusion

LLVM offers an excellent platform for compiler research and the LLVM
community is spending a lot of effort on vectorization. The LLVM-VE-RV
combination is not yet for production, but can already
show the potential of LLVM and ways how it can supplement NEC's
*ncc*. If you work with intrinsics, give it a try! If you are more
daring, go with guided vectorization with RV! If you have interesting
use cases using LLVM-VE, we'd be very pleased to hear about them!


---

[SX-Aurora WEB Forums](https://www.hpc.nec/forums/)
[SX-Aurora Documentation](https://www.hpc.nec/documents/)
[Wikipedia](https://en.wikipedia.org/wiki/SX-Aurora_TSUBASA)
