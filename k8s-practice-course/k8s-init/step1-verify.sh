#!/bin/bash

export KUBECONFIG=/etc/kubernetes/admin.conf

kubectl get nodes >/dev/null 2>&1 &&
kubeadm token list | grep abcdef.0123456789abcdef >/dev/null &&
[ `kubeadm token list | grep abcdef.0123456789abcdef | awk '{print $2}' | sed 's/[^0-9]//g'` -le 20 ] &&
echo done


# kubectl get secrets -n kube-system bootstrap-token-abcdef -o jsonpath='{.data.expiration}' | base64 -d | xargs -IF echo $(( (`date -d 'F' +%s` - `date +%s`)/60 ))