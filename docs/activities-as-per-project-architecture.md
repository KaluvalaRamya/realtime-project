
## activities as per project architecture v1 
### List of activities for each area 
---
#### high level summary of how to implement the project end-to-end
- setup all pieces
- setup the linking/integration amoung the pieces 
- improve each process whereever possible
	
### setup all pieces
---
#### Lets start with the 10 non-container based applications 
- 22 repos on private github
	- 22 repos belong to 10 applications 
	- every repo has gitflow implemented 
		- When a PR is approved, the dev-branch or feature branch gets merged with dev branch
		- dev-branch has automated nightly build 
		- Almost every week, the dev-branch gets merge with the release branch and a build gets triggered
		- if the release is sucessful , then the release artifacts are pushed to nexus 
- There are about 50 jobs configured on Jenkins on these repos 
	- some days there are 15 to 20 jobs, other days, we have 5-10 jobs 
	- All Jenkins servers are standalone servers
	- we have primary jenkins and secondary jenkins server
	- On a weekly basis, we export all the jobs from one jenkins server and import into secondary
	- incase the primary fails , we try to use secondary 
		
- There are 10 jobs in AWX, these are jobs to deploy the application 
- then , there area about 5 jobs for monitoring activities 
- Rundeck is used to execute the scripts 
- QA is available on-prem. This is QALTS 
- Then QA-TEMP is created on they fly using terraform scripts in GCP and Azure 
	
#### Now lets setup stuff for the 15 container based applications 
- approximately 100 containers 
	- All are APIs 
	- each API is exposed as service 
	- all the services receive traffic using ingress rules. - Ingress contrller is maintained by another team. 
	- each of these service based APIs have 3 containers to 15 containers 
		- about 10 services have , 3 containers each 
		- then, 2 services have, 10 containers each 
		- then, 3 services have, 15 containers 
			
- repo structure 
	- one repo per API code
	- separate repo for configuration code 
	- all deployments happen through helmcharts 
		- helm charts are stored in gitlab 
	- Deployment to QA 
		- all containers are built when release is ready 
		- else, jobs are run to build single container only 
		- and the corresponding helm charts are built. 
		- once the both are ready, we run a gitlab job to deploy the new release of the helm chart to k8s cluster

- 
### setup the linking/integration amoung the pieces
---
### improve each process whereever possible
---
---
- give 22 names to 22 applications 
- create 22 private repos
	- each repo will have the name of the application 
	- create 4 branches in each application
		- dev-branch 
		- feature branch 
		- master branch 
		- release branch
- create 50 pipelines jobs in Jenkins 
	- 22 jobs on dev-branch (for nightly-builds) 
	- 22 jobs on release branch (for weekly builds)
	- 10 adhoc jobs that we trigger once in a while 
	

- setup nexus , integrate 30 jobs to nexus 
- setup s3 , integrate 20 jobs to s3 
- setup awx. setup 10 scripts that can deploy from nexus to environments
	- setup the environments that awx ansible will deploy to 
		- QA 	- 2 vagrant boxes with vagrant file (both have tomcat & nginx )
		- UAT 	- 2 vagrant boxes with vagrant file 
		- LT 	- 2 vagrant boxes with vagrant file 
		- PROD 	- 25 ec2 instances ( setup a terraform repo to create the PROD env) 
					- setup a job on terraform cloud to launch prod 3tier arch 
- Integrate all vagrant VMs with the zabbix 
		- install zabbix and setup scripts for integration 
		- install Nagios set see some alerts 

- setup rundeck and setup some jobs 		
## container apps 
- 15 repos for 15 applications
	- if the application is a 3 containers app, then there are 3 different folders in the repo 
	- each folder has a Dockerfile, when the build runs, the Dockerfile builds a new image with a new tag 
	- It also builds helm chart and gitlab cicd deploys using helm chart 
	- continuous deployment is enabled in gitlab CICD, therefore they are deployed to k8s or ecs cluster 
		- setup gitlab , setup CICD pipelines on these repos 
		- create k3s clusters,Microk8s cluster and automatically deploy the apps 

- give 100 containers 100 names 
- install sensu go and see all the metrix of the containers 
- install prometheus and grafana and see the metrix of containers 
- install newrelic and see the metrix of containers 


### Regular Tasks :
- daily evening, feature branches merge with dev-branches 
- nightly build runs in 4PM every evening 
- a new commit to the repo triggers image build with a new tag.
- cronjob based tasks to take backups 