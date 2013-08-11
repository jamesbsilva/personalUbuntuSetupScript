#!/bin/bash
#
#		personal script to setup laptop ubuntu 12.04
#
#		jbsilva
#
sudo update-manager
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Basic (1/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
cd BasicScripts

sh installBasics.sh
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Fix Ubuntu12.04 system problem error (2/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh fixUbuntuSystemProgError.sh
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "prep Matlab and dropbox (3/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh fixErrorMatlab12.04.sh
sh prepDropbox.sh
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Bumblebee (5/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh getBumblebee12.sh
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "install more libs (6/13)"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh installClibs.sh
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

