#!/bin/bash

yum update -y
yum install -y gcc kernel-devel make bzip2

yum install -y nano wget curl

## VB Guest Addons
mount /dev/cdrom /mnt

/mnt/VBoxLinuxAdditions.run

## Install Docker
yum install -y docker
## Docker to start at boot
sudo systemctl enable docker

## Docker Compose
curl -L https://github.com/docker/compose/releases/download/1.4.2/docker-compose-`uname -s`-`uname -m` > /usr/local/bin/docker-compose

chmod +x /usr/local/bin/docker-compose

docker-compose --version

##
sudo firewall-cmd --zone=public --add-port=443/udp --permanent
sudo firewall-cmd --zone=public --add-port=8080/tcp --permanent
sudo firewall-cmd --zone=public --add-port=8081/tcp --permanent
sudo firewall-cmd --reload 

# Enlever la secu sur les fichiers depuis unLXC
# /!\ Necesiste un reboot
sed -n 's/^SELINUX.*=.*/SELINUX=disabled/' /etc/selinux/config

## Start Docker
sudo service docker start

echo "Intialisation done"

