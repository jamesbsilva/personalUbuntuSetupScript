#!/bin/bash
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Restricted Extras"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get install ubuntu-restricted-extras

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Version Control , Image Packages, IDEs, Java 7"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

sudo apt-get install synaptic gnuplot vsftpd openssh-client openssh-server vlc emacs pinta kile imagemagick inkscape gimp eclipse eclipse-cdt eclipse-jdt git subversion meld openjdk-7-jdk scrub screen pdftk

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Latex Packages"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get install texlive-latex-base texlive-latex3 texlive-latex-recommended texlive-latex-extra 

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Remove Java 6"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

sudo apt-get remove openjdk-6-jdk


