---
layout: post
title: Debugging with log4crc
excerpt: "Controlling debug logs for various components of the VE operating system and the pseudo process."
author: Erich Focht
category: posts
---

*Erich Focht*

## VE program execution

Native vector engine (VE) programs are normally executed with the help
of **ve_exec**, a program that interacts with the VE operating system
daemon, allocates memory, creates a process inside VEOS, loads the VE
binary into the VE memory and starts it there. While the native VE
program is executed the **ve_exec** main thread is waiting for
interrupts and exceptions raised by the program. Syscalls inside the
VE program, for example, raise an exception through the *monc*
instruction. Most of them are handled in the context of the
**ve_exec** main thread on vector host (VH) side. Every VE
porcess/thread has a corresponding thread on the VH which is handling
its syscalls. This VH process is usually called **pseudo process**.

**ve_exec** does not need to be invoked explicitly. Normally it is
registered in */proc/sys/fs/binfmt_misc/register* as the 'interpreter'
for VE ELF binaries.


## Logging for the *pseudo* process

All components running in user space and linked to VEOS are using
**log4c** as their logging facility. When you suspect that things are
going wrong between **ve_exec** and **VEOS**, use this logging
facility to check whether there are any suspicious error messages or
warning from the pseudo process.

In order to enable the log4c logging facility copy the following sample 
[log4crc](/img/log4crc "sample log4crc configuration file")
file into the current working directory of the VE program.

Execute the VE program. **log4c** will create output files inside the
working directory named `ve_exec.log.<PID>` with PID being the
process ID of the executed program.

The default values in the sample *log4crc* file will reveal messages like:
```
[ve_exec_appender] 2018-07-05T16:28:23+0200 veos.pseudo_process.core INFO 410983 Setting default stack limit as unlimited
[ve_exec_appender] 2018-07-05T16:28:23+0200 veos.pseudo_process.core INFO 410983 default page size is : 0x4000000
```

## Tweaking *log4crc*

The level of logging verbosity can be edited inside the *log4crc* file, for example by changing the `priority` attribute from "INFO" to "DEBUG" in the first line in the example below:
```
...
        <category name="veos.pseudo_process" priority="INFO" appender="ve_exec_appender" />
        <appender name="ve_exec_appender" layout="ve" type="stream" />
...
```

The `appender` attribute is pointing to the *appender* configuration
line just below. You can change the `layout` attribute to "ve_debug"
if you need more precise time stamps in the output. The `type`
attribute is set to "stream", which means that logs will simply be
appended to the file, as long as the pseudo process is running.

Other appenders are configured with the `type` "rollingfile". Their
log files created in the current directory will be rotated similar to
logrotate forr Linux system log files. When a file reaches a maximum
size it will be renamed and a new log file will be opened. The number
of log files kept is limited and configurable inside *log4crc*. Change
it by editing the `maxnum` parameter in the *rollingpolicy* line
inside the *log4crc* file:
```
...
        <rollingpolicy name="veos_command_rp" type="sizewin" maxsize="4194304" maxnum="10" />
...
```


## Debug logs for *VEOS*

The *VEOS* VE operating system runs as a service in user space on the
vector host. It also uses **log4c** as a logging facility and writes
its logs into the directory `/var/opt/nec/ve/veos`.

The logging priority can be changed by the superuser by editing the
*log4crc* file located in the directory `/etc/opt/nec/ve/veos`. After changing this file VEOS needs to be restarted by executing as *root* the command:
```
# systemctl restart ve-os-launcher@*.service
```

VEOS can be significantly slowed down by enabling too detailed
logging. Don't forget to reset the *log4crc* file to its old value
after you captured the desired logs!


---

[Wikipedia]: https://en.wikipedia.org/wiki/SX-Aurora_TSUBASA
