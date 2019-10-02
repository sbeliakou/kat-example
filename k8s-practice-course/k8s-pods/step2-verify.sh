#!/bin/bash

[ `kubectl get po multi-pod -o jsonpath='{.status.phase}'` == "Running" ] &&
[ `kubectl get po multi-pod -o jsonpath='{.spec.containers[0].name}'` == "alpha" ] &&
[ `kubectl get po multi-pod -o jsonpath='{.spec.containers[0].image}'` == "nginx:alpine" ] &&
[ `kubectl get po multi-pod -o jsonpath='{.spec.containers[0].env[?(@.name=="type")].value}'` == "main" ] &&
[ `kubectl get po multi-pod -o jsonpath='{.spec.containers[1].name}'` == "beta" ] &&
[ `kubectl get po multi-pod -o jsonpath='{.spec.containers[1].image}'` == "busybox" ] &&
[ `kubectl get po multi-pod -o jsonpath='{.spec.containers[1].env[?(@.name=="type")].value}'` == "sidecar" ] &&
[ "`kubectl get po multi-pod -o jsonpath='{.spec.containers[1].command}'`" == "[sleep 4800]" ] &&
echo done