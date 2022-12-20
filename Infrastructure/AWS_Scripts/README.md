# AWS Virtual Machines

## This page follows what needs to be changed to  launch VM's

## Introduction
This script launches six virtual machines in Ohio region in AWS. Apache machine will be  launched in Public subnet and other five machines will be launched in private subnets. Apache machine will be connected to Internet gateway to access internet whereas Private subnet machines are connected to natgateway to access to internet.Private subnet machines cannot be accessed by outside world.


## Configure AWS CLI

> Configure AWS CLI using command `aws configure` by generating `Access key` from AWS Console.
## SSH Key
> Generate ssh key by ussing command `ssh-keygen` , Name the key pair **projectplan** to match the name in script.

## variables.tf file

> Change `ami` value according to region where we need to launch the machines.
 

> Script launches `t2.micro machines` , change according to requirement.

> Change  `availability zone` in specific region.
 

> Change the `size` of the disk of GB/TB required.
> Change `subnets` varibale value if there is variation in launching the number of machine.

## Subnets

Private IP address range `Class A: 10.0. 0.0 to 10.255. 255.255` is used in script.

## End result 
![architecture](https://user-images.githubusercontent.com/98507485/208663496-0aa03045-ed34-42a2-a321-f7745f47e0a4.png)








