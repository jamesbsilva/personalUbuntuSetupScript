#!/bin/bash
#
#		personal script to setup laptop ubuntu 13.10
#
#		jbsilva
#
sudo update-manager
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Basic (1/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
cd BasicScripts

chmod +x *.sh *.py
sudo ./fixesForN550JV-Ubuntu1310.sh
sudo ./installBasics.sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo " remove overlay scroll / update mtp (2/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
#sh fixUbuntuSystemProgError.sh
sudo gsettings set com.canonical.desktop.interface scrollbar-mode normal
sudo apt-get remove overlay-scrollbar
#sudo add-apt-repository ppa:langdalepl/gvfs-mtp
#sudo apt-get update

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "prep Matlab and dropbox and get Nautilus backspace back (3/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo ./fixErrorMatlab13.10.sh
sudo ./prepDropbox.sh
#sudo ./fixFirefox.py /opt/Adobe/Reader9/Browser/intellinux/nppdf.so
sudo sh removeAmazonAds.sh
echo '(gtk_accel_path "<Actions>/ShellActions/Up" "BackSpace")' >> ~/.config/nautilus/accels


echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install NVIDIA Drivers for GT 750M (5/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo ./installNVIDIAGT750M.sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Bumblebee (5/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo ./getBumblebee1310.sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "install more libs (6/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo ./installClibs.sh
#sh installMatplotLib.sh
#sh installPythonLibs.sh
sudo ./installPythonDev.sh
sudo ./installPipelight.sh
#sh installHandbrake.sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "install weather widget,Chrome, adobe reader (7/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh setupMyWeather.sh
#sh getChrome.sh
sudo apt-fast install chromium-browser
#sh getAdobeReader.sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "install grub customizer (9/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh setupGrubCustomizer.sh

cd ..
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install CUDA Prep (10/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
cd CUDA
sh updateForOpenCLInstallation.sh
cd ..

#echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
#echo "Install IntelCL (11/13)"
#echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
#cd Intel\ CL
#sh installIntelCL.sh
#cd ..

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Cairo-Dock (12/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-fast install cairo-dock cairo-dock-plug-ins

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Fixes and extras"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
cd BasicScripts
sudo ./install1310extras.sh 
sudo ./fixShutdown1310.sh
sudo ./amazonPrimeVidFix.sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Done!!"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

