#!/bin/bash

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Setup nvidia-current so for cuda"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo ln -s /usr/lib/nvidia-331/libcuda.so.1 /usr/lib/libcuda.so.1
sudo ln -s /usr/lib/nvidia-331/libcuda.so /usr/lib/libcuda.so
sudo ln -s /usr/lib/nvidia-331/libOpenCL.so /usr/lib/libOpenCL.so
sudo ln -s /usr/lib/nvidia-331/libOpenCL.so.1 /usr/lib/libOpenCL.so.1
sudo echo "/usr/local/cuda/lib64/" >> /etc/ld.so.conf.d/nvidia_settings.conf 
sudo echo "/usr/local/cuda/lib/" >> /etc/ld.so.conf.d/nvidia_settings.conf
sudo ldconfig

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Setup nvidia-current so for cuda"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

if grep -Fxq "~/.bashrc" "PATH=$PATH:/usr/local/cuda/bin/"
then
    echo "#     CUDA Path Setup" >> ~/.bashrc
    echo "PATH=$PATH:/usr/local/cuda/bin/" >> ~/.bashrc
fi

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Setup nvidia icd from nvidia-current and link OpenCL.so"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo ln -s /usr/share/nvidia-331/nvidia.icd /etc/OpenCL/vendors/nvidia.icd 
sudo ln -sf /usr/lib/nvidia-331/libOpenCL.so /usr/lib/
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Setup openCL C++ bindings"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
#sudo cp cl12.hpp /usr/local/cuda/include/CL/cl.hpp
#sudo chmod 644 /usr/local/cuda/include/CL/cl.hpp
#sudo cp cl12.hpp /usr/local/cuda-6.0/include/CL/cl.hpp
#sudo chmod 644 /usr/local/cuda-6.0/include/CL/cl.hpp
#sudo ln -sf /usr/local/cuda-6.0/include/CL/cl.hpp /usr/include/CL/cl.hpp

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Setup some glew"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo ln -sv /usr/local/cuda/extras/CUPTI/include/GL/glew.h /usr/include/GL/
sudo ln -sv /usr/local/cuda/extras/CUPTI/include/GL/wglew.h /usr/include/GL/



