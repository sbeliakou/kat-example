#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(docker inspect -f "{{ .HostConfig.RestartPolicy }}" restarter_1) == "{always 0}" ]] && [[ $(docker inspect -f "{{ .HostConfig.RestartPolicy }}" restarter_2) == "{on-failure 7}" ]]  &&
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
    "scenario": "docker-containers.4", 
    "score": ${TASK_SCORE}
  }
}
EOF


