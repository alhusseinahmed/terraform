#! /bin/bash
sudo yum update -y
sudo service docker start
sudo service docker status
sudo groupadd docker
sudo usermod -a -G docker ec2-user
newgrp docker
docker pull alhusseinahmed/go-webapp-sample
docker run -d -p 8080:8080 alhusseinahmed/go-webapp-sample