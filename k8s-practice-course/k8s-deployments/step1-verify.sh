#!/bin/bash

[ `kubectl get deployment nginx-deploy -o jsonpath='{.metadata.name}'` == "nginx-deploy" ] && 
[ `kubectl get deployment nginx-deploy -o jsonpath='{.spec.template.spec.containers[0].image}'` == "nginx:1.16-alpine" ] && 
[ `kubectl get deployment nginx-deploy -o jsonpath='{.spec.replicas.}'` == 1 ] &&
[ `kubectl get deployment nginx-deploy -o jsonpath='{.status.readyReplicas}'` == 1 ] &&
echo done 

