#!/bin/bash
#
#		personal script to setup laptop ubuntu 12.10
#
#		jbsilva
#
sudo update-manager
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Basic (1/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
cd BasicScripts

chmod +x *
sh installBasics.sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Fix Ubuntu12.04 system problem error / remove overlay scroll / update mtp (2/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh fixUbuntuSystemProgError.sh
sudo gsettings set com.canonical.desktop.interface scrollbar-mode normal
sudo apt-get remove overlay-scrollbar
sudo add-apt-repository ppa:langdalepl/gvfs-mtp
sudo apt-get update

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "prep Matlab and dropbox and fix firefox (3/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh fixErrorMatlab12.04.sh
sh prepDropbox.sh
sudo ./fixFirefox.py /opt/Adobe/Reader9/Browser/intellinux/nppdf.so
sudo sh removeAmazonAds.sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Bumblebee (5/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh getBumblebee1210.sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "install more libs (6/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh installClibs.sh
sh installMatplotLib.sh
sh installPythonLibs.sh

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "install weather widget,Chrome, adobe reader (7/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh setupMyWeather.sh
sh getChrome.sh
sh getAdobeReader.sh

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
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install IntelCL (11/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
cd Intel\ CL

sh installIntelCL.sh

cd ..
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Cairo-Dock (12/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get install cairo-dock cairo-dock-plug-ins

echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Done!!"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

