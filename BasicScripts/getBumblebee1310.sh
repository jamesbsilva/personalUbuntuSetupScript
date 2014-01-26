#!/bin/bash
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Install Bumblebee"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
sudo add-apt-repository ppa:bumblebee/stable
sudo apt-fast update 
sudo apt-fast install bumblebee bumblebee-nvidia primus linux-headers-generic
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "Alias Nvidia-Settings"
echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
echo "alias nvidia-settings='optirun nvidia-settings -c :8'" >> ~/.bashrc

