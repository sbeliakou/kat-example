#!/bin/bash

[[ $(docker exec nginx-alpine-13 cat /etc/os-release | grep -c ID=alpine) -eq 1 ]] &&
[[ $(docker exec nginx-alpine-13 ps -ef | grep -c [n]ginx) -ge 2 ]] && 
echo done
