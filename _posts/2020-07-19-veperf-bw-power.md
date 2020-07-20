---
layout: post
title: veperf memory bandwidth, power and energy monitoring
author: Erich Focht
excerpt: The veperf monitoring tool displays live performance metrics of running VE programs. It has been extended to also show memory bandwidths as well as power and energy metrics.
category: posts
comments: true
tags: [monitoring, tools, performance, vector, sxaurora]
---

*Erich Focht*

The monitoring tool `veperf` was introduced in November 2018 in the
blog post [VE monitoring with
veperf](https://sx-aurora.github.io/posts/VE-monitoring-veperf/). It
is part of the [py-veosinfo](https://github.com/sx-aurora/py-veosinfo)
package and displays live performance metrics of own running VE
programs.

`veperf` has been extended to display some additional metrics: load
and store memory bandwidths, power consumption of each monitored VE
and energy used by each VE since the monitoring tool was started.

In order to monitor memory bandwidths the VE processes need to be
started with the environment variable setting:
```
export VE_PERF_MODE=VECTOR-MEM
```
This is valid for programs linked with any of the NEC SDK compilers:
*ncc*, *nc++*, *nfort*. Programs linked with LLVM are currently not
influenced by the environment variable and will not display memory
bandwidth metrics.


## Installation

### From PYPI

The `py-veosinfo` source package is uploaded to pypi.org and can be installed
by calling:
```
pip install py-veosinfo
```

The build needs the RPM `veosinfo-devel` to be installed as it needs
access to the include file `veosinfo.h`.

For local user installs the binary is being created in `$HOME/.local/bin`.


### From RPM

For CentOS 7 (Python 2.7) setups we provide an rpm in the YUM repository with the following configuration:
```
$ cat /etc/yum.repos.d/ve_extras.repo 
[ve-extra]
name=Aurora TSUBASA Extras
baseurl=https://sx-aurora.com/repos/veos/ef_extra
gpgcheck=0
enabled=1
```

With that configured the installation command is
```
sudo yum install py-veosinfo
```

The executable ends up installed in `/usr/bin/veperf`.



## Usage

*veperf* shows performance metrics of the user's own processes on all
or selected nodes, measured over certain time intervals. The *root*
user can monitor all VE processes' performance metrics. Performance
counter readout is done from the vector host (VH) with no overhead or
interruption for the running processes, no instrumentation of programs
is necessary. It involves reading register values for registers that
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
    * pid, USRSEC, EFFTIME, MOPS, MFLOPS, AVGVL, VOPRAT, VTIMERATIO, L1CMISS, PORTCONF, VLLCHIT, LOADBW, STOREBW, comm
  * summed up values for MOPS, MFLOPS, POWER and ENERGY for the VE. If processes are set to monitor memory bandwidths, the summed LOAD and STORE memory bandwidths (Core <-> LLC) are displayed.

Only the visible processes contribute to the MOPS, MFLOPS, LOADBW and
STOREBW sums while POWER and ENERGY might include contributions from
processes that are not visible, belonging to other users.

The example below shows 8 processes running on VE node 1 with an idle node 0, monitored with the default time interval of 2s.

```
pid          USRSEC  EFFTIME     MOPS    MFLOPS  AVGVL    VOPRAT  VTIMERATIO  L1CMISS  PORTCONF   VLLCHIT    LOADBW   STOREBW  comm      
-> VE0
SUM VE0: MOPS=0        MFLOPS=0        POWER=40.6W ENERGY=4.23kJ
-> VE1
199287      301.85s    1.000    75934     67531    175     98.6%       91.0%       0%        0%       96%   36.091   23.460  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
199288      301.84s    1.000    76016     67630    176     98.6%       91.1%       0%        0%       97%   35.963   23.457  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
199289      301.82s    1.000    76170     67759    175     98.6%       91.2%       0%        0%       97%   36.109   23.493  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
199290      301.88s    1.000    75960     67581    176     98.6%       91.3%       0%        0%       97%   35.938   23.459  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
199291      301.82s    1.000    75664     67277    175     98.6%       91.1%       0%        0%       96%   35.985   23.445  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
199293      301.87s    1.000    75368     67017    176     98.6%       90.8%       0%        0%       96%   35.791   23.378  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
199295      301.85s    1.000    75839     67449    175     98.6%       91.0%       0%        0%       96%   35.996   23.456  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
199298      301.81s    1.000    75797     67420    176     98.6%       91.2%       0%        0%       97%   35.919   23.446  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
SUM VE1: MOPS=606749   MFLOPS=539664   LOADBW=287.791GB/s STOREBW=187.593GB/s POWER=143.4W ENERGY=15.31kJ
pid          USRSEC  EFFTIME     MOPS    MFLOPS  AVGVL    VOPRAT  VTIMERATIO  L1CMISS  PORTCONF   VLLCHIT    LOADBW   STOREBW  comm      
-> VE0
SUM VE0: MOPS=0        MFLOPS=0        POWER=40.6W ENERGY=4.31kJ
-> VE1
199287      303.85s    1.000    58922     50487    174     98.4%       89.6%       0%        0%       96%   35.156   24.599  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
199288      303.84s    1.000    58653     50276    175     98.4%       89.9%       0%        0%       96%   34.786   24.543  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
199289      303.83s    1.000    59104     50677    174     98.4%       90.0%       0%        0%       96%   35.095   24.591  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
199290      303.88s    1.000    58598     50235    175     98.4%       89.7%       0%        0%       96%   34.740   24.515  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
199291      303.82s    1.000    58731     50330    174     98.4%       89.8%       0%        0%       96%   34.949   24.547  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
199293      303.87s    1.000    58166     49826    175     98.4%       89.3%       0%        0%       96%   34.605   24.444  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
199295      303.85s    1.000    58808     50405    174     98.4%       89.4%       0%        0%       96%   34.947   24.561  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
199298      303.81s    1.000    58540     50175    175     98.4%       89.7%       0%        0%       96%   34.737   24.518  cpunodebind=-1--/scr/qe-6.3/bin/pw.x
SUM VE1: MOPS=469522   MFLOPS=402411   LOADBW=279.014GB/s STOREBW=196.318GB/s POWER=152.8W ENERGY=15.62kJ
```

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
* **LOADBW**:      LLC to VE core load memory bandwidth in GB/s. Only shown if `VE_PERF_MODE=VECTOR-MEM`.
* **STOREBW**:     LLC to VE core store memory bandwidth in GB/s. Only shown if `VE_PERF_MODE=VECTOR-MEM`.
* **POWER**:       Power consumption of the VE in Watts. No VH related power consumption is considered.
* **ENERGY**:      Energy consumed by the VE since `veperf` was started, in kiloJoules. No VH related power consumption is considered.

The PMMR register of each VE core is controlling which performance
metrics are actually active. Currently there is no easy way to control
this register from user side besides setting `VE_PERF_MODE`, MPI and
non-MPI programs might measure slightly different metrics.



---

[Wikipedia](https://en.wikipedia.org/wiki/SX-Aurora_TSUBASA)
