#!/bin/bash
#
#		personal script to setup ec2 instances 
#	which installs common personal use libraries and fixes
#
#		jbsilva
#
sudo update-manager
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Basic"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
cd BasicScripts

sh installBasics.sh
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Fix Ubuntu12.04 system problem error"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh fixUbuntuSystemProgError.sh
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "install more libs"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh installClibs.sh
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "install weather widget,Chrome, adobe reader"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh getChrome.sh
sh getAdobeReader.sh


