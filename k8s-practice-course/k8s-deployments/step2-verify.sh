#!/bin/bash

[ `kubectl get deployment orange -n orange -o jsonpath='{.metadata.name}'` == "orange" ] && 
[ `kubectl get deployment orange -n orange -o jsonpath='{.spec.template.spec.containers[0].image}'` == "nginx" ] && 
[ `kubectl get deployment orange -n orange -o jsonpath='{.spec.replicas}'` == 2 ] &&
[ `kubectl get deployment orange -n orange -o jsonpath='{.status.readyReplicas}'` == 2 ] &&
[ `kubectl get deployment orange -n orange -o jsonpath='{.spec.template.spec.initContainers[0].image}'` == "busybox:latest" ] &&
[ `kubectl get deployment orange -n orange -o jsonpath='{.spec.template.spec.initContainers[0].command[1]}'` == 10  ]
echo done 

