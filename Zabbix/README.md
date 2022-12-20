# public key authentication for SSH
- Generating SSH Key Pair on ansible server 
```
ssh-keygen
```
- copy the corresponding public key/id_rsa.pub from ansible server
```
cat .ssh/id_rsa.pub
```
-  open the authorized_keys file and  paste the public key/id_rsa.pub contents in host machine 
```
vi .ssh/authorized_keys
```
- log into your host machine from the ansible server
```
ssh username@host
```