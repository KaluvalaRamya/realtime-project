sudo apt update -y 
sudo apt install software-properties-common -y
sudo apt-add-repository --yes --update ppa:ansible/ansible-2.9
sudo apt install ansible -y
sudo ansible --version
