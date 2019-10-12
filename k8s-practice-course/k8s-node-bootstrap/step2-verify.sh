#!/bin/bash

[[ `kubectl get po test -o jsonpath='{.status.phase}'` == "Running" ]] &&
[[ `kubectl get no node01 -o jsonpath='{.status.addresses[?(@.type=="InternalIP")].address}'` == `kubectl get nodes node01 -o jsonpath='{.status.addresses[?(@.type=="InternalIP")].address}'` ]] &&
[[ "`kubectl get po test -o jsonpath='{.spec.containers[0].image}'`" == "alpine:latest" ]] &&
[[ "`kubectl get po test -o jsonpath='{.spec.containers[0].command}'`" == "[sleep 1000]" ]] &&
echo done