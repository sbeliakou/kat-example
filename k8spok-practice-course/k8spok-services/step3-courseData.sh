#!/bin/bash

        
kubectl create ns safe &&
for item in {1..5}; do
  cat << EOF | kubectl apply --namespace=safe -f-
apiVersion: v1
kind: Secret
metadata:
  name: recipe${item}
type: Opaque
data:
  author: $(echo -n 'https://www.youtube.com/watch?v=dQw4w9WgXcQ' | base64 -w0)
  ingridients: $(echo -n "flour_sugar_and_${item}_apples" | base64 -w0)
EOF
done

