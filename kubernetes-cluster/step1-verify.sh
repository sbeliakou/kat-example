#!/bin/bash

export KUBECONFIG=/etc/kubernetes/admin.conf

kubectl get nodes >/dev/null 2>&1 && echo done

# kubectl get componentstatus | grep Healty | wc -l