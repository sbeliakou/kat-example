#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(docker exec nginx-ubuntu cat /etc/os-release | grep -c ID=ubuntu) -eq 1 ]] &&
[[ $(docker exec nginx-ubuntu ps -ef | grep -c [n]ginx) -ge 2 ]] && 
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
    "scenario": "01-images.11", 
    "score": ${TASK_SCORE}
  }
}
EOF


