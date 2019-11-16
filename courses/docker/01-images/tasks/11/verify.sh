#!/bin/bash

[[ $(docker exec nginx-centos-11 cat /etc/redhat-release | grep -c CentOS) -eq 1 ]] &&
[[ $(docker exec nginx-centos-11 ps -ef | grep -c [n]ginx) -ge 2 ]] && 
echo done
