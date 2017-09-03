#!/bin/sh
#

echo "Installing..."
echo " "
echo "Updating..."
sudo apt-get update
echo " "
echo "Installing libcurl4"
sudo apt-get install libcurl4-openssl-dev git
echo " "
echo "Installing build-essential"
sudo apt-get install build-essential
echo " "
echo "Configure CpuMiner"
cd cpuminer
./autogen.sh
CFLAGS="-march=native" ./configure
make
make install

echo " "
echo "** Configuring CpuMiner done."
echo "** for start mining run command : minerd -o stratum+tcp://ltc.pool.minergate.com:3336 -u YOUREMAIL -p x"
echo " "
echo "Script by Gh0st32 - Alosia Team"
