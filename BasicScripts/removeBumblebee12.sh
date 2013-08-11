#!/bin/bash
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "removing Bumblebee"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get purge nvidia*
sudo apt-get purge bbswitch-dkms bumblebee-nvidia
sudo apt-get --purge autoremove

