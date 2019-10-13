#!/bin/bash

[ -f /.ok ] && echo done ||
[[ $(kubectl get pod nginx-pod -o jsonpath='{.spec.phase}') == "Running" ]] &&
[[ $(kubectl get pod nginx-pod -o jsonpath='{.spec.volumes[?(@.persistentVolumeClaim.claimName=="pvc-first")].persistentVolumeClaim.claimName}') == "pvc-first" ]] &&
[[ $(kubectl get pvc pvc-first -o jsonpath='{.status.phase}') == "Bound" ]] &&
[[ $(kubectl get pvc pvc-first -o jsonpath='{.spec.volumeName}') == "pv-first" ]] &&
[[ $(kubectl get pv pv-first -o jsonpath='{.status.phase}') == "Bound" ]] &&
[[ $(kubectl get pv pv-first -o jsonpath='{.spec.capacity.storage}') == "30Mi" ]] &&
[[ $(kubectl get pv pv-first -o jsonpath='{.spec.claimRef.name}') == "pvc-first" ]]  &&
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
    "scenario": "k8s-volumes.3", 
    "score": ${TASK_SCORE}
  }
}
EOF


