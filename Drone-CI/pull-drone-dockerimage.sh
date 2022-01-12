#!/bin/bash
sudo apt update && sudo apt upgrade -y
curl -L https://get.docker.com | bash
docker --version
sudo docker pull drone/drone:2.6
