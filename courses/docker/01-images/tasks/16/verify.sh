#!/bin/bash

[[ $(docker exec tomcat-alpine-16 cat /etc/os-release | grep -c ID=alpine) -eq 1 ]] &&
[[ $(docker exec tomcat-alpine-16 ps -ef | grep -c "java.*tomcat") -eq 1 ]] && 
echo done
