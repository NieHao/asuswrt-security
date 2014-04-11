#!/bin/sh

BR_VERSION="2014.02"
BR_HOME="/opt"
ASUSWRT_SOURCE="/asuswrt/asuswrt-security"

/usr/bin/wget -P $BR_HOME/buildroot-$BR_VERSION http://buildroot.uclibc.org/downloads/buildroot-$BR_VERSION.tar.bz2
/usr/bin/wget -P $BR_HOME/buildroot-$BR_VERSION http://rusxakep.com/asuswrt/downloads/buildroot-$BR_VERSION-config.gz
/usr/bin/wget -P $BR_HOME/buildroot-$BR_VERSION http://rusxakep.com/asuswrt/downloads/buildroot-$BR_VERSION-patches.gz
/usr/bin/wget -P $BR_HOME/buildroot-$BR_VERSION/package/busybox http://rusxakep.com/asuswrt/downloads/buildroot-busybox-$BR_VERSION-config.gz
/usr/bin/wget -P $BR_HOME/buildroot-$BR_VERSION/toolchain/uClibc http://rusxakep.com/asuswrt/downloads/buildroot-uClibc-$BR_VERSION-config.gz

/bin/tar xjf $BR_HOME/buildroot-$BR_VERSION/buildroot-$BR_VERSION.tar.bz2 -C $BR_HOME
/bin/gzip -d $BR_HOME/buildroot-$BR_VERSION/buildroot-$BR_VERSION-config.gz
/bin/gzip -d $BR_HOME/buildroot-$BR_VERSION/buildroot-$BR_VERSION-patches.gz
/bin/gzip -d $BR_HOME/buildroot-$BR_VERSION/package/busybox/buildroot-busybox-$BR_VERSION-config.gz
/bin/gzip -d $BR_HOME/buildroot-$BR_VERSION/toolchain/uClibc/buildroot-uClibc-$BR_VERSION-config.gz

/bin/rm -f $BR_HOME/buildroot-$BR_VERSION/buildroot-$BR_VERSION.tar.bz2
/bin/mv $BR_HOME/buildroot-$BR_VERSION/buildroot-$BR_VERSION-config $BR_HOME/buildroot-$BR_VERSION/.config
/bin/mv $BR_HOME/buildroot-$BR_VERSION/package/busybox/buildroot-busybox-$BR_VERSION-config $BR_HOME/buildroot-$BR_VERSION/package/busybox/busybox-1.22.x.config
/bin/mv $BR_HOME/buildroot-$BR_VERSION/toolchain/uClibc/buildroot-uClibc-$BR_VERSION-config $BR_HOME/buildroot-$BR_VERSION/toolchain/uClibc/uClibc-0.9.33.config

cd $BR_HOME/buildroot-$BR_VERSION

make oldconfig
make

mkdir -p $BR_HOME/buildroot
cp -r $BR_HOME/buildroot-$BR_VERSION/output/host/usr/* $BR_HOME/buildroot
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-addr2line $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-addr2line
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-ar $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-ar
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-as $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-as
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-c++ $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-c++
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-cc $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-cc
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-c++filt $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-c++filt
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-cpp $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-cpp
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-elfedit $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-elfedit
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-g++ $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-g++
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-gcc $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-gcc
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-gcc-4.6.4 $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-gcc-4.6.4
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-gcov $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-gcov
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-gprof $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-gprof
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-ld $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-ld
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-ld.bfd $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-ld.bfd
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-ldconfig $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-ldconfig
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-ldd $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-ldd
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-nm $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-nm
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-objcopy $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-objcopy
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-objdump $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-objdump
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-ranlib $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-ranlib
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-readelf $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-readelf
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-size $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-size
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-strings $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-strings
ln -s $BR_HOME/buildroot/bin/arm-buildroot-linux-uclibcgnueabi-strip $BR_HOME/buildroot/bin/arm-brcm-linux-uclibcgnueabi-strip
ln -s $BR_HOME/buildroot/arm-buildroot-linux-uclibcgnueabi/sysroot/lib/ld-uClibc.so.0 $BR_HOME/buildroot/lib/ld-uClibc.so.0
ln -s $BR_HOME/buildroot/arm-buildroot-linux-uclibcgnueabi/sysroot/lib/libcrypt.so.0 $BR_HOME/buildroot/lib/libcrypt.so.0
ln -s $BR_HOME/buildroot/arm-buildroot-linux-uclibcgnueabi/sysroot/lib/libc.so.0 $BR_HOME/buildroot/lib/libc.so.0
ln -s $BR_HOME/buildroot/arm-buildroot-linux-uclibcgnueabi/sysroot/lib/libdl.so.0 $BR_HOME/buildroot/lib/libdl.so.0
ln -s $BR_HOME/buildroot/arm-buildroot-linux-uclibcgnueabi/sysroot/lib/libgcc_s.so.1 $BR_HOME/buildroot/lib/libgcc_s.so.1
ln -s $BR_HOME/buildroot/arm-buildroot-linux-uclibcgnueabi/sysroot/lib/libm.so.0 $BR_HOME/buildroot/lib/libm.so.0
ln -s $BR_HOME/buildroot/arm-buildroot-linux-uclibcgnueabi/sysroot/lib/libnsl.so.0 $BR_HOME/buildroot/lib/libnsl.so.0
ln -s $BR_HOME/buildroot/arm-buildroot-linux-uclibcgnueabi/sysroot/lib/libpthread.so.0 $BR_HOME/buildroot/lib/libpthread.so.0
ln -s $BR_HOME/buildroot/arm-buildroot-linux-uclibcgnueabi $BR_HOME/buildroot/arm-linux
ln -s ../include/ $BR_HOME/buildroot/arm-buildroot-linux-uclibcgnueabi/sys-include
ln -s $BR_HOME/buildroot/arm-linux/sysroot/usr $BR_HOME/buildroot/usr
/usr/bin/patch -p0 $BR_HOME/buildroot/arm-linux/sysroot/usr/include/ctype.h $BR_HOME/buildroot-$BR_VERSION/buildroot-$BR_VERSION-patches
rm -f $BR_HOME/buildroot-$BR_VERSION/buildroot-$BR_VERSION-patches
ln -s $BR_HOME/buildroot $ASUSWRT_SOURCE/release/src-rt-6.x.4708/toolchains/hndtools-arm-linux-2.6.36-uclibc-4.6.4
