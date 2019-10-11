#!/bin/bash

[ -f /.ok ] && echo done ||
[ `kubectl get pod nginx-pod -o jsonpath='{.spec.containers[0].image}'` == "nginx:mainline-perl" ] && 
[ `kubectl get pv pv-first -o jsonpath='{.metadata.name}'` == "pv-first" ] &&
[ `kubectl get pv pv-first -o jsonpath='{.spec.persistentVolumeReclaimPolicy}'` == "Retain" ] &&
[ `kubectl get pv pv-first -o jsonpath='{.spec.accessModes}'` == "ReadWriteOnce" ] &&
[ `kubectl get pv pv-first -o jsonpath='{.status.phase}'` == "Bound" ] &&
[ `kubectl get pv pv-first -o jsonpath='{.spec.hostPath.path}'` == "/opt/data1" ] &&
[ `kubectl get pv pv-first -o jsonpath='{.spec.capacity.storage}'` == "10Mi" ] &&
[ `kubectl get pvc pvc-first -o jsonpath='{.metadata.name}'` == "pvc-first" ] &&
[ `kubectl get pod nginx-pod -o jsonpath='{.spec.volumes[0].persistentVolumeClaim.claimName}'` == "pvc-first" ]
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
    "scenario": "k8spok-volumes.2", 
    "score": ${TASK_SCORE}
  }
}
EOF


