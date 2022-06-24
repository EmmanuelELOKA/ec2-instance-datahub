#!/bin/bash
sudo yum update
sudo yum install python3 -y
sudo yum install docker -y
sudo yum install docker.io -y
sudo curl -L https://github.com/docker/compose/releases/latest/download/docker-compose-$(uname -s)-$(uname -m)
-o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose
docker-compose version
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -a -G docker ec2-user
sudo chkconfig docker on
wget -O jq https://github.com/stedolan/jq/releases/download/jq-1.6/jq-linux64
sudo chmod +x ./jq
cp jq /usr/bin
echo "success"
