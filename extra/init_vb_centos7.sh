#!/bin/bash

yum update -y
yum install -y gcc kernel-devel make bzip2

yum install -y nano wget curl

## VB Guest Addons
mount /dev/cdrom /mnt

/mnt/VBoxLinuxAdditions.run

## Docker
yum install -y docker

## Docker Compose
curl -L https://github.com/docker/compose/releases/download/1.4.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

docker-compose --version

##
sudo firewall-cmd --zone=public --add-port=443/udp --permanent
sudo firewall-cmd --zone=public --add-port=8080/tcp --permanent
sudo firewall-cmd --zone=public --add-port=8181/tcp --permanent
sudo firewall-cmd --reload 

## Start Docker
sudo service docker start

# Enlever la secu sur les fichiers depuis unLXC
su -c "setenforce 0"

echo "Intialisation done"

