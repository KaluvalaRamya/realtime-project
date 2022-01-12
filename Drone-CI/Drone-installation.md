### **Pre-requisites** 
_ubuntu-18.0.4, Docker:20.10.12 ,Github ,Drone-CI:2.6 ,vscode_

### **Installation of Drone-CI**

```
git clone https://gitlab.com/jopgrp1/realtime-project1.git && cd /realtime-project1/Drone-CI
``` 
```
sudo chmod 755 pull-drone-dockerimage.sh && sudo ./pull-drone-dockerimage.sh
```
**<p> Login to Github and navigate to register a [new OAuth application ](https://github.com/settings/applications/new) .Provide any name of your choice to the OAuth application and Replace Homepage URL as http://<_IP_> and Authorization callback URL as http://<_IP_>/login. Be sure to replace <_IP_> with your actual  IP address or any domain name pointed towards your  instance and register you will get  `client id` </span>and `client secret` and save it</p>**


### **<p>Create a new environment file to store the Drone configuration and make sure to replace client id, client secret and ip values with the actual ones and save the file</p>**

```
sudo nano drone.env
```

### **<p>Start Drone by running the following command.</p>**

```
sudo chmod 755 droneci-docker-runner.sh && sudo ./droneci-docker-runner.sh
``` 

### **<p> That's it. To open the Drone web UI, visit http://<_IP-of-your-machine_>. in your browser and log in using your Github account.</P>**

