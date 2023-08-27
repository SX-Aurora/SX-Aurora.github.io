---
layout: post
title: Proprietary LLVM-VEC VE vectorizer for LLVM
author: Erich Focht
excerpt: NEC's proprietary ncc vectorizer is now usable from within a specially patched LLVM version.
category: posts
comments: true
tags: [VE, vector engine, LLVM, compiler, vectorization, vector, sxaurora]
---

*Erich Focht*

## Proprietary LLVM-IR Vectorizer

NEC has released its proprietary vectorizer as a black box binary
pluggable into LLVM. With some limitations, though, but following
almost all compiler options and compiler directoves described in the
[**ncc/nc++ compier manual**](https://sxauroratsubasa.sakura.ne.jp/documents/sdk/pdfs/g2af01e-C++UsersGuide-032.pdf).

The vectorizer is called **llvm-vec** and is supposed to be called on
LLVM-IR. The NEC compiler people have worked on this since quite a
while and have released several versions. The best one so far is
somewhat hidden in the official yum repositories for the SX-Aurora
Tsubasa:
https://sxauroratsubasa.sakura.ne.jp/repos/additional/llvm-vec/llvm-vec_el/2.3.0/

The announcement for llvm-vec was posted in the NEC forum
[here](https://sxauroratsubasa.sakura.ne.jp/Special:WikiForum/Update_of_the_NEC_LLVM-IR_Vectorizer_(version_2.3.0)).

**llvm-vec** needs a very heavily patched version of clang 12.0.0
which knows about all the new compiler options and directives. I
have prepared a llvm package based on llvm-12.0.0 with the necessary
patches
[here](https://sx-aurora.com/repos/llvm-el8/x86_64/llvm-vec-2.3.0-2.3.0-1.el8.x86_64.rpm).

The combination of the two packages llvm-vec-2.3.0 (the patched LLVM
12.0.0) and nec-llvm-vec-2.3 (the proprietary vectorizer module) leads
to a highly efficient freely usable vectorizing LLVM C/C++ compiler
which is pretty much equivalent to teh proprietary NEC Compiler
Collection ncc/nc++.

## Usage

Compiling C or C++ code with `clang` requires adding some options:
* `-target ve-linux` specifies that the compiled code is for the vectore engine VE,
* `-fnvec` enables the NEC VE IR vectorizer,
* `-fdiag-vector=2` outupts more details on the vectorization process.

Very many of the ncc compiler options have been added for supporting
'llvm-vec', which can vectorize LLVM-IR when called separately:
https://sxauroratsubasa.sakura.ne.jp/documents/llvm-vec/en/LLVMVecCommand.html

A large number of vectorization related pragmas are supported in exactly the same format
as used in the proprietary compiler `ncc/nc++` documented [here](https://sxauroratsubasa.sakura.ne.jp/documents/sdk/pdfs/g2af01e-C++UsersGuide-027.pdf).
The pragmas are written in the format`#pragma _NEC ...`. Supported pragmas are:
* [no]advance_gather
* [no]assume
* gather_reorder
* ivdep
* [no]list_vector
* [no]lstval
* move / move_unsafe / nomove
* nofma
* [no]packed_vector
* shortloop
* [no]sparse
* [no]vector
* [no]verror_check
* [no]vob
* [no]vovertake
* [no]vwork


## Docker image

In order to simplify using the **llvm-vec** compiler I created a
docker image including all necessary packages, the 12.0.0 LLVM as well
as the nec-llev-vec vectorizer module. The project is available at
https://github.com/efocht/llvm-vec-docker .

The docker image has been pushed to dockerhub under the name/tag
`efocht/llvm-vec:2.3.0`.


### Building

You can build the docker image on your own as follows:
```
git clone https://github.com/efocht/llvm-vec-docker.git
docker build --tag efocht/llvm-vec:2.3.0 .
```

I had to add `--network host` when building, but this should normally
not be necessary.

### Container Usage

Run the docker image for example by invoking the script included into
the `llvm-vec-docker` repository:

```
./run-docker-llvm-vec.sh
```

It will mount the current user's home directory into the image, as
well as the /etc/passwd and /etc/group files (in order to provide the
proper user IDs for the mounted home file system). This might lead to
UID mismatches inside the container, but we're not expecting the user
to run any system services inside the container.


---

[Wikipedia](https://en.wikipedia.org/wiki/SX-Aurora_TSUBASA)
