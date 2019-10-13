#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(kubectl get pods team-volume-pod -o jsonpath='{.status.phase}') == "Running" ]] &&
[[ $(kubectl get pods team-volume-pod -o jsonpath='{.spec.containers[?(@.name=="team-volume-pod")].image}') == "busybox" ]] &&
[[ $(kubectl get pods team-volume-pod -o jsonpath='{.spec.volumes[?(@.name=="team-volume")].configMap.name}') == "users-cm" ]] &&
[[ $(kubectl get pods team-volume-pod -o jsonpath='{.spec.containers[?(@.name=="team-volume-pod")].volumeMounts[?(@.name=="team-volume")].mountPath}') == "/etc/team-members" ]]  &&
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
    "scenario": "k8s-configmaps.6", 
    "score": ${TASK_SCORE}
  }
}
EOF


