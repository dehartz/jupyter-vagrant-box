#!/bin/bash

cd /home/vagrant/data

sudo apt-get install unzip

wget -q https://download.java.net/openjdk/jdk9/ri/openjdk-9+181_linux-x64_ri.zip

sudo mkdir /usr/lib/jvm

sudo unzip openjdk-9+181_linux-x64_ri.zip -d /usr/lib/jvm

rm -f openjdk-9+181_linux-x64_ri.zip

wget -q https://github.com/SpencerPark/IJava/releases/download/v1.3.0/ijava-1.3.0.zip

unzip -o ijava-1.3.0.zip

rm -f ijava-1.3.0.zip

python install.py --sys-prefix

rm -rf './java/'
rm -f './install.py'