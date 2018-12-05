---
layout: post
title: VEOS yum Repository on the Web
author: Erich Focht
excerpt: "Updating or installing VEOS related packages directly from an online yum repository."
category: posts
---

*Erich Focht*


In order to make updating VEOS easy, the VEOS RPMs normally packaged
in a zip file at
[https://www.nec.com/en/global/prod/hpc/aurora/ve-software/](https://www.nec.com/en/global/prod/hpc/aurora/ve-software/)
have been extracted and made available as a set of repositories. If
your aurora machine can connect to the internet, here's a procedure to
use these VEOS repositories.

This post does not explain the procedure for upgrading the
distribution, eg. from CentOS 7.4 to CentOS 7.5. When doing such an
upgrade in an environment with Infiniband, the Mellanox OFED package
(MOFED) must be deinstalled before the upgrade and re-installed
(usually at different version) after the upgrade.


## PREPARATION

Make sure you have the public GPG key for VE software imported:

```
rpm --import https://www.nec.com/en/global/prod/hpc/aurora/ve-software/files/vesw.public.key
```

Another key used for signing VEOS-related RPMs should already be on
the system as part of the *TSUBASA-soft-release-1.0-1.noarch* RPM at
*/etc/pki/rpm-gpg/RPM-GPG-KEY-TSUBASA-soft*. Make sure that key is
imported as well:
```
rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-TSUBASA-soft
```

Replace your yum repository configurations for VEOS (mostly local
repository possibly called /etc/yum.repos.d/TSUBASA-local.repo) by
following two repository configuration files:

*/etc/yum.repos.d/veos-common.repo*:
```
[veos-common]
name=Aurora VEOS Common
baseurl=https://sx-aurora.com/repos/veos/common
gpgcheck=1
enabled=1
```

*/etc/yum.repos.d/veos-rhel7.repo*:
```
[veos-rhel7]
name=Aurora VEOS RHEL Specific
#baseurl=https://sx-aurora.com/repos/veos/RHEL7.3
baseurl=https://sx-aurora.com/repos/veos/RHEL7.4
#baseurl=https://sx-aurora.com/repos/veos/RHEL7.5
gpgcheck=1
enabled=1
```

In the later repo config comment/uncomment the baseurl that
corresponds to your variant of RHEL7 or CentOS7.


## UPDATING

The steps described below are following the [Installation
Manual](https://www.nec.com/en/global/prod/hpc/aurora/document/InstallationGuide_E.pdf).

### Take the VE cards into maintenance mode
```
/opt/nec/ve/bin/vecmd state set off
/opt/nec/ve/bin/vecmd state set mnt
```

### Stop VEOS, Monitoring and MMM
```
systemctl stop vemmd
/opt/nec/ve/veos/sbin/terminate-all-veos
systemctl stop mmm
rmmod ve_drv
rmmod vp
```

### Update VEOS
```
yum update
```

### Update VMC Firmware

If the *vmcfw* package was updated it is recommended to update the VMC
firmware of the VE card. The VE's FW version can be checked with the command:
```
/opt/nec/ve/bin/vecmd info | grep VMCFW
```

If the version differs from the version of the *vmcfw* RPM, the VE's
FW should be updated while the cards are in maintenance mode and the
VEOS related services are still stopped. The procedure is simple, but
make sure the updating command is issued from within the directory
containing the firmware:

```
cd /etc/opt/nec/ve/mmm/vmc
/opt/nec/ve/bin/vecmd fwup vmc aurora_MK10.bin
```

Reboot the VH after a FW upgrade.


### Bring VE cards back online

If Infiniband for SX-Aurora TSUBASA is installed on the system:
```
systemctl start vemmd
```

Then load the VE driver kernel module and start MMM:
```
modprobe ve_drv
systemctl start mmm
```

Or reboot the system.


---

[Wikipedia](https://en.wikipedia.org/wiki/SX-Aurora_TSUBASA)
