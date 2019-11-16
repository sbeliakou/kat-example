#!/bin/bash

kubectl run allgood --generator=run-pod/v1 --image=sbeliakou/stubserver --port=80
kubectl expose pod allgood --name=allgood-svc --port=80

cat << EOF | kubectl apply -f-
apiVersion: networking.k8s.io/v1beta1
kind: Ingress
metadata:
  name: allgood-ingress
  annotations:
    nginx.ingress.kubernetes.io/rewrite-target: /
spec:
  rules:
  - http:
      paths:
      - path: /allgood
        backend:
          serviceName: allgood-svc
          servicePort: 80
EOF


mkdir -p /opt/manifests/
cat << EOF > /opt/manifests/ingress-svc.yaml
kind: Service
apiVersion: v1
metadata:
  name: ingress-nginx
  namespace: ingress-nginx
  labels:
    app.kubernetes.io/name: ingress-nginx
    app.kubernetes.io/part-of: ingress-nginx
spec:
  externalIPs:
  - 172.31.0.2
  ports:
  - name: http
    port: 80
    protocol: TCP
    targetPort: http
  selector:
    app.kubernetes.io/name: ingress-nginx
    app.kubernetes.io/part-of: ingress-nginx
  sessionAffinity: None
  type: ClusterIP
EOF



