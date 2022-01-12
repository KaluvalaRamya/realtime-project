## **Prerequisites**

* _Ubuntu server 18.04 or above_
* _User should have sudo or root previlages_

## **Install docker & git**
```
git clone https://gitlab.com/jopgrp1/realtime-project1.git && cd realtime-project1/Zabbix

sudo chmod 755 docker-git.sh && ./docker-git.sh
```
## **Setup Zabbix Frontend with Nginx & MySQL**

```
cd zabbix-files && sudo docker-compose -f ./docker-compose_v3_alpine_mysql_latest.yaml up -d
```
## **Open Zabbix dashboard using public-IP**
```
http://<public-IP>
```
**Wait for 1-2 minutes for Zabbix page to respond as it is processing in background**

**Login-ID : Admin**

**Password : zabbix**
## **start/stop of zabbix server**
```
sudo docker container start $(sudo docker container ls -qa)
sudo docker container stop $(sudo docker container ls -qa)
```
## **check logs of zabbix server**
```
sudo docker logs <container id>
```

