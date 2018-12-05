---
layout: post
title: First steps with the SX-Aurora TSUBASA vector engine
excerpt: A little "getting started" user guide for new users of the NEC SX-Aurora TSUBASA vector engine.
category: posts
tags: [introduction, vector, sxaurora, tools, programming]
---

*Erich Focht, Holger Berger*

The intent of this post is to prepare fresh users for basic usage of
the vector engine (VE) and some follow-on posts on vectorization.

This little "getting started" guide uses some content from the **SX
Aurora TSUBASA Quickstart Guide** written by Holger Berger that is
usually handed out to fresh owners of a SX-Aurora.

## Introduction

The SX-Aurora TSUBASA Vector Engine is a PCIe card containing a
multicore vector processor and very high bandwidth HBM memory. An
overview on the hardware is avaiable in the post [VE Hardware
Overview](/posts/VE-HW-overview). 

Currently up to eight VE cards can be configured into a x86_64 vector
host (VH) system. Each of the VE cards is running a VEOS instance on
the VH, a daemon that provides operating system functionality for a
VE. VEs are used without a kernel, system calls from native VE
programs are forwarded to and executed on the VH.


## Commands and Tools

The software components, compilers and tools needed for the VE are
installed by default under the path `/opt/nec/ve`. In the `bin`
subdirectory you'll find most of the utilities needed to interact with
the VE. Besides compilers and MPI there are several VE specific Linux
tools:

* **binutils**: the binaries are prefixed by the letter *n*: *nas, nar, nelfedit, nld, nnm, nobjdump, nstrings, etc...*.
* **gdb**: the GNU debugger for VE programs.
* **ps, top, free, uptime, w**: are equivalents of the Linux commands and show information on processes running on a particular VE, free memory on a VE, its uptime, etc.
* **arch, uname, lscpu**: information about the architecture and the system.
* **iostat, pidstat, vmstat, sar, strace, taskset, time**: programs to display various statistics about the VE or trace VE programs.
* **ve_exec**: the loader for native VE programs. Not needed to be called explicitly because it should normally be registered as interpreter for the VE binary format with the Linux kernel of the VH. Thus native VE programs are executed seamlessly.
* **vecmd**: a VE management and monitoring program.

Most of the Linux-equivalent tools expect that the VE node that they
should address is set in the environment variable `VE_NODE_NUMBER`. If
the tools return odd results, try setting the env variable to one of
the VE IDs. On systems with only one VE it could make sense to
globally set the variable to 0:
```
$ export VE_NODE_NUMBER=0
```

The fact that many of the programs have the same name as their normal
Linux equivalents can bring confusion when simply adding
`/opt/nec/ve/bin` to the command search `$PATH`. A possible solution
to these name space clashes is to create properly prefixed symlinks in
another directory. For example (as root):
```
#!/bin/bash
DIR=/usr/ve/bin
mkdir -p $DIR
cd /opt/nec/ve/bin
ls -1 | egrep -v '^n' | while read NAME; do
    ln -s `pwd`/$NAME $DIR/ve$NAME
done
ls -1 | egrep '^n' | while read NAME; do
    ln -s `pwd`/$NAME $DIR/$NAME
done
```


## VE Status

A VE card starts up automatically when the VH is started, due to a
systemd unit file. You should be able to see the running VE card(s) with
```
$ /opt/nec/ve/bin/uptime
```
and you should be able to see details of the card (like model, memory
size, frequencies, HW errors) with
```
$ /opt/nec/ve/bin/vecmd info
```

When using with multiple VEs *vecmd* can be used selectively for a
particular VE card by adding the command line options `-N <VE_number> `.

The following commands are administrative commands that require root
priviledges.

The power state of the card can be queried with:
```
# /opt/nec/ve/bin/vecmd state get
```

The card can be powered off by:
```
# /opt/nec/ve/bin/vecmd state set off
```

To power the VE on again, use:
```
# /opt/nec/ve/bin/vecmd state set on
```

Before a VEOS update the VE card should be turned off and then
switched into maintenance mode:
```
# /opt/nec/ve/bin/vecmd state set off
# /opt/nec/ve/bin/vecmd state set mnt
```

After the update the VE card needs to be resetted:
```
# /opt/nec/ve/bin/vecmd reset card
```


## Compiler usage

The NEC SDK comes with three VE compilers that are capable of
automatic vectorization and automatic parallelization: **ncc** is the
C compiler, **nc++** the C++ compiler and **nfort** the Fortran
compiler. The compilers pretty much emulate the behavior of GNU
compilers in order to increase compatibility, but they are in no way
related to or derived from the GNU compilers.

Note for C++ users: the compilers language default is `–std=g++14`,
which stands for C++14 with some GNU extensions. Currently
`–std=c++14` and `–std=c++11` are not fully supported and might have
some issues with the standard library.

Note for Fortran users: the compiler partially supports Fortran2003
and large parts of Fortran2008.

A quick overview of the most important compiler options:

* **-O0, -O1, -O2, -O3, -O4**: optimization level, **-O4** is aggressive and might change results, **-O3** includes loop level transformations, inling works for **-O2** and higher, but has to be enabled by separate options.
* **-g**: enable debug symbols.
* **-report-all**: create a .L file with a formatted source file and messages, containing loop markers making it easy to see unvectorized loops.
* **-fdiag-vector=2**: increase verbosity of vectorization messages.
* **-finline –finline-functions**: enable inlining, use it with C++.
* **-fdiag-inline=2**: give detailed messages about inlining.
* **-fopenmp**: enable OpenMP. Link with this option, too!
* **-ftrace**: enable performance analysis at subroutine/function level. Introduces overhead per call but this is cleanly subtracted in the output. Link with this option, too.
* **-proginf**: enable proginf output at program end (low overhead). Link with this option, too.
* **-traceback**: enable traceback output in case of application crash. Link with this option, too. 


Compiler directives can significantly change and improve the
optimization of programs. One of the most important ones for
vectorization is declaring that loop iterations of the loop following
the directive are not data dependent and the loop can be
vectorized. It's notation in Fortran is:
```
!$NEC ivdep
```
while in C and C++ one should use:
```
#pragma _NEC ivdep
```

Please see the compiler manuals for details about the directives, they
allow to ignore dependencies and can influence the optimizations and
transformations of the compilers.


## Running VE programs

Non-MPI native VE programs are started explicitly or implicitly with
the help of */opt/nec/ve/bin/ve_exec*. This program is the loader for
VE programs which interacts with VEOS to create a process on the VE,
allocate memory for it which is managed in a virtual address space,
and handle interruptions and exceptions raised by the VE process, like
the system calls offloaded to the VH. While it wasn't in the early
days of VEOS, nowadays *ve_exec* is normally registered as the
interpreter for SX-Aurora ELF binaries in
*/proc/sys/fs/binfmt_misc*. Therefore the two ways of starting such a
native VE program are:


Using *ve_exec* explicitly:
```
$ /opt/nec/ve/bin/ve_exec ./ve.binary
```
or implicitly by simply executing the binary from a VH shell command:
```
$ ./ve.binary
```


On machines with multiple VEs the one on which the binary will be
executed is specified by either the value of the environment variable
`VE_NODE_NUMBER` or the command line option **-N NODE_NR** or
**--node=NODE_NR** to *ve_exec*. The VE node number defaults to 0.


### MPI programs

For building and running MPI applications it is recommended to source
the `necmpivars.{sh,csh} ` script located in
*/opt/nec/ve/mpi/\<VERSION\>/bin64*. This will bring the wrappers
*mpincc, mpinc++, mpinfort* into the execution PATH, which should be
used for compiling and linking MPI programs. A side effect is the name
collision of some of the VE specific utilities in */opt/nec/ve/bin*
with their native Linux variants. This means: if you need to use any
of the x86_64 Linux tools with a name collision (like *time, strace,
gdb*, ...), call them by specifying their full path.


Start MPI applications with the command:
```
$ mpirun ./a.out
```
This executes one MPI rank per VE core on all locally available VE’s.

To execute one MPI process per VE use (in this example 2 VE’s)
```
$ mpirun -v -np 2 -ve 0-1 ./a.out
```

You can select the VE to execute on with the option **–ve** using the numbering of the VE cards e.g. displayed by */opt/nec/ve/bin/uptime*.

An example that places 2 processes on two cards is
```
$ mpirun -v –venode –nn 2 -np 2 ./a.out
```

Please note that IO redirection via
```
$ mpirun ve_exec ./a.out > output # does not always do what you expect
```
does probably not do what you expect, as the MPI ranks are largely disconnected from the *mpirun* command, and the stdout is not connected to mpirun’s stdout. To achieve IO redirection, use
```
$ mpirun /opt/nec/ve/bin/mpisep.sh ./a.out
```
which creates files with MPI rank in the name for each rank, according
to the value of the variable NMPI_SEPSELECT.


### Performance analysis

For basic performance analysis the VE program should be compiled and linked with the `–proginf` option. In addition, at run-time, following environment variable should be set for non-MPI native VE programs:
```
$ export VE_PROGINF=YES|DETAIL
```

For MPI parallel applications set
```
$ export NMPI_PROGINF=YES|ALL|DETAIL|ALL_DETAIL
```

Those variables will lead to dumping a summary of the performance
metrics computed from the performance counter registers of the CPU at
the end of the application. Using this feature causes no additional
overhead besides printing the performance values at the end of the
program.


A more detailed performance analysis can be obtained by using the
**-ftrace** option for compilation and linking. This leads to
instrumenting each function/subroutine and measuring its performance
metrics. The approach causes some overhead that can increase the
run-time significantly. When calling small functions very many times
it is recomendable to consider to inline them.

Running the application will create one or more *ftrace.out* files, which can be viewed with
```
$ /opt/nec/ve/bin/ftrace [-f filename]
```
For MPI applications it might be more handy to use a GUI tool which can compare different MPI ranks:
```
$ /opt/nec/ve/ftraceviewer/ftraceviewer
```
The ftrace files must be opened in the GUI.


### Debugging

Compile the application with `–traceback`. Run the program with the
environment variable set to allow generation of traceback output:
```
$ export VE_TRACEBACK=ALL
```


When crashing, the program should generate a traceback of hex
addresses. Those can be resolved into sourcefiles and sourceline with
the utility */opt/nec/ve/bin/naddr2line* if the application was
compiled with –g.


You can also use */opt/nec/ve/bin/gdb* to debug a VE executable or
examine a core file. For best usage with *gdb*, please use **-g2**.


---

[Wikipedia](https://en.wikipedia.org/wiki/SX-Aurora_TSUBASA)
