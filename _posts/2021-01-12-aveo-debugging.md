---
layout: post
title: Debugging (A)VEO Programs
author: Erich Focht
excerpt: The post describes simple ways to debug AVEO program kernels that run on the vector engine.
category: posts
comments: true
tags: [VEO, offloading, debug, debugging, vector, sxaurora]
---

*Erich Focht*

Heterogeneous programs using vector engine offloading frameworks like
VEO or VEDA are running on two architectures:
* the *main* program and threads spawned by it run on the host (VH),
* offloaded "kernels" run on the vector engine(s) (VE).


### Host Side Debugging

Debugging the host side of the program (*main*) is as easy as starting it in a debugger:
```
$ gdb --args ./veo_program arg1 arg2
```


### VE Side Debugging

When the VE side "kernels" crash, for example with a SIGSEGV, the
offloading driver usually called *aveorun* catches the signal and
tries to deliver a stack trace, but often that information is not very
helpful. For example:
```
[VE] ERROR: signalHandler() Interrupt signal 11 received
0x600fffe00000
0x600000033a00 -> (null)
0x6000000279d8 -> ve_handler_loop
[VH] [TID 39356] ERROR: unpack_call_result() VE exception 11
```

A simple way to get more insight into the error is to run the entire
VE part of the code inside a VE debugger. This can be achieved by
(mis)using the `VEORUN_BIN` environment variable, which is normally
used for replacing the default *aveorun* by a custom one. In this case
the custom *aveorun* is just the VE debugger *gdb* that runs it:
```
$ export VEORUN_BIN="/opt/nec/ve/bin/gdb /opt/nec/ve/veos/libexec/aveorun"

$ ./veo_program arg1 arg2
```
Once the VEO program creates the VEO process, you'll see the debugger
prompt from the VE. Type "run" to continue, or set breakpoints, etc.

This works under the premise that you don't need to interact with the
host side program (eg. it requires no input). It is still possible to
attach to the VH side process with a debugger started in a different
console. Also you should be using only one VEO *process* on VE
side (or VEDA context).


### In Order Execution

Often out of order execution can lead to a significant deviation of
the instruction pointer from the place where an exception actually
occures, with the debugger pointing to the wrong code line. The vector
engine can be forced to execute instructions strictly in order by
setting the following environment variable:
```
export VE_ADVANCEOFF=YES
```

This will slow down execution somewhat but deliver a much more accurate
instruction pointer value.


### Multiple VE Processes

The case of multiple VE processes can be handled in different ways.
Either with a wrapper that selects just one VE process for debugging
and runs the others normally, without a debugger, or by starting each
VE process's *gdb* inside a separate instance of *xterm*. That way
each of the processes can be debugged separately, from a different
window:
```
$ export VEORUN_BIN="/usr/bin/xterm -e /opt/nec/ve/bin/gdb /opt/nec/ve/veos/libexec/aveorun"
```

With the DISPLAY environment variable set up properly whenever a VEO
*process* is started a *xterm* window will open up and show a `(gdb)`
prompt. Type `run` to start the VE side process in each of these
windows.


---

[Wikipedia](https://en.wikipedia.org/wiki/SX-Aurora_TSUBASA)
