#update the repositories
sudo apt update -y
#install apache httpd server. Current version is apache 2.4 its called apache2
sudo apt install apache2 -y
#check apache version
apache2 -v
#enable auto start when system starts
sudo systemctl enable apache2
#restart apache server
sudo systemctl restart apache2
