cd ../Packages
sudo apt-get install build-essential
sudo apt-get install libssl-dev macchanger
sudo apt-get install libpcap-dev sqlite3 libsqlite3-dev libpcap0.8-dev
tar -xvf aircrack-ng-1.1.tar.gz
cd aircrack-ng-1.1
make 
make install
airodump-ng-oui-update
cd ../
rm -rf aircrack-ng-1.1/
tar -xvf reaver-1.4.tar.gz
cd reaver-1.4/src/
./configure
make
make install 
cd ../../
rm -rf reaver-1.4/
sudo dpkg -i Fern-Wifi-Cracker_1.6_all.deb
sudo apt-get -f install
cd ../BasicScripts
