#!/bin/bash
#
#		personal script to setup laptop ubuntu 14.10
#
#		jbsilva
#
sudo update-manager
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Basic (1/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
cd BasicScripts

chmod +x *.sh *.py
#sudo ./fixesForN550JV-Ubuntu1310.sh
sudo ./installBasics.sh
sudo apt-get install openjdk-8-jdk openjdk-8-jre

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo " remove overlay scroll / update mtp (2/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh fixUbuntuSystemProgError.sh
sudo gsettings set com.canonical.desktop.interface scrollbar-mode normal
sudo apt-get remove overlay-scrollbar
#sudo add-apt-repository ppa:langdalepl/gvfs-mtp
#sudo apt-get update

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "prep Matlab and dropbox and get Nautilus backspace back (3/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo ./fixErrorMatlab1404.sh
sudo ./prepDropbox.sh
#sudo ./fixFirefox.py /opt/Adobe/Reader9/Browser/intellinux/nppdf.so
sudo sh removeAmazonAds.sh
echo '(gtk_accel_path "<Actions>/ShellActions/Up" "BackSpace")' >> ~/.config/nautilus/accels


echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install NVIDIA Drivers for GT 750M and Bumblebee (5/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
#sudo ./installNVIDIAGT750M-1404.sh
sudo ./installNVIDIAGT750AndBumblee1410.sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "install more libs (6/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo ./installClibs1404.sh
sudo ./installPythonDev.sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "install weather widget,Chrome, adobe reader (7/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh setupMyWeather.sh
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install libxss1 libappindicator1 libindicator7
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
sudo apt-get install pepperflashplugin-nonfree 
sudo ./installPipelight.sh
#sh getAdobeReader.sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "install grub customizer (9/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo sh setupGrubCustomizer.sh

cd ..

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Cairo-Dock (12/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get install cairo-dock cairo-dock-plug-ins

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Fixes and extras"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
cd BasicScripts
sudo ./install1310extras.sh 
sudo ./fixShutdown1310.sh
sudo ./amazonPrimeVidFix.sh
sudo ./fixPintaDesktop.sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Done!!"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

