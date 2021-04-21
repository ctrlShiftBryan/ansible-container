#!/bin/sh -l

time=$(date)
files=$(ls) 
location=$(pwd) 
echo "files: $files"
echo "pwd: $location"
echo "running playbook $1"
ansible-playbook $1
