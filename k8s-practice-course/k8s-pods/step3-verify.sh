#!/bin/bash

[ `kubectl get pods -n db redis-db -o jsonpath='{.status.phase}'` == "Running" ] &&
[ `kubectl get pods -n db redis-db -o jsonpath='{.spec.initContainers[0].command[0]}'` == "sleep" ] &&
[ `kubectl get pods -n db redis-db -o jsonpath='{.spec.initContainers[0].image}'` == "busybox" ] &&
[ `kubectl get pods -n db redis-db -o jsonpath='{.spec.containers[0].image}'` == "redis:alpine" ] &&
echo done