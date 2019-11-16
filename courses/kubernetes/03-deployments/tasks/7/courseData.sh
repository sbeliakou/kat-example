kubectl create ns tomato
mkdir /opt/practice/
cat << EOF > /opt/practice/tomato.yaml
apiVersion: apps/v1
kind: deployment
metadata:
  namespace: tomato
  labels:
    vegetable: tomato
  name: tomato
spec:
  replicas: 1
  template:
    spec:
      containers:
      - image: nginx:1.16-alpine
        name: tomato
EOF