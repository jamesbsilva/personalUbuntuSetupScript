#!/bin/bash
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Restricted Extras"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-fast install ubuntu-restricted-extras

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Version Control , Image Packages, IDEs, Java 7"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

sudo apt-fast install gnuplot vsftpd openssh-client openssh-server emacs eclipse-jdt git subversion meld openjdk-7-jdk scrub screen 

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Remove Java 6"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-fast remove openjdk-6-jdk



