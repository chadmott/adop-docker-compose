#!/bin/bash
sudo apt-get update -y && sudo apt-get upgrade -y 
sudo apt-get install apt-transport-https ca-certificates git nano -y
sudo apt-key adv \
               --keyserver hkp://ha.pool.sks-keyservers.net:80 \
               --recv-keys 58118E89F3A912897C070ADBF76221572C52609D

echo "deb https://apt.dockerproject.org/repo ubuntu-xenial main" | sudo tee /etc/apt/sources.list.d/docker.list
sudo apt-get update -y && sudo apt-get install docker-engine docker-compose -y
sudo gpasswd -a ${USER} docker
sudo su
curl -L https://github.com/docker/machine/releases/download/v0.8.2/docker-machine-`uname -s`-`uname -m` >/usr/local/bin/docker-machine && \
chmod +x /usr/local/bin/docker-machine
exit

