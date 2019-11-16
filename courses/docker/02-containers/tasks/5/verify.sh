#!/bin/bash

[[ $(docker inspect restarter_1 | jq -r '.[].HostConfig.RestartPolicy.Name') == "always" ]] && 
[[ $(docker inspect restarter_2 | jq -r '.[].HostConfig.RestartPolicy.Name') == "on-failure" ]] &&
[[ $(docker inspect restarter_2 | jq -r '.[].HostConfig.RestartPolicy.MaximumRetryCount') == "7" ]] &&
echo done