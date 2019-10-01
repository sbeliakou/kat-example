#!/bin/bash

export KUBECONFIG=/etc/kubernetes/admin.conf
kubectl get ns ns-demo >/dev/null 2>&1 && echo done