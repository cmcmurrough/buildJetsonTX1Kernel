#!/bin/bash
apt-add-repository universe
apt-get update
apt-get install libqt4-dev pkg-config -y
cd /usr/src
wget http://developer.download.nvidia.com/embedded/L4T/r24_Release_v2.1/BSP/sources_r24.2.1.tbz2
tar -xvf sources_r24.2.1.tbz2 sources/kernel_src.tbz2
tar -xvf sources/kernel_src.tbz2
cd kernel
zcat /proc/config.gz > .config
make xconfig

