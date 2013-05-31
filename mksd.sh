#!/bin/bash -x

. common.sh

parted /dev/${DEVICE} --script -- mklabel msdos
parted /dev/${DEVICE} --script -- mkpart primary fat32 4096s 266239s
parted /dev/${DEVICE} --script -- mkpart primary ext4 266240s 100%
mkfs.vfat /dev/${DEVICE}1
mkfs.ext4 -L sdroot /dev/${DEVICE}2
