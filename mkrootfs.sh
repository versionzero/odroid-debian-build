#!/bin/bash -x

. common.sh

mkdir -p kernel
mkdir -p rootfs
cd rootfs

debootstrap --foreign --arch $architecture kali kali-$architecture http://archive.kali.org/kali
cp /usr/bin/qemu-arm-static kali-$architecture/usr/bin/

