#!/bin/bash

[ `kubectl get pods -n ns-demo -o jsonpath='{.items[*].spec.containers[0].image}'` == 'nginx' ] && 
[ `kubectl get pods -n ns-demo -o jsonpath='{.items[*].spec.containers[0].name}'` == 'nginx-pod' ] &&
[ `kubectl get pods -n ns-demo -o jsonpath='{.items[*].status.phase}'` == 'Running' ] && echo done