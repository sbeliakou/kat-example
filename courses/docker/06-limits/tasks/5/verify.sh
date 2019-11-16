#!/bin/bash

docker run --name tomcat -d -m 100M --memory-swap -1 --memory-reservation 50M tomcat:jdk8-openjdk-slim

[[ $(docker inspect tomcat | jq -r '.[].HostConfig.MemorySwap') == "-1" ]] &&
[[ $(docker inspect tomcat | jq -r '.[].HostConfig.MemoryReservation') != "0" ]] &&
[[ $(docker inspect tomcat | jq -r '.[].HostConfig.Memory') != "0" ]] &&
echo done
