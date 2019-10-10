#!/bin/bash

export KUBECONFIG=/etc/kubernetes/admin.conf

[ -f /.ok ] && echo done ||
kubectl get nodes >/dev/null 2>&1 &&
kubeadm token list | grep abcdef.0123456789abcdef >/dev/null &&
[ `kubeadm token list | grep abcdef.0123456789abcdef | awk '{print $2}' | sed 's/[^0-9]//g'` -le 20 ] &&
echo done || exit 0

TASK_SCORE=8
source /opt/.user
cat << EOF | curl -s -X POST --data @- https://s9cfrymdt8.execute-api.eu-west-1.amazonaws.com/default/lab_logger >/dev/null 2>&1
{
  "table": "kubernetes",
  "timestamp": "$(date --iso-8601=ns --utc)",
  "payload": {
    "name": "${FIRSTNAME} ${LASTNAME}",
    "email": "${EMAIL}",
    "scenario": "1.2", 
    "score": ${TASK_SCORE}
  }
}
EOF

# kubectl get secrets -n kube-system bootstrap-token-abcdef -o jsonpath='{.data.expiration}' | base64 -d | xargs -IF echo $(( (`date -d 'F' +%s` - `date +%s`)/60 ))