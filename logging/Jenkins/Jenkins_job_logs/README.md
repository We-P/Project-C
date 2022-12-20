# Ansible playbook for shipping jenkins job logs to elk stack
This playbook installs and configures logstash plugin on jenkins server. Further, it creates a corresponding index on elk server on which the jenkins job logs are stored.
It also imports a sample dashboard for jenkins jobs on the elk server.

## Setup
- Clone or download the repo to your Ansible machine
```
cd /root/jenkins_job_logs
```
- Add host details in inventory file
- Test the connection with
```
ansible all -m ping
```
Proceed to execute the playbook if the above command returns `SUCCESS`
- Change the variables in the `vars/main.yml` file to the required values. For e.g. jenkins ip address, elk stack ip address, credentials, custom index name.
- Run the playbook with the following command
```
ansible-playbook jenkins_joblogs.yml
```