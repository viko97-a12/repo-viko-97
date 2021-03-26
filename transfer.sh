#!/bin/bash


#1.Download from git repository

git pull


#1.5 Time when the transfer is performed!
echo "The deployment from GoToAdmin has been performed on: - " >> business-tracking-date
date >> business-tracking-date

#2.Transfer it to server2

scp /root/viko/remote_repo/* root@157.90.228.79:~/root




