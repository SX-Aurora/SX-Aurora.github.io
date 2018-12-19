---
layout: post
title: "VE process memory layout: pmap" 
author: Erich Focht
excerpt: "Visualize the virtual memory layout of VE processes and see details of each virtual memory area."
category: posts
comments: true
tags: [memory, VM, monitoring, vector, sxaurora]
---

*Erich Focht*

When implementing the
[*py-veosinfo*](https://sx-aurora.github.io/posts/py-veosinfo-docs)
Python bindings I stumbled upon a call that I left unimplemented. It
was able to list a VE process' virtual memory areas including all
sorts of details, flags and pagesizes. Digging a bit deeper I found
that this call is used by the VE variant of the **pmap** utility from
the *psmisc-ve* package.

**pmap** shows the virtual memory map of a process. I usually was
satisfied with what */proc/PID/maps* was giving me, but *pmap* has
more details and ... there is no */proc* for a Vector Engine!


## Usage

The simplest way to call **pmap** is with only the process ID of the
VE process as argument. The output is sufficient to see the mapped
areas and their sizes:
```bash
$ /opt/nec/ve/bin/pmap 280646
VE Node: 0
280646:   ./p
0000600000000000  65536K r-x-- /home/focht/Tests/samples/p
0000600004000000  65536K rw--- /home/focht/Tests/samples/p
000060fc80000000 14680064K -w--- [stack]
00007f2000000000 196608K rw--- [anon]
00007f2560000000   4096K r-x-- /opt/nec/ve/musl/lib/libc.so
00007f2560400000   2048K rw--- /opt/nec/ve/musl/lib/libc.so
00007f2560600000   2048K rw--- [anon]
00007f2560800000   2048K r-x-- /opt/nec/ve/musl/lib/libsysve.so.1.0.0
00007f2560a00000   2048K rw--- /opt/nec/ve/musl/lib/libsysve.so.1.0.0
 total         15020032K
```

The example above shows that most of the memory is allocated on the
stack, this is probably a fortran program with automatic variables.

You can follow the evolution of the memory layout easily eg. by using:
`watch "/opt/nec/ve/bin/pmap $pid`.

More details are visible by adding the `-XX` option:

```bash
$ /opt/nec/ve/bin/pmap -XX $p
VE Node: 0
396729:   ./dgemm
     Address Perm   Offset Device      Inode  Size   Rss   Pss Shared_Clean Shared_Dirty Private_Clean Private_Dirty Referenced Anonymous AnonHugePages Swap KernelPageSize MMUPageSize Locked             VmFlagsMapping
600000000000 r-xp 00000000   fd:2 1618700757 65536 65536 65536            0            0             0             0          0         0         65536    0          65536       65536      0 rd ex mr mw me ht  dgemm
600004000000 rw-p 00000000   fd:2 1618700757 65536 65536 65536            0            0             0             0          0         0         65536    0          65536       65536      0 rd wr mr mw me ht  dgemm
60fb84000000 -w-p 00000000    0:0          0 18743296 18743296 18743296            0            0             0             0          0  18743296      18743296    0          65536       65536      0 wr mr mw me gd ht  [stack]
60fffc000000 ---p 00000000    0:0          0 65536 65536 65536            0            0             0             0          0     65536         65536    0          65536       65536      0     mr mw me gd ht [stack]
7f3804000000 rw-p 00000000    0:0          0 131072 131072 131072            0            0             0             0          0    131072        131072    0          65536       65536      0 rd wr mr mw me gd ht  [stack]
7f3810000000 rw-p 00000000    0:0          0 131072 131072 131072            0            0             0             0          0    131072        131072    0          65536       65536      0 rd wr mr mw me gd ht  [stack]
7f381c000000 rw-p 00000000    0:0          0 131072 131072 131072            0            0             0             0          0    131072        131072    0          65536       65536      0 rd wr mr mw me gd ht  [stack]
7f3828000000 rw-p 00000000    0:0          0 131072 131072 131072            0            0             0             0          0    131072        131072    0          65536       65536      0 rd wr mr mw me gd ht  [stack]
7f3834000000 rw-p 00000000    0:0          0 131072 131072 131072            0            0             0             0          0    131072        131072    0          65536       65536      0 rd wr mr mw me gd ht  [stack]
7f3840000000 rw-p 00000000    0:0          0 131072 131072 131072            0            0             0             0          0    131072        131072    0          65536       65536      0 rd wr mr mw me gd ht  [stack]
7f384c000000 rw-p 00000000    0:0          0 131072 131072 131072            0            0             0             0          0    131072        131072    0          65536       65536      0 rd wr mr mw me gd ht  [stack]
7f3854000000 rw-p 00000000    0:0          0 196608 196608 196608            0            0             0             0          0    196608        196608    0          65536       65536      0    rd wr mr mw me ht  [anon]
7f3ec0000000 r-xp 00000000   fd:0     778208  4096  4096  4096            0            0             0             0          0         0             0    0           2048        2048      0       rd ex mr mw me  libc.so
7f3ec0400000 rw-p 00200000   fd:0     778208  2048  2048  2048            0            0             0             0          0         0             0    0           2048        2048      0       rd wr mr mw me  libc.so
7f3ec0600000 rw-p 00000000    0:0          0  2048  2048  2048            0            0             0             0          0      2048             0    0           2048        2048      0    rd wr mr mw me ht  [anon]
7f3ec0800000 r-xp 00000000   fd:0      60384  2048  2048  2048            0            0             0             0          0         0             0    0           2048        2048      0       rd ex mr mw me  libsysve.so.1.0.0
7f3ec0a00000 rw-p 00000000   fd:0      60384  2048  2048  2048            0            0             0             0          0         0             0    0           2048        2048      0       rd wr mr mw me  libsysve.so.1.0.0
                                             ===== ===== ===== ============ ============ ============= ============= ========== ========= ============= ==== ============== =========== ====== 
                                             20066304 20066304 20066304            0            0             0             0          0  19924992      20054016    0         796672      796672      0 KB 
```

In this example we see multiple stacks, this is an OpenMP program. And
we can see the used page sizes: 64MB and 2MB.


**NOTE:** When calling the normal, x86 native *pmap* utility with the
same *PID*, the layout shows how the VE process map is embedded into
its pseudo process map at address *0x600000000000*.
```bash
$ pmap -X 283275
283275:   /opt/nec/ve/libexec/ve_exec -d /dev/veslot0 -s /var/opt/nec/ve/veos/veos0.sock -c -1 -- ./p
         Address Perm   Offset Device      Inode       Size  Rss  Pss Referenced Anonymous Swap Locked Mapping
        00400000 r-xp 00000000  fd:00   72955988         24   20   20         20         0    0      0 ve_exec
        00605000 r--p 00005000  fd:00   72955988          4    4    4          4         4    0      0 ve_exec
        00606000 rw-p 00006000  fd:00   72955988          4    4    4          4         4    0      0 ve_exec
        00607000 rw-p 00000000  00:00          0          8    4    4          4         4    0      0 
        00a4b000 rw-p 00000000  00:00          0        132   24   24         24        24    0      0 [heap]
    5f0000000000 rw-p 00000000  00:00          0          4    0    0          0         0    0      0 
    600000000000 r-xp 00000000  fd:02 1618700754       1108 1108  554       1108         0    0      0 p
    600000115000 r-xp 00000000  00:00          0      64428    0    0          0         0    0      0 
    600004000000 rw-p 00000000  fd:02 1618700754       1108 1108  554       1108         0    0      0 p
    600004115000 rw-p 00000000  00:00          0      64428    0    0          0         0    0      0 
    600008000000 ---p 00000000  00:00          0 1058930688    0    0          0         0    0      0 
    60fc80000000 -w-p 00000000  00:00          0   14680064    0    0          0         0    0      0 
    7ff400000000 rw-p 00000000  00:00          0     196608    0    0          0         0    0      0 
    7ff40c000000 ---p 00000000  00:00          0   16580608    0    0          0         0    0      0 
    7ffa20000000 r-xp 00000000  fd:00     778208       3092 3092 2570       3092         0    0      0 libc.so
    7ffa20305000 r-xp 00000000  00:00          0       1004    0    0          0         0    0      0 
    7ffa20400000 rw-p 00200000  fd:00     778208       1044 1044  522       1044         0    0      0 libc.so
    7ffa20505000 rw-p 00000000  00:00          0       3052    0    0          0         0    0      0 
    7ffa20800000 r-xp 00000000  fd:00      60384         36   36   18         36         0    0      0 libsysve.so.1.0.0
    7ffa20809000 r-xp 00000000  00:00          0       2012    0    0          0         0    0      0 
    7ffa20a00000 rw-p 00000000  fd:00      60384         36   36   18         36         0    0      0 libsysve.so.1.0.0
    7ffa20a09000 rw-p 00000000  00:00          0       2012    0    0          0         0    0      0 
    7ffa20c00000 ---p 00000000  00:00          0     512000    0    0          0         0    0      0 
    7ffa42e38000 r-xp 00000000  fd:00      59956         60    8    0          8         0    0      0 libbz2.so.1.0.6
    7ffa42e47000 ---p 0000f000  fd:00      59956       2044    0    0          0         0    0      0 libbz2.so.1.0.6
    7ffa43046000 r--p 0000e000  fd:00      59956          4    4    4          4         4    0      0 libbz2.so.1.0.6
    7ffa43047000 rw-p 0000f000  fd:00      59956          4    4    4          4         4    0      0 libbz2.so.1.0.6
    7ffa43048000 r-xp 00000000  fd:00      59924         84   12    0         12         0    0      0 libz.so.1.2.7
    7ffa4305d000 ---p 00015000  fd:00      59924       2044    0    0          0         0    0      0 libz.so.1.2.7
    7ffa4325c000 r--p 00014000  fd:00      59924          4    4    4          4         4    0      0 libz.so.1.2.7
    7ffa4325d000 rw-p 00015000  fd:00      59924          4    4    4          4         4    0      0 libz.so.1.2.7
    7ffa4325e000 r-xp 00000000  fd:00      59997         92   16    0         16         0    0      0 libelf-0.168.so
...
```


---

[Wikipedia](https://en.wikipedia.org/wiki/SX-Aurora_TSUBASA)
