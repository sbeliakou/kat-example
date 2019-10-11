#!/bin/bash

kubectl create ns safe &&
for item in {1..5}; do
  cat << EOF | kubectl apply -f-
apiVersion: v1
kind: ConfigMap
metadata:
  name: recipe${item}
  namespace: safe
data:
  author: devops-${item}th
  ingridients: flour_sugar_and_${item}_apples
EOF


done 

