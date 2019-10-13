#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(kubectl get pods user-pod -o jsonpath='{.status.phase}') == "Running" ]] &&
[[ $(kubectl get pods user-pod -o jsonpath='{.spec.containers[].env[?(@.name=="USER1")].valueFrom.configMapKeyRef.key}') == "user1" ]] &&
[[ $(kubectl get pods user-pod -o jsonpath='{.spec.containers[].env[?(@.name=="USER2")].valueFrom.configMapKeyRef.key}') == "user2" ]]  &&
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
    "scenario": "k8s-configmaps.5", 
    "score": ${TASK_SCORE}
  }
}
EOF


