#!/usr/bin/env bash
###Set up the enviroment
set -x 

apt-get remove docker docker-engine docker.io containerd runc

apt-get update

apt-upgrade -y 

apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    tree \
    software-properties-common -y


###Install docker
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -


add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

###Install docker-compose
apt-get update
apt-get install docker-ce docker-ce-cli containerd.io docker-compose -y

###Set up vagrat user to be able to run docker commnads
usermod -aG docker vagrant

systemctl enable docker
systemctl start docker

###Run docker compose on the configration file
docker-compose   -f /vagrant/docker-compose/docker-compose.yml up -d