#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(kubectl get configmaps users-cm -o jsonpath='{.data.cluster-admin}') == "admin" ]] &&
[[ $(kubectl get configmaps users-cm -o jsonpath='{.data.devops}') == "devops" ]] &&
[[ $(kubectl get configmaps users-cm -o jsonpath='{.data.db-admin}') == "db-admin" ]] &&
[[ $(kubectl get configmaps users-cm -o jsonpath='{.data.user1}') == "Jack" ]] &&
[[ $(kubectl get configmaps users-cm -o jsonpath='{.data.user2}') == "John" ]]
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
    "scenario": "k8spok-configmaps.3", 
    "score": ${TASK_SCORE}
  }
}
EOF


