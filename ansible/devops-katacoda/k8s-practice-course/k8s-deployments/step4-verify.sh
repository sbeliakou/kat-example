#!/bin/bash

[ -f /.ok ] && echo done ||
[ `kubectl get deployment lemon -n lemon -o jsonpath='{.metadata.name}'` == "lemon" ] && 
[ `kubectl get deployment lemon -n lemon -o jsonpath='{.spec.template.spec.containers[0].image}'` == "nginx" ] && 
[ `kubectl get deployment lemon -n lemon -o jsonpath='{.spec.replicas}'` == 3 ] &&
[ `kubectl get deployment lemon -n lemon -o jsonpath='{.status.readyReplicas}'` == 3 ]
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
    "scenario": "k8s-deployments.4", 
    "score": ${TASK_SCORE}
  }
}
EOF


