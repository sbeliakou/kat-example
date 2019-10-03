#!/bin/bash

export KUBECONFIG=/etc/kubernetes/admin.conf

kubectl get nodes >/dev/null 2>&1 &&
kubeadm token list | grep abcdef.0123456789abcdef >/dev/null &&
echo done