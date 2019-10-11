#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(kubectl get svc -n trouble trouble-svc -o jsonpath='{.spec.selector.app}') == 'trouble' ]]
  &&
echo done || exit 0

TASK_SCORE="1"
source /opt/.user
cat << EOF | curl -s -X POST --data @- https://s9cfrymdt8.execute-api.eu-west-1.amazonaws.com/default/lab_logger >/dev/null 2>&1
{
  "table": "kubernetes",
  "timestamp": "$(date --iso-8601=ns --utc)",
  "payload": {
    "name": "${FIRSTNAME} ${LASTNAME}",
    "email": "${EMAIL}",
    "scenario": "k8spok-services.9", 
    "score": ${TASK_SCORE}
  }
}
EOF


