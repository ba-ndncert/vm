#!/bin/bash

sudo apt-get update

# Install ndn-cxx
cd ~
sudo apt install build-essential pkg-config python3-minimal libboost-all-dev libssl-dev libsqlite3-dev -y
git clone https://github.com/named-data/ndn-cxx.git
cd ./ndn-cxx
./waf configure --with-examples
./waf
sudo ./waf install
sudo ldconfig

# Install NFD
cd ~
git clone --recursive https://github.com/named-data/NFD.git
sudo apt install libpcap-dev libsystemd-dev -y
cd ./NFD
./waf configure
./waf
sudo ./waf install
# Configure NFD
sudo cp /usr/local/etc/ndn/nfd.conf.sample /usr/local/etc/ndn/nfd.conf

# Install ndncert
cd ~ 
git clone https://github.com/named-data/ndncert.git
cd ./ndncert
./waf configure
./waf
sudo ./waf install

# Download code repository
cd ~
git clone https://github.com/ba-ndncert/code.git
