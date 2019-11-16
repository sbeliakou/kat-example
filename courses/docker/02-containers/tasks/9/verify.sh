#!/bin/bash

[[ $(docker inspect busy | jq -r '.[].Config.User') == "1000:0" ]] && 
[[ $(docker inspect busy | jq -c '.[].Config.Env' | grep -c STUDENT) -eq 1 ]] && 
[[ $(docker inspect busy | jq -r '.[].Config.WorkingDir') == "/data" ]] && 
[[ $(docker inspect busy | jq -r '.[].HostConfig.GroupAdd[]') == "1200" ]] &&
echo done