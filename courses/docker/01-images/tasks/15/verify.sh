#!/bin/bash

[[ $(docker exec tomcat-ubuntu-15 cat /etc/os-release | grep -c ID=ubuntu) -eq 1 ]] &&
[[ $(docker exec tomcat-ubuntu-15 ps -ef | grep -c "java.*tomcat") -eq 1 ]] && 
echo done
