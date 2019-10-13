#!/bin/bash

        
mkdir -p /opt/data{1..5} &&
cat << EOF | kubectl apply -f-
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-first
  labels:
    type: local
spec:
  storageClassName: manual
  capacity:
    storage: 10Mi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: "/opt/data1"
---
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-second
  labels:
    type: local
spec:
  storageClassName: manual
  capacity:
    storage: 10Mi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: "/opt/data2"
---
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-third
  labels:
    type: local
spec:
  storageClassName: manual
  capacity:
    storage: 10Mi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: "/opt/data3"
---
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-fourth
  labels:
    type: local
spec:
  storageClassName: manual
  capacity:
    storage: 10Mi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: "/opt/data4"
---
apiVersion: v1
kind: PersistentVolume
metadata:
  name: pv-fifth
  labels:
    type: local
spec:
  storageClassName: manual
  capacity:
    storage: 10Mi
  accessModes:
    - ReadWriteOnce
  hostPath:
    path: "/opt/data5"
EOF

