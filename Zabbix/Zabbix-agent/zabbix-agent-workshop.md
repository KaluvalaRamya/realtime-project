## **Prerequisites**
_Virtual machine with Ubuntu 18.04 installed on it._

_Make sure user have sudo or root previlages._

## **Install Zabbix-Agent**
```
git clone https://gitlab.com/jopgrp1/realtime-project1.git && cd realtime-project1/Zabbix-agent
```
```
sudo chmod 755 zabbix-agent-installation.sh && sudo ./zabbix-agent-installation.sh
```
## **start/stop of Zabbix-Agent**
```
sudo systemctl status zabbix-agent
```
```
sudo systemctl start zabbix-agent
```
```
sudo systemctl stop zabbix-agent
```
### **check the logs**
```
sudo cat /var/log/zabbix-agent/zabbix_agentd.log
``` 
