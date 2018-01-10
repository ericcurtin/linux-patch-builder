#!/bin/bash

git clone --depth 1 git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git
cd linux
make defconfig
make -j$(grep "^core id" /proc/cpuinfo | sort -u | wc -l) bzImage
make modules
sudo make modules_install


