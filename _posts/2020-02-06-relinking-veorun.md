---
layout: post
title: Relinking veorun for newer compilers
excerpt: With the switch to 3.0 ncc/nfort compilers VEO sometimes fails to load the .so with VE kernels. Relinking the veorun utility solves the problem.
category: posts
comments: true
tags: [veo, vector, sxaurora, offloading, compilers]
---

*Erich Focht*


## The Issue

With the update of the ncc/nc++/nfort compilers to the versions 3.0.1
and higher we saw sometimes that a VEO program failed in the
`veo_load_library()` call, reporting that the VE .so library could not be found:

```
failed veo_load_library: No such file or directory
```

This problem occured with VEOS 2.2.2 and currently with VEOS 2.3.0.

The reason for the problem seems to be a mismatch in the libraries
needed by the `veorun` utility located in
*/opt/nec/ve/veos/libexec/veorun* and those needed by the VE kernels
.so file. The `veorun` utility being linked with an older compiler
loads Fortran and C++ runtime libraries from the directories of the
older compiler:

```sh
$ /opt/nec/ve/glibc/bin/ldd /opt/nec/ve/veos/libexec/veorun
	libpthread.so.0 => /opt/nec/ve/lib/libpthread.so.0 (0x0000600c00800000)
	libdl.so.2 => /opt/nec/ve/lib/libdl.so.2 (0x0000600c00e00000)
	libnfort.so.2 => /opt/nec/ve/nfort/2.2.2/lib/libnfort.so.2 (0x0000600c01400000)
	libnc++.so.2 => /opt/nec/ve/nfort/2.2.2/lib/libnc++.so.2 (0x0000600c01a00000)
	libncc.so.2 => /opt/nec/ve/nfort/2.2.2/lib/libncc.so.2 (0x0000600c02000000)
	libsysve.so.1 => /opt/nec/ve/lib/libsysve.so.1 (0x0000600c02600000)
	libm.so.6 => /opt/nec/ve/lib/libm.so.6 (0x0000600c02a00000)
	libc.so.6 => /opt/nec/ve/lib/libc.so.6 (0x0000600c03000000)
	/opt/nec/ve/lib/ld-linux-ve.so.1 (0x0000600c00000000)
```

while the freshly compiled .so file expects them to come for example
from */opt/nec/ve/nfort/3.0.1/lib/*. Pointing the environment variable
`VE_LD_LIBRARY_PATH` to the newer libraries didn't work for me.


## The Remedy

Relinking the `veorun` helper worked in my case. That way both, the
`veorun` executable and the shared library which it will load require
and get the same compiler libraries.

A little script is provided with the package `veoffload-veorun` in
order to allow linking VE kernels statically into a specialized
`veorun`. We use it with an empty dummy object file:

```sh
touch dummy.c

/opt/nec/ve/bin/ncc -o dummy.o -c dummy.c

CCLD=/opt/nec/ve/bin/nfort CFLAGS="-O0" LDFLAGS="-fopenmp -pthread -ldl" \
   /opt/nec/ve/veos/libexec/mk_veorun_static veorun dummy.o
```

Now we set the environment variable `VEORUN_BIN` to point to the newly
created `veorun` and start our VEO program:

```sh
export VEORUN_BIN=$(pwd)/veorun

.../veo_executable ...
```

*NOTE* When using `mk_veorun_static` the compiler is being specified
 by setting the `CCLD` env variable. We point it to the Fortran
 compiler here because this way we can also load and use safely VE
 kernels compiled from Fortran code. If your kernels use OpenMP, do
 use the `-fopenmp` option in `$LDFLAGS`. If you don't plan to use
 OpenMP in the kernels, leave that option away.

---------
[Wikipedia](https://en.wikipedia.org/wiki/SX-Aurora_TSUBASA)
