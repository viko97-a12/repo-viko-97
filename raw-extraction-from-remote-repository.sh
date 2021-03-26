#!/bin/bash

#1.Extracting files from my remote repository

#1.1 - entering in the local repo to download from remote
cd ~/viko/remote_repo/
#1.2 - cleaning every file before pulling from remote
find . -maxdepth 1 -type f -exec rm -rf {} +
#1.3 - pulling
git pull
#1.4 - finding all files from remote and archive them with timestamp
name=$(date '+%Y-%m-%d-%H-%M-%S')
find . -maxdepth 1 -type f -exec tar -czf "$name.tar.gz" {} +

find . -name "*tar.gz" -exec mv {} raw-folder1/ \;

find . -maxdepth 1 -type f -exec rm -rf {} +

