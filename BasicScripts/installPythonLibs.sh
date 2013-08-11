#!/bin/bash
sudo apt-get install python python-setuptools 
sudo apt-get install python-bs4
cd ../tweetstream-1.1.1
sudo python setup.py install
sudo chown -R $USER  /usr/local/lib/python2.7/dist-packages/
