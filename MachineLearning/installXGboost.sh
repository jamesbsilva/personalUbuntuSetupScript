#!/bin/bash
# get and build
mkdir temp
cd temp
git clone https://github.com/tqchen/xgboost.git
sudo mv xgboost/ /usr/local/
sudo /usr/local/xgboost/build.sh 
# push to bin
sudo cp ../xgboostFixForBin.py /usr/lib/python2.7/dist-packages/xgboost.py
sudo cp ../xgboostFixForBin.py /usr/local/xgboost/wrapper/xgboost.py
sudo cp /usr/local/xgboost/xgboost /usr/local/bin/

