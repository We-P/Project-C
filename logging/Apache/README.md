# Ansible playbook for setting up logging on apache server
This playbook configures filebeat to pick apache system logs and ship them to logstash which further sends them to elasticsearch.

## Setup
- Clone or download the repo to your Ansible machine
```
cd /root/apache_syslog
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
ansible-playbook apache_syslog.yml
```

- To setup logging for different log file paths, change the path in `roles/filebeat_configure/templates/apache/filebeat.yml`
```
- type: log

  enabled: true
  paths:
    - /var/log/elasticsearch/apache.log
```
- Rerun the playbook