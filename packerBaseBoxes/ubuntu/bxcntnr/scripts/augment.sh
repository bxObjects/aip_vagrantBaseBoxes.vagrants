#!/bin/sh -eux

echo "Adding  Desktop to Mini --Be Patient -- it can be loooong"    
apt-get update
apt-get -y install ubuntu-desktop        
systemctl set-default graphical.target	

echo "Adding BISOS to Distro -- Be Patient -- it can can be loooong"    
apt-get -y install python3-pip
pip3 install --upgrade bisos.provision  
/usr/local/bin/provisionBisos.sh -h -v -n showRun -i sysBasePlatform

