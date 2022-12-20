# public key authentication for SSH
### Generating SSH Key Pair on local machine 
>ssh-keygen
### copy the corresponding public key/id_rsa.pub from local machine
> cat .ssh/id_rsa.pub
###  open the authorized_keys file and  paste the public key/id_rsa.pub contents to server 
> vi .ssh/authorized_keys
### log into your server from the local machine
>ssh username@host