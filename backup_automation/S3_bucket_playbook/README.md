# Ansible AWS CLI Playbook
Ansible playbook to install AWS CLI on Ubuntu 14.04. Should work on most other versions of Ubuntu too.

## Setup
- Clone or download the repo to your Ansible machine
- Add your host information within `inventories/hosts`
- Add your AWS credentials and bucket details within `vars/awscredentials.yml`

## Aws credentials setup
- You need two things basically `aws_access_key_id` & `aws_secret_key` and you find these credentials into aws console.
- So , you can navigate to aws console at right corner to your profile --> `Security credentials` ---> `access keys` ---> create new access key/refer to pervious key.
- Make sure you keep on updating the key to avoid (403) forbidden error.

## Ansible vault
- Valut is used to keep your information secure.
- vault can be used to keep your information encrypted .
  ```
  ansible-vault encrypt awscredentials.yml
  ```
  - After the above command you need to enter a new password. So, if you want to decrypt /open the file you need to use the given password.
  - To decrypt your information you can use the below command 
  ```
  ansible-vault decrypt awscredentials.yml
  ```

## Bucket details
- Make sure you give a unique bucket name which starts with no. or alphabet. Avoid using capital letters.
- object is the name of the file that you want to upload to s3 bucket
- And src is the path of your object file that you want to upload into s3 bucket.

## Run Playbook
Below is how I prefer to run Ansible playbooks.
```
ansible-playbook -i inventories/hosts playbook.yml
```
You can also run Ansible playbooks using below command:
```
ansible-playbook -i inventories/hosts playbook.yml --extra-vars="hosts=sonarqube user=ubuntu" --ask-pass
```

The `--extra-vars` parameter sets the "host" and "user" variable in the `playbook` file. And `--ask-pass` will prompt you for a password.


