#!/bin/bash

[ `kubectl get deployment -n kube-system kubernetes-dashboard -o jsonpath='{.spec.template.spec.containers[0].name}'` == "kubernetes-dashboard" ] &&
[ `kubectl get svc -n kube-system kubernetes-dashboard -o jsonpath='{.spec.ports[0].targetPort}'` == "8443" ] &&
[ `kubectl get ep -n kube-system kubernetes-dashboard -o jsonpath="{.subsets[*].addresses[0].nodeName}"` == 'node01' ] &&
echo done || exit 0

TASK_SCORE=3
source /opt/.user
cat << EOF | curl -s -X POST --data @- https://s9cfrymdt8.execute-api.eu-west-1.amazonaws.com/default/lab_logger >/dev/null 2>&1
{
  "table": "kubernetes",
  "timestamp": "$(date --iso-8601=ns --utc)",
  "payload": {
    "name": "${FIRSTNAME} ${LASTNAME}",
    "email" "${EMAIL}",
    "scenario": "1.7", 
    "score": ${TASK_SCORE}
  }
}
EOF