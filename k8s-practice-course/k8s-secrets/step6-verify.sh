#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(kubectl get pods dev-pod -o jsonpath='{.status.phase}') == "Running" ]] &&
[[ $(kubectl get pods dev-pod -o jsonpath='{.spec.containers[?(@.name=="dev-pod")].image}') == "busybox" ]] &&
[[ $(kubectl get pods dev-pod -o jsonpath='{.spec.containers[?(@.name=="dev-pod")].envFrom[0].secretRef.name}') == "devops-secret" ]] &&
echo done || exit 0

TASK_SCORE=4
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
