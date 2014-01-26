
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "untar package"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
tar -xvf intel_ocl_sdk_1.5_x64.tgz

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install rpm and alien to be able to install in Ubuntu"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get install rpm alien
fakeroot alien --to-deb intel_ocl_sdk_1.5_x64.rpm
sudo dpkg -i intel-ocl-sdk_1.5-15294_amd64.deb
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
sudo rm intel_ocl_sdk_1.5_x64.rpm intel-ocl-sdk_1.5-15294_amd64.deb

