# setup hosts
- Add a static entry to the etc\hosts file in format of
```
IP address        hostname
```
-  Add hosts details in inventory file
-  Test your Ansible connection to your remote host
```
ansible all -m ping
```
- change the hostname in playbook and execute the playbook
```
ansible-playbook maven_rh.yml 
```