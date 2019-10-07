#!/bin/bash

[ `kubectl get deployment nginx-deploy -o jsonpath='{.spec.template.spec.containers[0].image}'` == "nginx:1.17-alpine" ] && 
[ `kubectl rollout history deployment nginx-deploy | awk '{print $7}' | tail -3 | head -1` == "nginx=nginx:1.16-alpine" ] && 
[  `kubectl rollout history deployment nginx-deploy | awk '{print $7}' | tail -3 | head -1` == "nginx=nginx:1.17-alpine" ] &&
echo done 

