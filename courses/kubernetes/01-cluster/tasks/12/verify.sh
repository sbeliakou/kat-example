#!/bin/bash

kubectl get deployment -n kube-system metrics-server -o jsonpath='{.status.readyReplicas}' | grep 1 &&
kubectl top pods &&
kubectl top nodes
