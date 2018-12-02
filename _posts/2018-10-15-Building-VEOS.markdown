---
layout: post
title: Building VEOS Packages
author: Erich Focht
excerpt: "Little helper tools that make it easy to build VEOS, the VE related kernel modules, libved, VEO and start tweaking the VE operating system."
category: posts
---

*Erich Focht*

This post describes one way (the one I often use) and little helper
tools to build the vector engine (VE) operating system *VEOS*, the
kernel modules *ve_drv* and *vp*, *libved*, *veoffload*,
*veoffload-veorun*. The officially released repositories for those
components can be found at https://github.com/veos-sxarr-NEC, do clone
or fork them and experiment with changes, if you'd like to improve or
contribute to their development!

VEOS recently (since version 1.3) started supporting Debian packages,
but the default installation and way of distributing and updating it
is still by using RPM packages on top of RHEL 7.X or CentOS
7.X. Therefore all instructions in this post and all tools are geared
towards the RPMs based setups. Some day this might be extended towards
Debian... Contributions are very welcome.


## Store The Configuration

Before doing changes to your system, store the configuration. Since
the changed packages will replace previously installed RPMs, save the
list of installed RPMs such that you can determine later to which
version you want to "downgrade" the packages when you want to switch
back to the original, unmodified software. Either save RPM versions
selectively or all at once, eg. with
```
rpm -qa | sort >rpmlist.orig
```


## The **build-veos** Repository

The little helpers for building packages from cloned or modified
repositories are located in the github repository
https://github.com/efocht/build-veos. Clone this repository locally:
```
git clone https://github.com/efocht/build-veos.git
```

The helper scripts are located in the subdirectory `x/`.

The scripts named `x/bld.*` can be used for building RPMs from their
repositories. They should be invoked from within the top level
directory of the repository. The environment variable *RELEASE* can be
set to reflect the special release version you are building. The
environment variable *VERSION* should reflect the version of the
package normally set in its *configure.ac* file at the top level. When
the freshly created packages should immediately replace the installed
RPMs on the build system, set the environment variable:
```
export RPMREPLACE=1
```

The script `x/install_prereqs` is a pretty dumb collection of
prerequisites needed on the build system. Run it with a `sudo` because
it invokes *yum* and needs root permissions.

The scripts `x/vemods_unload` and `x/vemods_load` will, respectively,
stop VEOS services and unload the kernel modules *ve_drv* and *vp*, or
load them and start the VEOS services. Unloading the modules is needed
in order to be able to update the modules RPMs and the VEOS RPMs.

**NOTE**: the module unload/load scripts ignore *ve_peermem* module
and the *vemmd* service. Deal with these manually, if needed.


## Example: Building **veoffload**

### Clone repositories, checkout proper branch

```
mkdir BLD
cd BLD
git clone https://github.com/efocht/build-veos.git
ln -s build-veos/x .
git clone https://github.com/SX-Aurora/veoffload
cd veoffload

# checkout multithreaded_vh branch
git checkout multithreaded_vh
```

### Build veoffload

```
# from within the veoffload repository
env VERSION=1.2.2e ../x/bld.veoffload
```

The veoffload package ignores (right now) the value of the *RELEASE*
env variable, therefore the packages produced are:
```
Wrote: /root/rpmbuild/SRPMS/veoffload-1.2.2e-1.el7.centos.src.rpm
Wrote: /root/rpmbuild/RPMS/x86_64/veoffload-1.2.2e-1.el7.centos.x86_64.rpm
Wrote: /root/rpmbuild/RPMS/x86_64/veoffload-devel-1.2.2e-1.el7.centos.x86_64.rpm
Wrote: /root/rpmbuild/RPMS/x86_64/veoffload-debuginfo-1.2.2e-1.el7.centos.x86_64.rpm
```

You might want (or need) to build the package *veoffload-veorun*,
too. Follow the same procedure and use the script `x/bld.veorun`.



## Example: Building An Experimental VEOS

Instructions for building and testing my **dma-bulk-hugepage** branch
of *veos*, *ve_drv*, *vp*, *libved*. This code is experimental and
comes with no guarantees for anything. Use on your own risk. The
procedure described in this section is documented
[here](https://github.com/efocht/build-veos/blob/master/Bulk_DMA_HugePages.md),
too, with slightly more explanations on the motivation for it. It
significantly speeds up data transfers between VH and VE which use the
privileged (AKA "system") DMA descriptors and unregistered/unpinned
buffers.

### Clone repositories, checkout proper branch

```
mkdir BLD
cd BLD
GITH="https://github.com/efocht"

for repo in build-veos veos libved ve_drv-kmod vp-kmod vhcall-memtransfer-bm; do
    git clone $GITH/$repo.git
done

ln -s build-veos/x .

for repo in veos libved ve_drv-kmod vp-kmod; do
    cd $repo
    git checkout dma-bulk-hugepage
    cd ..
done
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



---

[Wikipedia](https://en.wikipedia.org/wiki/SX-Aurora_TSUBASA)
