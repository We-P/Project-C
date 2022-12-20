# Ansible playbook for setting up logging on Zabbix server
This playbook configures filebeat to pick Zabbix system logs and ship them to logstash which further sends them to elasticsearch.

## Setup
- Clone or download the repo to your Ansible machine
```
cd /root/zabbix_syslog
```
- Add host details in inventory file
- Test the connection with
```
ansible all -m ping
```
Proceed to execute the playbook if the above command returns `SUCCESS`
- Change the variables in the `vars/main.yml` file to the required values. For e.g. elk stack ip address, credentials, custom index name.
- Run the playbook with the following command
```
ansible-playbook zabbix_syslog.yml
```
- To setup logging for different log file paths, change the path in `roles/filebeat_configure/templates/jenkins/filebeat.yml`
```
- type: log

  enabled: true
  paths:
    - /var/log/zabbix.log
```
- Rerun the playbook