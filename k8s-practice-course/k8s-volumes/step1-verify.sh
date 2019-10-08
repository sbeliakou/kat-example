#!/bin/bash

[ `kubectl get pod nginx-pod -o jsonpath='{.spec.containers[0].image}'` == "nginx:mainline-perl" ] && 
[ `kubectl get pv pv-first -o jsonpath='{.metadata.name}'` == "pv-first" ] &&
[ `kubectl get pv pv-first -o jsonpath='{.spec.persistentVolumeReclaimPolicy}'` == "Retain" ] &&
[ `kubectl get pv pv-first -o jsonpath='{.spec.accessModes}'` == "ReadWriteOnce" ] &&
[ `kubectl get pv pv-first -o jsonpath='{.status.phase}'` == "Bound" ] &&
[ `kubectl get pv pv-first -o jsonpath='{.spec.hostPath.path}'` == "/opt/data1" ] &&
[ `kubectl get pv pv-first -o jsonpath='{.spec.capacity.storage}'` == "10Mi" ] &&
[ `kubectl get pvc pvc-first -o jsonpath='{.metadata.name}'` == "pvc-first" ] &&
[ `kubectl get pod nginx-pod -o jsonpath='{.spec.volumes[0].persistentVolumeClaim.claimName}'` == "pvc-first" ] &&
echo done 

