#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(docker run single_app 2>&1 | grep -c "Hello world") -eq 1 ]] && [[ $(docker run multi_app 2>&1 | grep -c "Hello world") -eq 1 ]] && [[ $(docker image inspect -f "{{.Size}}" single_app) -gt $(docker image inspect -f "{{.Size}}" multi_app) ]]  &&
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
    "scenario": "docker-images.8", 
    "score": ${TASK_SCORE}
  }
}
EOF


