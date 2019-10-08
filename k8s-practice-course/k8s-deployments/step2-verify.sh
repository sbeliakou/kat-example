#!/bin/bash

[ `kubectl get deployment nginx-deploy -o jsonpath='{.spec.template.spec.containers[0].image}'` == "nginx:1.16-alpine" ] && 
[ `kubectl rollout history deployment nginx-deploy | grep -c "nginx=nginx:1.16-alpine"` >= 1 ] && 
[ `kubectl rollout history deployment nginx-deploy | grep -c "nginx=nginx:1.17-alpine"` >= 1 ] &&
[ `kubectl rollout history deployment nginx-deploy | grep -c "set image"` >= 2 ] &&
echo done 

