### Mini project 
#### setup the following mini environment in your GCP and Azure Account . 
- setup a VM on your GCP and install Jenkins server (VM1) - GCP 
	- post the Jenkins interface screenshot to slack 
	- Nexus server (integrate jenkins with nexus if works) - Azure 
		- post the nexus interface screenshot to slack 
		- setup the freestyle job and integrate it with slack 
		- then stop the Nexus server. 
	- Install Ansible on the Jenkins server itself
		- post the output "ansible --version" to slack 
	- Install and setup http server VM1, on port 7777
		- post the default page of the apache on 7777 port to slack 
	- setup a jenkins job
		- that runs every 10 minutes
			- post the cron entry to slack
		- and run an ansible-playbook which restarts a http server running on the Jenkins server 
			- post the screenshot of Jenkins console output of job to slack 
	- setup a jenkins job that can be run manually , 
		- that runs terraform playbook to launch an ec2 instance
		- run the job manually and post the screenshot of log to slack 
	- use zabbix to monitor jenkins server/ec2 instance
		- post the screenshots of the jenkins server & ec2 instance 
		
Note: Assume values whereever necessary. 
	  use the minimum possible vCPU and memory on AZURE/AWS/GCP 