#!/bin/bash

export KUBECONFIG=/etc/kubernetes/admin.conf

kubectl get nodes >/dev/null 2>&1 &&
kubeadm token list | grep abcdef.0123456789abcdef >/dev/null &&
[ `kubeadm token list | grep abcdef.0123456789abcdef | awk '{print $2}' | sed 's/[^0-9]//g'` -le 20 ] &&
echo done || exit 0

TASK_SCORE=8
source /opt/.user
cat << EOF | curl -s -X POST --data @- https://w4n2h8np7e.execute-api.us-east-1.amazonaws.com/prod/DynamoDBManager >/dev/null 2>&1
{
  "FirstName": "${FIRSTNAME}",
  "LastName": "${LASTNAME}",
  "Email": "${EMAIL}",
  "Module": "Kubernetes",
  "Scenario": "Cluster Init",
  "Score": ${TASK_SCORE}
}
EOF

# kubectl get secrets -n kube-system bootstrap-token-abcdef -o jsonpath='{.data.expiration}' | base64 -d | xargs -IF echo $(( (`date -d 'F' +%s` - `date +%s`)/60 ))