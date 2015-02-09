sudo apt-get install libxml2:i386 lib32stdc++6 gdebi
sudo dpkg -i --force-architecture ../Packages/AdbeRdr9.4-1_i386linux_enu.deb
sudo apt-get -f install
sudo cp AdobeReader.desktop /usr/share/applications/AdobeReader.desktop

