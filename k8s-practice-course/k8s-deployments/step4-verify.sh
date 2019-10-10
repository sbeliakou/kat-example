#!/bin/bash

[ -f /.ok ] && echo done ||
[ `kubectl get deployment lemon -n lemon -o jsonpath='{.metadata.name}'` == "lemon" ] && 
[ `kubectl get deployment lemon -n lemon -o jsonpath='{.spec.template.spec.containers[0].image}'` == "nginx" ] && 
[ `kubectl get deployment lemon -n lemon -o jsonpath='{.spec.replicas}'` == 3 ] &&
[ `kubectl get deployment lemon -n lemon -o jsonpath='{.status.readyReplicas}'` == 3 ] &&
echo done

