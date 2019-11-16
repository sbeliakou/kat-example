#!/bin/bash

[[ $(docker exec nginx-ubuntu-12 cat /etc/os-release | grep -c ID=ubuntu) -eq 1 ]] &&
[[ $(docker exec nginx-ubuntu-12 ps -ef | grep -c [n]ginx) -ge 2 ]] && 
echo done
