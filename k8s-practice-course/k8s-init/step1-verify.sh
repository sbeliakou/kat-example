#!/bin/bash

export KUBECONFIG=/etc/kubernetes/admin.conf

kubectl get nodes >/dev/null 2>&1 && \
( kubectl get nodes | awk '$2=="Ready"{t+=1}END{print t}' | xargs -IF [ F -eq 2 ] ) && \
( kubectl get componentstatus | grep Healthy | wc -l | xargs -IF [ F -eq 3 ] ) && \
echo done