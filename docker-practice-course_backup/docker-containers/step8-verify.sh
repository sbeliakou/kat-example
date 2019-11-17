#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(docker inspect -f "{{ .Config.User }}" busy) == "1000:0" ]] && [[ $(docker inspect -f "{{ .Config.Env }}" busy) =~ "STUDENT" ]] && [[ $(docker inspect -f "{{ .Config.WorkingDir }}" busy) == "/data" ]] && [[ $(docker inspect -f "{{ .HostConfig.GroupAdd }}" busy) =~ "1200" ]]  &&
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
    "scenario": "docker-containers.8", 
    "score": ${TASK_SCORE}
  }
}
EOF


