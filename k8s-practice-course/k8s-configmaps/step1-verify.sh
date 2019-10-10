#!/bin/bash

export KUBECONFIG=/etc/kubernetes/admin.conf

[ -f /.ok ] && echo done ||
[[ $(cat /tmp/secrets_default) == '1' ]] &&
echo done || exit 0

TASK_SCORE=1
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
