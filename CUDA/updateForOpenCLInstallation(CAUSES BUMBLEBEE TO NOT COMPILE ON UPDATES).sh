#!/bin/bash
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Setup glut and gcc 4 for CUDA compatibility"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get install build-essential gcc-4.4 g++-4.4 libxi-dev libxmu-dev freeglut3 freeglut3-dev

# Install the essentials to build the SDK examples
sudo apt-get install gcc-4.4 g++-4.4 build-essential
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "glut patch for x64 ubuntu. "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

if [ "$(uname -m)" = "x86_64" ]; then
sudo ln -s /usr/lib/x86_64-linux-gnu/libglut.so /usr/lib/libglut.so
else
echo "32-bit system .Doing nothing for 32-bit. Havent updated for 32-bit "
fi

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "setup gcc4 as default for CUDA compatibility"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.6 40 --slave /usr/bin/g++ g++ /usr/bin/g++-4.6
sudo update-alternatives --install /usr/bin/gcc gcc /usr/bin/gcc-4.4 60 --slave /usr/bin/g++ g++ /usr/bin/g++-4.4

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "setup svn java for no particular cuda reason but useful"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get install libsvn-java
