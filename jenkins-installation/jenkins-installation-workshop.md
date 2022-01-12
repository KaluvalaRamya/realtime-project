<!-- Headings -->
# To Install Jenkins
## Step-1 : Prerequisites
* *Set up Ubuntu server and run the following commands for installing jenkins*
## Step-2 : Setup Jenkins Server
<!-- Blockquote -->
<!-- italics -->
* *Clone the repository from gitlab*
```
git clone https://gitlab.com/jopgrp1/realtime-project1.git
```
* *change the directory and give full permissions to owner and execute the script of installation of java and jenkins*
```
cd realtime-project1/jenkins-installation && chmod 755 install_java8.sh && ./install_java8.sh
```
* *once jenkins is installed, launch the Jenkins UI and complete the installation*
* *Login to Jenkins*
## Step-3 : Install the Jenkins Plugins
### *Install the plugins in jenkins by navigating to Manage Jenkins -> Manage Plugins -> Available*
#### *Search for the plugins*
* *slack Notification Plugin*
* *nexus artifact uploader*
* *nexus platform*
* *git parameter plugin*
* *pipeline utility steps plugin*
* *Artifactory*
* *Maven Release Plug-in*
* *Pipeline Maven Integration Plugin*
* *disk-usage plugin*
* *Dashboard View*
* *Click*  Install without restart
