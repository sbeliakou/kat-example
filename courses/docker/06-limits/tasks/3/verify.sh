#!/bin/bash


docker inspect net-tools | jq -r '.[].Config.Image' | grep sbeliakou/net-tools && 
[[ $(docker inspect net-tools | jq -r '.[].HostConfig.NetworkMode') == "container:$(docker inspect nginx-net | jq -r '.[].Id')" ]] &&
echo done