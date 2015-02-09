#!/bin/bash
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Apt-Fast"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
#sudo sh installAptFast.sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Restricted Extras"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get install ubuntu-restricted-extras

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Version Control , Image Packages, IDEs, Java 7"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

sudo apt-get install synaptic gnuplot vsftpd openssh-client openssh-server vlc emacs pinta gummi imagemagick inkscape gimp eclipse eclipse-cdt eclipse-jdt git subversion meld openjdk-7-jdk scrub screen pdftk network-manager-vpnc libnet-ssleay-perl libio-socket-ssl-perl sendemail python-bs4 gksu zathura
sudo apt-get install sqlite3

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Latex Packages"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get install biber texlive-full

sudo apt-get install texstudio

