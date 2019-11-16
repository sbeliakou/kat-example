mkdir -p /opt/practice/
kubectl create ns microservices
cat << EOF > /opt/practice/web-pod.yaml
apiVersion: v1
kind: Pod
metadata:
  labels:
    app: webserver
  name: webserver
  namespace: microservices
spec:
  containers:
  - image: nginx
    name: webservice
EOF