#!/bin/bash
sudo apt-get install build-essential libavformat-dev
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install OpenCV"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get install libopencv-dev
sudo apt-get install libcv2.4 libcvaux2.4 libhighgui2.4 python-opencv opencv-doc libcv-dev libcvaux-dev libhighgui-dev
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install WxWidgets, BOOST"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get install subversion git libwxgtk2.8-dev libwxgtk2.8 libboost-all-dev miniupnpc

