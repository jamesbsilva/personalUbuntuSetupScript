#!/bin/bash
wget http://python-distribute.org/distribute_setup.py
sudo python distribute_setup.py
sudo easy_install pip
sudo apt-get install python-dev build-essential python-tk tk-dev libpng12-dev
sudo pip install numpy
sudo pip install matplotlib==1.2.1
