#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(docker image inspect mybusybox | jq -r '.[].ContainerConfig.WorkingDir') == '/data' ]] &&
[[ $(docker run mybusybox ls | grep -c test_file) -eq 2 ]] &&
[[ $(docker image inspect mybusybox | jq -r '.[].ContainerConfig.Env[]' | grep -c MAINTAINER) -ge 1 ]] &&
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
    "scenario": "01-images.6", 
    "score": ${TASK_SCORE}
  }
}
EOF


