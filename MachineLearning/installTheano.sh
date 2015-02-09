#!/bin/bash
# get clBLAS and clFFT
wget https://github.com/clMathLibraries/clBLAS/releases/download/v2.2/clBLAS-2.2.0-Linux-x64.tar.gz
wget https://github.com/clMathLibraries/clFFT/releases/download/v2.2/clFFT-2.2.0-Linux-x64.tar.gz
mkdir temp
mv clFFT-2.2.0-Linux-x64.tar.gz temp/
mv clBLAS-2.2.0-Linux-x64.tar.gz temp/
cd temp
git clone https://github.com/Theano/libgpuarray.git
tar -xvf clBLAS-2.2.0-Linux-x64.tar.gz
tar -xvf clFFT-2.2.0-Linux-x64.tar.gz  
# push clBLAS
cd clBLAS-2.2.0-Linux-x64/lib64
sudo cp * /usr/local/lib/
cd ../include/
sudo cp * /usr/local/include/
cd ../../
# push clFFT
cd clFFT-2.2.0-Linux-x64/lib64
sudo cp * /usr/local/lib/
cd ../include/
sudo cp * /usr/local/include/
cd ../../
# patch libgpuarray
cp ../libgpuarray/CMakeListsPthreadfix.txt libgpuarray/CMakeLists.txt
# build libgpuarray
cd libgpuarray/src/
optirun cmake .. -DCMAKE_BUILD_TYPE=Release -DCLBLAS_LIBRARIES=/usr/lib/libclBLAS.so
optirun make
optirun make install
# build pygpu
cd ../
sudo python setup.py build
sudo python setup.py install
# install theano finally
sudo pip install -U theano
cd ../../
# clean
rm -rf temp

# Enable GPU for theano
echo '[global]
floatX = float32
device = gpu0

[nvcc]
fastmath = True' > ~/.theanorc



