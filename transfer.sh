#!/bin/bash


#1.Download from git repository

git pull

#2.Transfer it to server2

scp /root/viko/remote_repo/* root@157.90.228.79:~/root

