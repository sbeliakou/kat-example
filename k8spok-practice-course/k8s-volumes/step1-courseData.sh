#!/bin/bash


kubectl create ns temp &&
for i in {1..5}; do
  mkdir -p /opt/data${i} &&
  cat << EOF | kubectl apply -f-
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-${i}
  labels:
    type: local
spec:
  storageClassName: manual
  capacity:
    storage: 10Mi
  accessModes:
  - ReadWriteOnce
  hostPath:
    path: "/opt/data${i}"
EOF
done

