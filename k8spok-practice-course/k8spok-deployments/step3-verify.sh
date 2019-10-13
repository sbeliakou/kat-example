#!/bin/bash

[ -f /.ok ] && echo done ||
[ `kubectl get deployment orange -n orange -o jsonpath='{.metadata.name}'` == "orange" ] && 
[ `kubectl get deployment orange -n orange -o jsonpath='{.spec.template.spec.containers[0].image}'` == "nginx" ] && 
[ `kubectl get deployment orange -n orange -o jsonpath='{.spec.replicas}'` == 2 ] &&
[ `kubectl get deployment orange -n orange -o jsonpath='{.status.readyReplicas}'` == 2 ] &&
[ `kubectl get deployment orange -n orange -o jsonpath='{.spec.template.spec.initContainers[0].image}'` == "busybox:latest" ] &&
[ `kubectl get deployment orange -n orange -o jsonpath='{.spec.template.spec.initContainers[0].command[1]}'` == 10 ]  &&
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
    "scenario": "k8spok-deployments.3", 
    "score": ${TASK_SCORE}
  }
}
EOF


