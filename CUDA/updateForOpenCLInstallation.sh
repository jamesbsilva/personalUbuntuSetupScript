#!/bin/bash
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Setup glut for CUDA compatibility"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-fast install build-essential  libxi-dev libxmu-dev freeglut3 freeglut3-dev

# Install the essentials to build the SDK examples
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "glut patch for x64 ubuntu. "
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

if [ "$(uname -m)" = "x86_64" ]; then
sudo ln -s /usr/lib/x86_64-linux-gnu/libglut.so /usr/lib/libglut.so
else
echo "32-bit system .Doing nothing for 32-bit. Havent updated for 32-bit "
fi

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "setup svn java for no particular cuda reason but useful"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-fast install libsvn-java
