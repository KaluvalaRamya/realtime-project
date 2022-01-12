## realtime-project1 Architecture v1
### 1. 10 non container based applications 
- java,php,.NET 
- CI, but no CD 
	- github for coderepo
	- 7 are running their CI on Jenkins 
	- 3 apps running CI on circleCI (cloudbased)
- CD is not implemented 
	- Ansible scripts or AWX used for deployment 
	- QA,SIT,LT & Prod 
	- non-prod is on-prem 
	- prod is on aws
    	- 3 tier architecture 
		- initially created using cloudformation, 3 years before (about 5 templates to create the environments)
		- now moving some of them to terraform 
	- .NET is also on AWS
			
- Other activities : 
	- support to dev environments 
	- self-service environments using QUALI
	- Monitoring using Nagios,Zabbix,Cloudwatch 
	- setup non-prod environment on on-prem servers using vagrant 
	- sometimes we setup the environment quickly on aws using cloudformation templates or terraform 

---
### 2. 15 container based apps 
- isio is handled by another team 
- containers are deployed to k8s or docker-compose 
	
#### 2.1    6 APPS on gitlab 
- CI for non-prod , manual CD for prod 
	- gitlab CI -> gitlab container registry -> gitlab CD -> deploy to k8s (EKS,GKE,AKS,k3s)
	
	
#### 2.2    9 apps on AWS CICD 
- aws cicd 	-> aws ec2 -> ECS cluster
- codefresh -> deploys to EKS,GKE,AKS
- Other activities 
	- QA,E2E,Staging,Prod 
		- All are terraform based environments 
		- some apps on prod are on ArgoCD , with Helm Charts
		- other apps manual deployment using codefresh 
			- if the prod is k8s, then codefresh 
			- if the prod is ECS, then aws deploy 
	- Developer environment setup using k3s,k3d,kind,MicroK8S depending on what they ask on AWS,GKE,AKS
- .NET & Java on Azure Pipelines 
	- CI, using azure build-pipeline
	- CD, gated, using azure release-pipeline 
		- azure aks , plus terraform. Self hosted pipelines in the pipeline 
	
### 3 Monitoring - 
- k8s - using Prometheus,Grafana,NewRelic
- aws,ECS - cloudwatch
- hosts,ssh-connections,urls - zabbix,Nagios,Sensu