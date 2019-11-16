#!/bin/bash

[[ $(cat /root/.docker/config.json | jq -r '.auths."https://index.docker.io/v1/".auth') != "null" ]] ||
[[ $(cat /home/$(cat /etc/group|grep docker|cut -d: -f4)/.docker/config.json | jq -r '.auths."https://index.docker.io/v1/".auth') != "null" ]] && 
echo done