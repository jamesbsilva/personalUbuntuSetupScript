#!/bin/bash
# get from git
mkdir temp
cd temp
git clone https://github.com/JohnLangford/vowpal_wabbit.git
sudo mv vowpal_wabbit/ /usr/local/
cd ../
rm -rf temp
# push to bin
cd /usr/local/vowpal_wabbit/
sudo make vw
cd vowpalwabbit/
sudo cp vw /usr/local/bin/
cd ../utl/
sudo cp * /usr/local/bin/
sudo rm /usr/local/bin/vw-validate.html
