#!/bin/bash
#auther hercelle
#date oct-26-2022
# decription to installs docker on centos7

sudo yum remove docker \
                  docker-client \
                  docker-client-latest \
                  docker-common \
                  docker-latest \
                  docker-latest-logrotate \
                  docker-logrotate \
                  docker-engine
 sudo yum install -y yum-utils
sudo yum-config-manager \
    --add-repo \
    https://download.docker.com/linux/centos/docker-ce.repo                 
sudo yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin
sudo yum install docker-ce-18.09.1 docker-ce-cli-18.09.1 containerd.io docker-compose-plugin
sudo systemctl start docker
sudo docker run hello-world
echo "installation sucessful"