# Setup Docker Repository
# additional packages
sudo apt-get install apt-transport-https ca-certificates curl gnupg-agent software-properties-common -y
# add docker gpg key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# add to repository list
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" -y
#Install Docker Community Edition
sudo apt-get update -y
#List the versions available in your rep
apt-cache madison docker-ce
# Install a specific version using the version string
sudo apt-get install docker-ce=5:20.10.0~3-0~ubuntu-bionic docker-ce-cli=5:20.10.0~3-0~ubuntu-bionic containerd.io -y
sudo systemctl enable docker
#Validate Install
sudo docker version
# set latest version in variable
cversion="1.24.1"
# download
sudo curl -o /usr/local/bin/docker-compose -L "https://github.com/docker/compose/releases/download/$cversion/docker-compose-$(uname -s)-$(uname -m)"
# make executable
sudo chmod +x /usr/local/bin/docker-compose
# check version
docker-compose -v
#install git
sudo apt-get install git
