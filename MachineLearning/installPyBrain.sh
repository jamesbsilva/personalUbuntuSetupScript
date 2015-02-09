#!/bin/bash
# get from git
mkdir temp
cd temp
git clone git://github.com/lisa-lab/pylearn2.git
sudo mv pylearn2/ /usr/local/
cd ../
rm -rf temp

# build
cd /usr/local/pylearn2/
sudo python setup.py develop
