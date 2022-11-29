# Cron job for ansible playbbok 
  Script for running an ansible playbook using a cron job.

## Setup
- Clone or download the repo to your Ansible machine
- Add your playbook directory path in run.sh
```
cd /root/ansible-aws-cli 
```
- Add your command to run a playbook in run.sh
```
  ansible-playbook -i inventories/hosts playbook.yml
```

## Setup a cron job
- Use a command `crontab -e` select 1-4 any no. and enter the editor .
- below is how I scheduled my cron job .After every 2 minutes the run.sh script is going to run in bin/bash.
- /root/run.sh is the script path .You can use `pwd ` to find out the path
```
*/2 * * * * /bin/bash /root/run.sh
```


