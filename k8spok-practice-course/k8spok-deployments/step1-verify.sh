#!/bin/bash

[ -f /.ok ] && echo done ||
[ `kubectl get deployment nginx-deploy -o jsonpath='{.metadata.name}'` == "nginx-deploy" ] && 
[ `kubectl get deployment nginx-deploy -o jsonpath='{.spec.template.spec.containers[0].image}'` == "nginx:1.16-alpine" ] && 
[ `kubectl get deployment nginx-deploy -o jsonpath='{.spec.replicas}'` == 1 ] &&
[ `kubectl get deployment nginx-deploy -o jsonpath='{.status.readyReplicas}'` == 1 ]
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
    "scenario": "k8spok-deployments.1", 
    "score": ${TASK_SCORE}
  }
}
EOF

