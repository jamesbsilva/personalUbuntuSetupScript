#!/bin/bash
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Need libnuma1 for icd detection in jocl"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get install libnuma1
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Fix for icd in intel"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo echo "libintelocl.so" > /etc/OpenCL/vendors/intelocl64.icd

sudo echo "/usr/lib64/OpenCL/vendors/intel/" >> /etc/ld.so.conf.d/intelOpenCL.conf
sudo ldconfig
