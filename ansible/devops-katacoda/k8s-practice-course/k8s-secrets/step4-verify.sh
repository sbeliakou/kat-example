#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(kubectl get secrets devops-secret -o yaml -o jsonpath='{.data.username}' | base64 -d) == "devops" ]] &&
[[ $(kubectl get secrets devops-secret -o yaml -o jsonpath='{.data.password}' | base64 -d) == "devops_password" ]] &&
[[ $(kubectl get secrets devops-secret -o yaml -o jsonpath='{.data.email}' | base64 -d) == "devops@devops.dev" ]]
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
    "scenario": "k8s-secrets.4", 
    "score": ${TASK_SCORE}
  }
}
EOF


