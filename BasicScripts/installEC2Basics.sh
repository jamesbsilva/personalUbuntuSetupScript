#!/bin/bash
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Restricted Extras"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get install ubuntu-restricted-extras

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Version Control , Image Packages, IDEs, Java 7"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

sudo apt-get install synaptic gnuplot vsftpd openssh-client openssh-server vlc emacs imagemagick git subversion meld openjdk-7-jdk screen pdftk

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Remove Java 6"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

sudo apt-get remove openjdk-6-jdk


