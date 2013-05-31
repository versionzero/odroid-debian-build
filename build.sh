#!/bin/bash -x 

sudo fdisk  /dev/sdc
sudo mkfs -t ext4 /dev/sdc5
ls
mkdir odroid
cd odroid/
ls
wget http://busybox.net/downloads/binaries/latest/busybox-armv4tl
ls
more busybox-armv4tl 
apt-get install debootstrap qemu-user-static
sudo apt-get install debootstrap qemu-user-static
debootstrap 
debootstrap --help
touch mkroot.sh
emacs -nw mkroot.sh 
chmod 755 mkroot.sh
./mkroot.sh 
sudo ./mkroot.sh 
ls
ls -l
ls wheezy-armhf/
rmtmptex 
ls
touch mksd.sh
df -h
chmod 755 mksd.sh
sudo ./mksd.sh 
sudo ./mkroot.sh 
ls
rmtmptex 
ls
ls wheezy-armhf/
ls wheezy-armhf/debootstrap/
more wheezy-armhf/debootstrap/debootstrap.log 
ls
touch emulate.sh
chmod 755 emulate.sh
./emulate.sh 
sudo apt-get install qemu-system 
./emulate.sh 
sudo ./emulate.sh 
ls
more mkroot.sh 
ls wheezy-armhf/
export PATH=/sbin:/usr/sbin:/bin:/usr/bin:/system/bin
    busybox chroot /mnt/debian /debootstrap/debootstrap --second-stage
sudo  busybox chroot /mnt/debian /debootstrap/debootstrap --second-stage
sudo  busybox chroot /mnt/debian /bin/bash 
ls /mnt/debian/bin/bash 
 busybox chroot /mnt/debian /bin/bash 
 busybox sudo chroot /mnt/debian /bin/bash 
export PATH=/sbin:/usr/sbin:/bin:/usr/bin
sudo  busybox chroot /mnt/debian /bin/bash 
sudo  busybox chroot /mnt/debian /bin/sh
sudo chroot /mnt/debian /bin/bash 
man chroot
sudo chroot /mnt/debian 
 chroot /mnt/debian 
ldd /bin/bash
apt-get install git-core gnupg flex bison gperf libesd0-dev build-essential zip curl libncurses5-dev zlib1g-dev libncurses5-dev gcc-multilib g++-multilib
sudo apt-get install git-core gnupg flex bison gperf libesd0-dev build-essential zip curl libncurses5-dev zlib1g-dev libncurses5-dev gcc-multilib g++-multilib
dpkg --add-architecture i386
apt-get update
dpkg --help
dpkg -v
dpkg -V
dpkg -h
dpkg --version 
echo "foreign-architecture armhf" > /etc/dpkg/dpkg.cfg.d/architectures
more /etc/dpkg/dpkg.cfg.d/architectures
more /etc/dpkg/dpkg.cfg
sudo emacs -nw /etc/dpkg/dpkg.cfg.d/architectures
apt-get update
apt-get install ia32-libs
sudo apt-get update
sudo emacs -nw /etc/dpkg/dpkg.cfg.d/architectures
sudo apt-get update
apt-get update
sudo apt-get install ia32-libs
cd ~
mkdir -p arm-stuff/kernel/toolchains
cd arm-stuff/kernel/toolchains
git clone git://github.com/offensive-security/arm-eabi-linaro-4.6.2.git
cd ..
ls
cd ..
ls
 mkdir -p images
cd images
 dd if=/dev/zero of=debian-wheezy-odroid.img bs=1MB count=2000
ls
ls ~/
ls ~/odroid/
cp ~/odroid/*sh
cp ~/odroid/*sh .
ls
more emulate.sh 
e emulate.sh 
ls
chmod 755 mkroot.sh
./mkroot.sh
ls
cd ..
sl
cd -
chmod 755 mk*
rmtmptex 
rmtmp
ls
cp debian-wheezy-odroid.img debian-wheezy-odroid.img-
ls
ls -l
rm debian-wheezy-odroid.img- 
./mkpart.sh 
sudo ./mkpart.sh 
sudo apt-get install kpartx
sudo rm -f /etc/dpkg/dpkg.cfg.d/architectures
man kpartx 
sudo ./mkpart.sh 
ls
mv mkroot.sh mksd.sh ../
mv common.sh ../
e mkpart.sh 
ls
mv emulate.sh ..
ls
ls -l
cd ..
ls
mkdir -p rootfs
cd rootfs
mv ../mkroot.sh 
mv ../mkroot.sh .
more mkroot.sh 
./mkroot.sh 
sudo ./mkroot.sh 
ls
cp /usr/bin/qemu-arm-static wheezy-armhf/usr/bin/
sudo cp /usr/bin/qemu-arm-static wheezy-armhf/usr/bin/
LANG=C chroot wheezy-armhf /debootstrap/debootstrap --second-stage
sudo LANG=C chroot wheezy-armhf /debootstrap/debootstrap --second-stage
ls
more mkroot.sh 
export architecture="armhf"
cat << EOF > wheezy-$architecture/etc/apt/sources.list
more /etc/apt/sources.list
cat << EOF > wheezy-$architecture/etc/apt/sources.list
deb http://ftp.ca.debian.org/debian debian main contrib non-free
deb http://ftp.ca.debian.org/debian-security debian/updates main contrib non-free
EOF

cat << EOF > sources.list
deb http://ftp.ca.debian.org/debian debian main contrib non-free
deb http://ftp.ca.debian.org/debian-security debian/updates main contrib non-free
EOF

sudo cp sources.list wheezy-$architecture/etc/apt/
cat << EOF > interfaces
auto lo
iface lo inet loopback
auto eth0
iface eth0 inet dhcp
EOF

cat << EOF > resolv.conf
more /etc/resolv
more /etc/resolv.conf 
cp /etc/resolv.conf .
e resolv.conf 
ls
rmtmp
sudo cp interfaces wheezy-armhf/etc/network/interfaces
echo "odriod" | sudo tee wheezy-armhf/etc/hostname
export MALLOC_CHECK_=0 # workaround for LP: #520465
export LC_ALL=C
export DEBIAN_FRONTEND=noninteractive
mount -t proc proc wheezy-armhf/proc
sudo mount -t proc proc wheezy-armhf/proc
mount -o bind /dev/ wheezy-armhf/dev/
sudo mount -o bind /dev/ wheezy-armhf/dev/
mount -o bind /dev/pts wheezy-armhf/dev/pts
sudo mount -o bind /dev/pts wheezy-armhf/dev/pts
cat << EOF > debconf.set
console-common console-data/keymap/policy select Select keymap from full list
console-common console-data/keymap/full select en-latin1-nodeadkeys
EOF

cat << EOF > third-stagedpkg-divert --add --local --divert /usr/sbin/invoke-rc.d.chroot --rename /usr/sbin/invoke-rc.d
cp /bin/true /usr/sbin/invoke-rc.d

apt-get update
apt-get install locales-all

debconf-set-selections /debconf.set
rm -f /debconf.set
apt-get update
apt-get -y install git-core binutils ca-certificates initramfs-tools uboot-mkimage
apt-get -y install locales console-common less nano git
echo "root:toor" | chpasswd
sed -i -e 's/KERNEL\!=\"eth\*|/KERNEL\!=\"/' /lib/udev/rules.d/75-persistent-net-generator.rules
rm -f /etc/udev/rules.d/70-persistent-net.rules
apt-get --yes --force-yes install $packages

rm -f /usr/sbin/invoke-rc.d
dpkg-divert --remove --rename /usr/sbin/invoke-rc.d

rm -f /third-stage
EOF

more third-stage 
e third-stage 
more mkroot.sh 
ls
sudo cp third-stage wheezy-armhf/
sudo chmod +x wheezy-armhf/third-stage 
ls -l wheezy-armhf/
cat << EOF > cleanup
rm -rf /root/.bash_history
apt-get update
apt-get clean
rm -f cleanup
EOF

sudo cp cleanup wheezy-armhf/
sudo chmod +x wheezy-armhf/cleanup 
LANG=C chroot wheezy-armhf/ /cleanup
sudo LANG=C chroot wheezy-armhf /cleanup
more sources.list 
more /etc/apt/sources.list
e sources.list 
sudo cp sources.list wheezy-$architecture/etc/apt/
sudo cp cleanup wheezy-armhf/
sudo LANG=C chroot wheezy-armhf /cleanup
ls
ls wheezy-armhf/
ls -l
sudo chmod +x wheezy-armhf/cleanup 
cd wheezy-armhf/
rm -f *~
ls
ls -l
cd ..
sudo LANG=C chroot wheezy-armhf /cleanup
e sources.list 
chmod +x cleanup 
ls -l
chmod +x cleanup third-stage
rmtmp
sudo cp cleanup wheezy-armhf/
sudo LANG=C chroot wheezy-armhf /cleanup
sudo cp sources.list wheezy-$architecture/etc/apt/
sudo cp cleanup wheezy-armhf/
sudo LANG=C chroot wheezy-armhf /cleanup
ls wheezy-armhf/
sl
sudo umount wheezy-armhf/proc
sudo umount wheezy-armhf/dev/pts
sudo umount wheezy-armhf/dev
cd ..
ls
cd rootfs/
sl
mkdir ../mkrootfs
mv cleanup sources.list interfaces debconf.set mkroot.sh resolv.conf sources.list third-stage ../mkrootfs/
ls
cd ..
ls
tar czf rootfs.tar.gz rootfs/
rm -f rootfs.tar.gz 
sudo tar czf rootfs.tar.gz rootfs/
apt-get install kpartx xz-utils
sudo apt-get install kpartx xz-utils
ls
cd images/
ls
ls -l
sudo rsync -HPavz /home/benner/arm-stuff/rootfs/wheezy-armhf/ root
ls /
ls -l /
ls
sudo emacs -nw root/etc/inittab
more /sbin/init
cd root/
ls
ln -s sbin/init .
ls -l
sudo ln -s sbin/init .
ls -l
sudo ln -s /sbin/init .
sudo ln -fs /sbin/init .
ls -l
./init 
cd ../
ls
cd ..
ls
cd kernel/
ls
export ARCH=arm
export CROSS_COMPILE=~/arm-stuff/kernel/toolchains/arm-eabi-linaro-4.6.2/bin/arm-eabi-
cd toolchains/
l
ls
cd ..
ls
git clone --depth 1 https://github.com/hardkernel/linux.git -b odroid-3.0.y odroid
cd odroid
ls
make odroidu2_ubuntu_defconfig
grep odroidu2_ubuntu_defconfig
grep odroidu2_ubuntu_defconfig *
more Makefile 
ls
more Kconfig 
make menuconfig
cat /proc/cpuinfo|grep processor|wc -l
make -j $(cat /proc/cpuinfo|grep processor|wc -l)
grep PIN_SDA *
grep -R PIN_SDA *
emacs -nw arch/arm/mach-exynos/pix_i2c.c
make menuconfig
make -j $(cat /proc/cpuinfo|grep processor|wc -l)
make modules_install INSTALL_MOD_PATH=~/arm-stuff/images/root/
sudo make modules_install INSTALL_MOD_PATH=~/arm-stuff/images/root/
cd ../
ls
mkdir root
cd -
sudo make modules_install INSTALL_MOD_PATH=~/arm-stuff/kernel/root
 make modules_install INSTALL_MOD_PATH=~/arm-stuff/kernel/root
cd ..
ls
ls root/
ls -l root/
ls -l root/lib/
ls -l root/lib/modules/3.0.75/
ls -l root/lib/modules/3.0.75/kernel/
ls
cd ..
ls
cd images/
sl
cd root/
ls
ls -
ll
cd lib/
ls -l
sudo cp -r ../../../kernel/root/lib/modules .
ls -l
cd ../../../kernel/odroid/
more Makefile 
e Makefile 
cd -
ls
ls -l
sudo find modules -type d | xargs -I {} chmod -v a+rx {} \;
sudo find modules -type d | xargs -I {} chmod -v a+rx {}
sudo find modules -type d | sudo xargs -I {} chmod -v a+rx {}
ls -l modules/
ls -l modules/3.0.75/
ls -l modules/3.0.75/kernel/
ls -l modules/3.0.75/kernel/net/
ls -l modules/3.0.75/kernel/net/802/
sudo find modules -type f | sudo xargs -I {} chmod -v a+r {}
ls -l
ls 
cd ..
ls
cd -
cd ../../kernel/odroid/
sudo LANG=C chroot ~/arm-stuff/images/root/
mv ~/arm-stuff/images/root/uInitrd ~/arm-stuff/images/boot/
sudo mv ~/arm-stuff/images/root/uInitrd ~/arm-stuff/images/boot/
cp arch/arm/boot/zImage ~/arm-stuff/images/boot/
sudo cp arch/arm/boot/zImage ~/arm-stuff/images/boot/
ls -l arch/arm/boot/zImage ~/arm-stuff/images/boot/
ls
cd ..
ls
cd ../images/
ls
cd ..
ls
cd mkrootfs/
ls
emacs -nw boot.txt
sudo cp boot.txt ~/arm-stuff/images/boot/boot.txt
sudo mkimage -A arm -T script -C none -n "Boot.scr for odroid-x" -d ~/arm-stuff/images/boot/boot.txt ~/arm-stuff/images/boot/boot.scr
mkimage
which mkimage
sudo apt-get install mkimage
wget ftp://ftp.denx.de/pub/u-boot/u-boot-2013.04.tar.bz2
wget http://ftp.denx.de/pub/u-boot/u-boot-2013.04.tar.bz2
mv u-boot-2013.04.tar.bz2 ~/d/
pushd ~/d/
ls
tar xf u-boot-2013.04.tar.bz2 
bzcat u-boot-2013.04.tar.bz2 | tar xf -
bzcat u-boot-2013.04.tar.bz2 | tar xvf -
cd u-boot-2013.04/
ls
more MAKEALL 
./MAKEALL -l
./MAKEALL 
more MAKEALL 
./MAKEALL -a arm
ls
ls u-boot.lds 
ls -l u-boot.lds 
more boards.cfg 
sudo apt-get install u-boot-tools
popd
ls
sudo mkimage -A arm -T script -C none -n "Boot.scr for odroid-u2" -d ~/arm-stuff/images/boot/boot.txt ~/arm-stuff/images/boot/boot.scr
ls
cd ~/arm-stuff/images/
umount $bootp
umount $rootp
more ../mkrootfs/mkroot.sh 
ls
more mkpart.sh 
loopdevice=`losetup -f --show debian-wheezy-odroid.img`
device=`kpartx -va $loopdevice| sed -E 's/.*(loop[0-9])p.*/\1/g' | head -1`
device="/dev/mapper/${device}"
ls
sudo loopdevice=`losetup -f --show debian-wheezy-odroid.img`
 loopdevice=`losetup -f --show debian-wheezy-odroid.img`
 loopdevice=`sudo losetup -f --show debian-wheezy-odroid.img`
device=`kpartx -va $loopdevice| sed -E 's/.*(loop[0-9])p.*/\1/g' | head -1`
device=`sudo kpartx -va $loopdevice| sed -E 's/.*(loop[0-9])p.*/\1/g' | head -1`
device="/dev/mapper/${device}"
echo $device 
bootp=${device}p1
rootp=${device}p2
umount $rootp
echo $device 
device=/dev/mapper/loop1
bootp=${device}p1
rootp=${device}p2
umount $rootp
sudo umount $rootp
sudo umount $bootp
kpartx -dv $loopdevice
sudo kpartx -dv $loopdevice
ls -l /dev/mapper/
wget http://www.mdrjr.net/odroid/mirror/BSPs/Alpha4/unpacked/boot.tar.gz
tar zxpf boot.tar.gz 
ls
ls boot
cd boot/
ls
echo $loopdevice 
sh sd_fusing.sh /dev/loop1
cd ..
losetup -d $loopdevice
sudo losetup -d $loopdevice
sudo losetup -d /dev/loop1
sudo losetup -d /dev/loop1 
df -h
umount /dev/sdc
umount /dev/sdc1
umount /dev/sdc2
sudo umount /dev/sdc2
sudo losetup -d /dev/loop1 
df -g
df -h
ls
dd if=debian-wheezy-odroid.img of=/dev/sdc bs=1M
sudo dd if=debian-wheezy-odroid.img of=/dev/sdc bs=1M
eject /dev/sdc
sudo eject /dev/sdc
ls
ls boot
ls boot/sd_fusing.sh 
more boot/sd_fusing.sh 
cd ..
ls
cd -
mv boot u-boot
mkdir boot
ls
ls root/
cd ../kernel/
ls
ls root/
ls root/lib/modules/3.0.75/
ls odroid/
 odroid/vmlinux
ls
 odroid
ls odroid
ls
ls toolchains/
ls toolchains/arm-eabi-linaro-4.6.2/
ls
cd ..
sl
cd mkrootfs/
ls
more resolv.conf 
more interfaces 
ls
cd ..
ls
cd images/
ls
cd ../
ls
./emulate.sh 
e ./emulate.sh 
ls
e ./emulate.sh 
./emulate.sh 
cp kernel/odroid/arch/arm/boot/zImage .
./emulate.sh 
qemu-system-arm
qemu-system-arm --heko
qemu-system-arm --help
qemu-system-arm --cpu ?
./emulate.sh 
qemu-system-arm -M ? | grep vexpress-a9
./emulate.sh 
e ./emulate.sh 
./emulate.sh 
who
./emulate.sh 
