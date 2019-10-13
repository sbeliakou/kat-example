#!/bin/bash

[ -f /.ok ] && echo done ||
[ `kubectl get pods -n db redis-db -o jsonpath='{.status.phase}'` == "Running" ] &&
[ `kubectl get pods -n db redis-db -o jsonpath='{.spec.initContainers[0].command[0]}'` == "sleep" ] &&
[ `kubectl get pods -n db redis-db -o jsonpath='{.spec.initContainers[0].image}'` == "busybox" ] &&
[ `kubectl get pods -n db redis-db -o jsonpath='{.spec.containers[0].image}'` == "redis:alpine" ]  &&
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
    "scenario": "k8s-pods.4", 
    "score": ${TASK_SCORE}
  }
}
EOF


