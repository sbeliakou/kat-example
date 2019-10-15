#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(docker run mybusybox pwd 2>&1) == '/data']] &&
[[ $(docker run mybusybox ls test_file1 2>&1) == 'test_file1' ]] &&
[[ $(docker run mybusybox ls test_file2 2>&1) == 'test_file2' ]] &&
[[ $(docker run mybusybox env 2>&1 | grep -c MAINTAINER) -ge 1 ]]  &&
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
    "scenario": "docker-images.6", 
    "score": ${TASK_SCORE}
  }
}
EOF


