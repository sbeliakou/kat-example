#!/bin/bash

[ `kubectl get po test -o jsonpath='{.status.phase}'` == "Running" ] &&
[ `kubectl get po test -o jsonpath='{.spec.containers[0].image}'` == "alpine:latest" ] &&
[ "`kubectl get po test -o jsonpath='{.spec.containers[1].command}'`" == "[sleep 1000]" ] &&
echo done