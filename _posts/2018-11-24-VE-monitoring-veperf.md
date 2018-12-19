---
layout: post
title: VE monitoring with veperf
author: Erich Focht
excerpt: Simple and easy external performance monitoring of VE processes.
category: posts
comments: true
tags: [monitoring, tools, performance, vector, sxaurora]
---

*Erich Focht*

## Introduction

The [*py-veosinfo*](https://github.com/SX-Aurora/py-veosinfo) Python
interface to the *veosinfo* vector engine library was recently
extended by code facilitating the reading of vector engine registers
(eg. the function *get_regvals()*) and helper functions and variables
for measuring performance counters and interpreting them (eg. the
function *ve_pid_perf()*, the constants *VEREGS* and *PMC_NAME*). I
wrote a little tool named **veperf** which demonstrates and uses these
facilities in order to monitor the performance of own processes
running on the system's VEs (normal users) or all processes (root).

For the impatient: an RPM with the *veosinfo* Python module and the
*veperf* tool is available as [release
1.3.2](https://github.com/SX-Aurora/py-veosinfo/releases/tag/v1.3.2)
of the project at github. When building from git, install cython and
call `make rpm`.


## Usage

*veperf* shows performance metrics of the user's own processes on all
or selected nodes, measured over certain time intervals. Root can see
all VE processes' performance metrics. Performance counter readout is
done from the vector host (VH) with no overhead for the running
processes. It involves reading register values for registers that
don't need the stopping of the cores and uses the VE's system
(privileged) DMA facilities.

The tool can be used by administrators to track the overall
performance of VEs and detect VEs running at very low
performance. Detecting "slow" users is intentionally left as a
separate step. Also the tool can be started by users just before
running a job and gather the performance evolution of their program
over the run-time. It can help identify fast and slow phases of the
program.

### Command invokation

```
veperf [-h|--help] [-d|--delay DELAY] [-n|--node NODE] [INTERVALS]
```

### Options

* `-d|--delay DELAY` : performance metrics measurement time interval. Default: 2s.
* `-n|--node NODE` : select VE node ID for measurement. Multiple **--node** options are allowed. When the option is omitted, all nodes are monitored.
* `INTERVALS` : number of monitoring time intervals before exiting the program. When this option is not specified, 'veperf' will continue until it is killed.


### Output Format

The output for each monitoring time interval consists of:

* a line containing the labels of the thread monitoring data
* for each monitored VE node:
  * `->VE#`: the VE node ID
  * for each (own, seen) task running on the VE
    * pid, USRSEC, EFFTIME, MOPS, MFLOPS, AVGVL, VOPRAT, VTIMERATIO, L1CMISS, PORTCONF, VLLCHIT, comm
  * summed up values for MOPS and MFLOPS for the VE. Only the visible processes contribute to the MOPS and MFLOPS sum.

In the example below only VE node 0 was monitored with the default time interval of 2s. Three monitoring intervals are displayed.

```
# veperf -d 2 -n 0
pid          USRSEC  EFFTIME     MOPS    MFLOPS  AVGVL    VOPRAT  VTIMERATIO  L1CMISS  PORTCONF   VLLCHIT  comm
-> VE0
376756       52.23s    1.000   276641    267393    255     99.4%      100.0%       0%        0%      100%  ./p
376799       50.43s    1.000   276629    267382    255     99.4%      100.0%       0%        0%      100%  ./p
376872       47.23s    1.000   416945    532519    255     99.4%      100.0%       0%        0%      100%  ./sgemm
376964        1.40s    0.017     1126         0      0      0.0%        0.0%      32%        0%        0%  ../bin/mpc_ve
377026       39.72s    0.997    64282     44803    256     99.8%      100.0%       0%        1%      100%  ./vector.sx-mpi
SUM VE0: MOPS=1035623  MFLOPS=1112096 
pid          USRSEC  EFFTIME     MOPS    MFLOPS  AVGVL    VOPRAT  VTIMERATIO  L1CMISS  PORTCONF   VLLCHIT  comm
-> VE0
376756       54.23s    1.000   276324    267087    255     99.4%      100.0%       0%        0%      100%  ./p
376799       52.43s    1.000   276325    267088    255     99.4%      100.0%       0%        0%      100%  ./p
376872       49.24s    1.000   416555    532021    255     99.4%      100.0%       0%        0%      100%  ./sgemm
376964        2.01s    0.308     4311      1296    222     94.1%       20.1%      69%        1%      100%  ../bin/mpc_ve
377026       41.72s    1.000    61982     43218    256     99.8%      100.0%       0%        1%      100%  ./vector.sx-mpi
SUM VE0: MOPS=1035497  MFLOPS=1110709 
pid          USRSEC  EFFTIME     MOPS    MFLOPS  AVGVL    VOPRAT  VTIMERATIO  L1CMISS  PORTCONF   VLLCHIT  comm
-> VE0
376756       56.23s    1.000   275573    266361    255     99.4%      100.0%       0%        0%      100%  ./p
376799       54.43s    1.000   275574    266361    255     99.4%      100.0%       0%        0%      100%  ./p     
376872       51.24s    1.000   415472    530636    255     99.4%      100.0%       0%        0%      100%  ./sgemm 
376964        4.01s    1.000     4380      1318    222     95.3%       20.8%      71%        2%      100%  ../bin/mpc_ve
377026       43.72s    1.000    56542     39425    256     99.8%      100.0%       0%        1%      100%  ./vector.sx-mpi
SUM VE0: MOPS=1027540  MFLOPS=1104101 
```

Some noteworthy details of the output:

* The process *../bin/mpc_ve* is doing IO in the first cycle: EFFTIME is very low, which means that the process is not progressing on the VE and probably spends most of the time in system calls. In the second cycle its EFFTIME is still far below 1.0 so we have a mix of IO and VE computation spent in this cycle's 2s interval.
* The process *../bin/mpc_ve* is running poorly on the vector machine. Although the AVGVL is large (222) and VOPRAT (vector operation ratio) is pretty large as well (95.3%), the VTIMERATIO (vector time ratio) is only 20%. The scalar CPU mainly waits on L1 Cache Misses (L1CMISS).
* The *./sgemm* performance exceeds the peak double precision performance, so this must be single precision. Well, it is SGEMM.

## Metrics

* **USRSEC**:      Task's user time on VE. When the task is not scheduled on a core, this time does not progress.
* **EFFTIME**:     Effective time: ratio between user and elapsed time. A value lower than 1.0 is a sign that the task is spending time in syscalls.
* **MOPS**:        Millions of Operations Per Second.
* **MFLOPS**:      Millions of Floating Point Ops Per Second.
* **AVGVL**:       Average vector length.
* **VOPRAT**:      Vector operation ratio [percent].
* **VTIMERATIO**:  Vector time ratio (vector time / user time) [percent].
* **L1CMISS**:     SPU L1 cache miss time [percent].
* **PORTCONF**:    CPU port conflict time [percent].
* **VLLCHIT**:     Vector load LLC hits [percent] (counter not active with MPI).

The PMMR register of each VE core is controlling which performance metrics
are actually active. Currently there is no easy way to control this register
from user side, MPI and non-MPI programs might measure slightly different
metrics.



---

[Wikipedia](https://en.wikipedia.org/wiki/SX-Aurora_TSUBASA)
