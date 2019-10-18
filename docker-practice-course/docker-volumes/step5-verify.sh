#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(grep -c n32400 $(docker volume inspect n32400_custom_volume | jq -r '.[].Mountpoint')/*) -ge 1 ]]  &&
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
    "scenario": "docker-volumes.5", 
    "score": ${TASK_SCORE}
  }
}
EOF


