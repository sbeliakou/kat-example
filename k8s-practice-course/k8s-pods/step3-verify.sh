#!/bin/bash

export KUBECONFIG=/etc/kubernetes/admin.conf

[ `kubectl get pods -n kube-system $(kubectl get pods -n kube-system | grep metrics | awk '{print $1}') -o jsonpath='{.status.phase}'` == "Running" ] &&
echo done