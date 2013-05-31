#!/bin/bash -x

. common.sh

qemu-system-arm -cpu cortex-a9 -m 1024 -M vexpress-a9 -no-reboot -serial stdio \
                -kernel zImage -append "root=/dev/sda2 ro panic=0 console=ttyAMA0" \
                -hda images/debian-wheezy-odroid.img -serial /dev/pts/0 
