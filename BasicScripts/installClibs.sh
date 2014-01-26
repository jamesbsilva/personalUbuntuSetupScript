#!/bin/bash
sudo apt-fast install build-essential
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install OpenCV"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

sudo apt-fast install libavformat-dev ffmpeg

sudo apt-fast install libopencv-dev
sudo apt-fast install libcv2.1 libcvaux2.1 libhighgui2.1 python-opencv opencv-doc libcv-dev libcvaux-dev libhighgui-dev
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install WxWidgets, BOOST"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-fast install subversion git libwxgtk2.8-dev libwxgtk2.8 libboost-all-dev miniupnpc

