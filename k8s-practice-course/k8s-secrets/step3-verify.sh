#!/bin/bash

[[ $(kubectl get secrets -n safe recipe5 -o yaml -o jsonpath='{.data.ingridients}' | base64 -d) == $(cat /tmp/ingridients) ]] &&
echo done || exit 0

TASK_SCORE=3
source /opt/.user
cat << EOF | curl -s -X POST --data @- https://s9cfrymdt8.execute-api.eu-west-1.amazonaws.com/default/lab_logger >/dev/null 2>&1
{
  "table": "kubernetes",
  "timestamp": "$(date --iso-8601=ns --utc)",
  "payload": {
    "name": "${FIRSTNAME} ${LASTNAME}",
    "email": "${EMAIL}",
    "scenario": "1.3", 
    "score": ${TASK_SCORE}
  }
}
EOF
