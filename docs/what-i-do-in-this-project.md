## what i do in this project v1
### What you do : 
- Build the environments - Manual/Terraform
    - on-prem environments, we use Vagrant scripts 
	- for kubernetes environments, we use Rancher or KOPS
	- Then there are several custom scripts 
		- to setup aws,gke
		- on-prem clusters for kind,k3s,k3d 
		- aks 
		- ECS 
	- Build jobs on the pipelines 
		
- update the terraform scripts. ( Eg: version of terraform to use) 
	- sometimes, the terraform scripts break on aws. we need to fix them 
- configure jobs as per developers requests. Edit the pipeline scripts of Jenkins or yaml of aws cicd or codefresh cd 
- Daily deployments (we have atleast 4/5 deployments. Jenkins,circleCI or Gitlab/codefresh,AzureDevOps)
- recently we are implementing ArgoCD rollouts, to setup Blue/Green deployments 
- Handling Alerts 
	- Alerts are setup on Prod,QA,E2E	- Prod is serious , non-prod is little ok 
	- all k8s environments , prometheus/grafana & new-relic 
	- other enviornments, sensu,Zabbix,Nagios,Aws cloudwatch,azure Monitor 
- run vulnarability scans on images 
- prodution deployment 
- backup & restore of k8s and EBS volumes using scripts 
	- veeam 
	- EBS volumes
	- s3 storage issues 
- cluster hardning 
- setup tools on dev,non-prod environments
	- like k9s,prometheus,Loki 
- Troubleshoot any issues 
- nightly builds of all updated container images 
	- security checks will be run every night on all 
    - builds that were created on that day 
		
- rundeck jobs , running them and creating them
- converting docker-compose files into k8s files