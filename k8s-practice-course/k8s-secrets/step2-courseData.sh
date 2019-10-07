#!/bin/bash

kubectl create ns safe
&&
cat << EOF | kubectl apply --namespace=safe -f-
apiVersion: v1
kind: Secret
metadata:
  name: pie-recipe
type: Opaque
data:
  author: $(echo -n 'https://www.youtube.com/watch?v=dQw4w9WgXcQ' | base64 -w0)
  ingridients: $(echo -n 'flour_sugar_apples' | base64 -w0)
EOF
&&
cat << EOF | kubectl apply --namespace=safe -f-
apiVersion: v1
kind: Secret
metadata:
  name: burger-recipe
type: Opaque
data:
  author: $(echo -n '' | base64 -w0)
  ingridients: $(echo -n 'bun_cutlet_salad' | base64 -w0)
EOF

