#!/bin/bash
source /etc/venture
[[ $(docker exec tomcat-centos-14 cat /etc/redhat-release | grep -c CentOS) -eq 1 ]] &&
[[ $(docker exec tomcat-centos-14 ps -ef | grep -c "java.*tomcat") -eq 1 ]] && 
echo done
