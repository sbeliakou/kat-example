#!/bin/bash

[ -f /.ok ] && echo done ||
[ `kubectl get pods nginx-pod -o jsonpath='{.status.phase}'` == "Running" ] &&
[ `kubectl get pods nginx-pod -o jsonpath='{.spec.containers[0].image}'` == "nginx:alpine" ] &&
[ `kubectl get pods nginx-pod -o jsonpath='{.metadata.labels.app}'` == "nginx" ] &&
echo done