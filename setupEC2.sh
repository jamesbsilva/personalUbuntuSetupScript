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

sh installBasicsEC2.sh
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Fix Ubuntu12.04 system problem error"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh fixUbuntuSystemProgError.sh
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "install more libs"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sh installClibs.sh


