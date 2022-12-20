# Azure Virtual Machines

## This page follows what needs to be changed to  launch VM's

## Introduction
This script launches six virtual machines in South India region in Azure. Apache machine will be  launched in Public subnet and other five machines will be launched in private subnets of resource group. Apache machine will be connected to Network Interface with Public IP  to access internet whereas Private subnet machines are connected to natgateway to access to internet.Private subnet machines cannot be accessed by outside world.


## Configure Azure
* Register a new application in Azure UI
* Give that application contributor role
* Copy the subscription_id,tenant_id,client_id,client_secret and add them in provider.tf file
* 
## SSH Key
> Generate ssh key by ussing command `ssh-keygen` , Name the key pair **projectplan** to match the name in script.

## Changes

> In compute.tf file Change `source image reference` value according to region where we need to launch the machines.
 

> Change location in locals.tf file according to the requirement
 

> Change the `size` of the disk of GB/TB required.
> Change `subnets` varibale value if there is variation in launching the number of machine.

## Subnets

Private IP address range `Class A: 10.0. 0.0 to 10.255. 255.255` is used in script.

## End result 
