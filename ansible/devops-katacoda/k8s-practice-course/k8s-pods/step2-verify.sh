#!/bin/bash

[ -f /.ok ] && echo done ||
[ `kubectl get po multi-pod -o jsonpath='{.status.phase}'` == "Running" ] &&
[ `kubectl get po multi-pod -o jsonpath='{.spec.containers[0].name}'` == "alpha" ] &&
[ `kubectl get po multi-pod -o jsonpath='{.spec.containers[0].image}'` == "nginx:alpine" ] &&
[ `kubectl get po multi-pod -o jsonpath='{.spec.containers[0].env[?(@.name=="type")].value}'` == "main" ] &&
[ `kubectl get po multi-pod -o jsonpath='{.spec.containers[1].name}'` == "beta" ] &&
[ `kubectl get po multi-pod -o jsonpath='{.spec.containers[1].image}'` == "busybox" ] &&
[ `kubectl get po multi-pod -o jsonpath='{.spec.containers[1].env[?(@.name=="type")].value}'` == "sidecar" ] &&
[ "`kubectl get po multi-pod -o jsonpath='{.spec.containers[1].command}'`" == "[sleep 4800]" ]
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
    "scenario": "k8s-pods.2", 
    "score": ${TASK_SCORE}
  }
}
EOF


