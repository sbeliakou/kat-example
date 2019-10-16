#!/bin/bash

[ -f /.ok ] && echo done ||
[[ `kubectl get po test -o jsonpath='{.status.phase}'` == "Running" ]] &&
[[ `kubectl get no node01 -o jsonpath='{.status.addresses[?(@.type=="InternalIP")].address}'` == `kubectl get nodes node01 -o jsonpath='{.status.addresses[?(@.type=="InternalIP")].address}'` ]] &&
[[ "`kubectl get po test -o jsonpath='{.spec.containers[0].image}'`" == "alpine:latest" ]] &&
[[ "`kubectl get po test -o jsonpath='{.spec.containers[0].command}'`" == "[sleep 1000]" ]]  &&
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
    "scenario": "k8s-node-bootstrap.1", 
    "score": ${TASK_SCORE}
  }
}
EOF


