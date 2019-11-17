#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(docker run c8j11 java -version 2>&1 | grep -c "openjdk.*11") -ge 1 ]] &&
[[ $(docker run c7j180 java -version 2>&1 | grep -c "openjdk.*1.8.0") -ge 1 ]]  &&
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


