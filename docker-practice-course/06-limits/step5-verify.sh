#!/bin/bash

[ -f /.ok ] && echo done ||
docker inspect cpu-stress | jq -r '.[].HostConfig.NanoCpus | select(. == 200000000)' | grep -v ^$ ||
docker inspect cpu-stress | jq -r '.[].HostConfig.CpuQuota | select(. == 20000)' | grep -v ^0$ &&
# [[ $(docker inspect cpu-stress | jq -r '.[].HostConfig.CpuQuota') == "20000" ]] &&
echo done  &&
echo done || exit 0

TASK_SCORE="1"
source /opt/.user
cat << EOF | curl -s -X POST --data @- https://s9cfrymdt8.execute-api.eu-west-1.amazonaws.com/default/lab_logger >/dev/null 2>&1
{
  "table": "docker",
  "timestamp": "$(date --iso-8601=ns --utc)",
  "payload": {
    "name": "${FIRSTNAME} ${LASTNAME}",
    "email": "${EMAIL}",
    "scenario": "06-limits.5", 
    "score": ${TASK_SCORE}
  }
}
EOF


