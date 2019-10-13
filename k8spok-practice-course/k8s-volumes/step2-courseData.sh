#!/bin/bash


for item in {1..5}; do
mkdir /opt/data${item}
cat << EOF | kubectl apply -f-
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-${item}
  labels:
    type: local
spec:
  storageClassName: manual
  capacity:
    storage: 10Mi
  accessModes:
  - ReadWriteOnce
  hostPath:
    path: "/opt/data${item}"
EOF
done

