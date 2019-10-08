#!/bin/bash

[[ $(kubectl get svc green-svc-2 -o jsonpath='{.spec.type}') == 'NodePort' ]] &&
[[ $(kubectl get svc green-svc-2 -o jsonpath='{.spec.selector.app}') == 'green-pod' ]] &&
[[ $(kubectl get svc green-svc-2 -o jsonpath='{.spec.ports[].targetPort}') == '80' ]] &&
[[ $(kubectl get svc green-svc-2 -o jsonpath='{.spec.ports[].nodePort}') == '32005' ]] &&
echo done || exit 0

TASK_SCORE=2
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
