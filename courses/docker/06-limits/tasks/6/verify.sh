#!/bin/bash

docker inspect cpu-stress | jq -r '.[].HostConfig.NanoCpus | select(. == 200000000)' | grep -v ^$ ||
docker inspect cpu-stress | jq -r '.[].HostConfig.CpuQuota | select(. == 20000)' | grep -v ^0$
# [[ $(docker inspect cpu-stress | jq -r '.[].HostConfig.CpuQuota') == "20000" ]] &&
# echo done
