---
layout: post
title: Testing VEOS with accelerated DMA and VE profiling
author: Erich Focht
excerpt: "A set of RPMs for VEOS, libved, ve_drv and vp which implement an accelerated variant of the DMA manager for privileged DMA that is aware of huge pages. In addition this version contains patches that fix lock-ups that were happening when using veprof, the external profiling tool."
image: /img/highway-aurora.jpg
bigimg: /img/highway-aurora.jpg
show-avatar: false
category: posts
tags: [veos, dma, io, vector, sxaurora, tools]
---
*Erich Focht*

This post presents a testing VEOS version, derived from the official
v1.3.2 with two added features: accelerated DMA and a fix for external
sampling VE profiling. It is a follow-up on the post ["Building
VEOS"](https://sx-aurora.github.io/posts/Building-VEOS/) that was
describing

* a way to start building and experimenting with VEOS packages,
* an example usage with an own branch of VEOS from [github.com/efocht](https://github.com/efocht) which included a patch for speeding up DMA transfers.

The news is an updated base version of VEOS, now the patched version
is on top of v1.3.2, a fix for a rare issue with the tuned DMA
manager, and a patch fixing occasional lock-ups when using
[veprof](https://github.com/SX-Aurora/veprof), an external profiler
for VE programs.

**NOTE:** The patches included in this inofficial VEOS version are
currently being reviewed and will be included into the official
release some time in the future. Since this process could take
O(months), I simply want to provide them for those interested to test
and use the higher IO performance, higher VE-VH transfer speeds for
VEO and VHcall as well as the external VE profiling tool *veprof*. The
patches were already tested and I consider them safe enough to not
kill your cat, but, of course, this release comes without any
warranty.

## Download & Install

RPMs and SRPMs are provided as a release of the github project
[github.com/efocht/build-veos](https://github.com/efocht/build-veos):
[v1.3.2-4dma](https://github.com/efocht/build-veos/releases/tag/v1.3.2-4dma).

Before installing the RPMs make sure that you stopped the VEOS
services and unloaded the VE related kernel modules. For instructions
on this check [this post](https://sx-aurora.github.io/posts/VEOS-yum-repository).

Install the RPMs for example with:
```
cd BUILD_1.3.2_4dma
rpm -Fhv *.x86_64.rpm
```

The RPMs for the kernel modules have been built for CentOS 7.4. The
source RPMs are provided, thus the packages can be rebuilt for CentOS
7.5.


## Building

The packages can be built by using the scripts in
[github.com/efocht/build-veos](https://githib.com/efocht/build-veos):

```
git clone -b v1.3.2-4dma https://github.com/efocht/build-veos.git
ln -s build-veos/x .
```

### Clone repositories, checkout proper branch

```
mkdir BLD
cd BLD
GITH="https://github.com/efocht"

for repo in build-veos veos libved ve_drv-kmod vp-kmod; do
    git clone $GITH/$repo.git
done

for repo in build-veos veos libved ve_drv-kmod vp-kmod; do
    cd $repo
    git checkout v1.3.2-4dma
    cd ..
done

ln -s build-veos/x .
```

### Build RPMs and replace old ones by new ones

```
# stop VEOS and VE related services, unload VE modules
x/vemods_unload

# replace installed RPMs by the newly built ones
export RPMREPLACE=1

cd libved
../x/bld.libved
cd ..

cd vp-kmod
../x/bld.vp
cd ..

cd ve_drv-kmod
../x/bld.ve_drv
cd ..

cd veos
../x/bld.veos
cd ..

# load VE modules, start VEOS and VE related services
x/vemods_load
```



## Testing DMA performance

The simplest and most direct test is a benchmark that only does VE-VH
DMA transfers. The following test is using the functions
`ve_recv_data()` and `ve_send_data()` directly. These functions are
actually used by the IO related system calls inside the pseudo
process. The use unregistered VH buffers.

In order to get reproducible (and better) results, turn the VH cpufreq
governor into performance mode:
```
sudo cpupower frequency-set --governor performance
```

### Huge Pages on the VH

Huge pages are essential for high performance DMA with unregistered
buffers because they significantly reduce the overhead needed for
virtual to physical translation.

For huge pages testing: make sure they are enabled on the VH. You
should find the appropriate directories in
*/sys/kernel/mm/hugepages*. This approach uses 2MB huge pages, so make
sure there is a sufficient number of them in the system. Increase their
number eg with
```
sudo sysctl -w vm.nr_hugepages=8192
```

Transparent huge pages work, but could hide some trouble. They can be
disabled by adding `transparent_hugepages=never` to the kernel boot
options.

There are several ways to get applications to use huge pages on the VH
side. In a C program you can allocate huge page memory explicitly by
using *mmap()*:
```C
addr =  mmap(0, inp->size, PROT_READ | PROT_WRITE,
             MAP_PRIVATE|MAP_HUGETLB|MAP_ANONYMOUS|MAP_POPULATE,
            -1, 0);
```

When running native VE programs we want to have huge pages used inside
the VH side of the program, which is actually only the *"pseudo"* part
of *ve_exec*, the part that waits for exceptions from VH and processes
them inside the *ve_exec* context. Since we don't want to modify
*ve_exec* or its *libvepseudo.so* library, the easiest way to let the
syscalls use huge pages buffers is to run the program under `hugectl`,
the tool from the *libhugetlbfs-utils* package.
```
hugectl --heap <VE_EXECUTABLE> [...]
```
or, alternatively, set the environment variables preloading
*libhugetlbfs.so* and replacing *malloc* with something
huge-page-aware:
```
export LD_PRELOAD=libhugetlbfs.so
export HUGETLB_MORECORE=yes
export HUGETLB_VERBOSE=2
```


### Building and Running Tests

Get the repository with the tests and build them:
```
git clone https://github.com/efocht/vhcall-memtransfer-bm.git

# build
cd vhcall-memtransfer-bm
make
```

Run single transfer tests, for example one 40MB transfer on small pages, from VE to VH:
```
$ ./ve2vh -s $((40*1024))
prepared
4952.983801[MiB/s]
Total: 4952.983801[MiB/s]
```

And now the same on huge pages:
```
$ ./ve2vh -s $((40*1024)) -H
prepared
10389.310854[MiB/s]
Total: 10389.310854[MiB/s]
```

Or run scans over a range of buffer sizes:

**VH to VE, small pages (4k), unpinned, unregistered buffer***
```
$ ./scan_vh2ve.sh
 buff kb   BW MiB/s
      32       138
      64       254
     128       446
     256       834
     512       937
    1024      1977
    2048      1841
    4096      3075
    8192      3999
   16384      4578
   32768      4914
   65536      4948
  131072      5579
  262144      5693
  524288      5635
 1048576      5654
```

**VH to VE, huge pages (2M), unpinned, unregistered buffer***
```
$ HUGE=1 ./scan_vh2ve.sh
 buff kb   BW MiB/s
      32       136
      64       283
     128       393
     256       933
     512      1900
    1024      2673
    2048      4273
    4096      6506
    8192      8095
   16384      9108
   32768      9720
   65536     10047
  131072     10290
  262144     10300
  524288     10322
 1048576     10344
```


## Using *veprof* VE Profiling

This topic actually deserves a separate article, therefore I'll make it short:

The proprietary NEC compilers currently don't support simple
profiling. They do support something much more fancy, which is called
*ftrace* and instruments and measures each function's performance
counters, rendering these to a nice list of performance metrics for
each function in the program.

Unfortunately *ftrace* requires recompilation and brings quite some
overhead, especially when having many small functions. Often a quick
and low overhead profile would provide sufficient information for an
idea on what needs to be optimized. After VEOS has been added the
*ve_get_regvals()* functionality, my colleague Holger Berger decided
to try if an external profiler, periodically reading out from the VH
performance counters of certain VE processes and the corresponding IC
register, would be a feasible approach. It is using similar mechanisms
to monitor VE processes like
[*veperf*](https://sx-aurora.github.io/posts/VE-monitoring-veperf/)
but has a different scope. The result is the new tool at
[github.com/SX-Aurora/veprof](https://github.com/sx-aurora/veprof).

The tool has promptly triggered some bugs hiding in VEOS, which were
not fixed in the official **v1.3.2** release, yet. They are fixed in
the test release described in this post: **v1.3.2-4dma**, therefore
*veprof* can finally be used.

### Build *veprof*

Clone the repository and build the tools:
```
git clone https://github.com/SX-Aurora/veprof.git

cd veprof
make
```

The tools *veprof* and *veprof_display* profide the profile sampler
and the postprocessing, respectively.


### Usage

The following is taken more or less directly from the README.md of Holger's *veprof* repository.

Sample with 100hz:
```
veprof ./exe
```

Sample with 50 hz:
```
veprof -s 50 ./exe
```

Sample a wrapper calling exe
```
veprof -e ./exe ./wrapper.sh
```

Sample an openmp code (works only with VEOS *v1.3.2-4dma*, currently):
```
veprof --openmp ./exe
```

Display gathered results:
```
veprof_display veprof.out
```

A sample output is shown below:

```
FUNCTION            SAMPLES   TIME    TIME VECTIME  VTIME   VOP MFLOPS   MOPS    AVG    L1$ PRTCNF  LLC$E
                          %      %     [s]     [s]      %     %                 VLEN  MISS%    [s]   HIT%
main                  53.33  55.00    0.08    0.08 100.00 98.63  33388  67707 254.46   0.00   0.00 100.00
subroutine            46.67  45.00    0.06    0.06  96.21 98.55  32109  65167 254.46   0.00   0.00 100.00
```

