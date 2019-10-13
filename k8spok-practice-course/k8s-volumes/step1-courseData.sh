#!/bin/bash


mkdir /opt/data{1..5}
for item in {1..5}; do
cat << EOF > /opt/data${item}/temp${item}.yaml
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
done
for item in {1..5}; do
kubectl apply -f /opt/data${item}/temp${item}.yaml
done

