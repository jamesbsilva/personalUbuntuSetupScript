#!/bin/bash
#
# bluetooth fixes
#
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "bluetooth fixes"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sed -i 's/EnableGatt = false/EnableGatt = true/g' /etc/bluetooth/main.conf 
sudo cp ath9k.conf /etc/modprobe.d/ath9k.conf 
#
# acpi fixes
#
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "acpi fixes"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo apt-get install acpi
sudo sed -i 's/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash"/GRUB_CMDLINE_LINUX_DEFAULT="quiet splash acpi_osi="/g' /etc/default/grub
sudo update-grub
