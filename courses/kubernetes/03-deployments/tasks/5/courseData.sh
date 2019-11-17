kubectl create ns orange &&
cat << EOF | kubectl apply -n orange -f-
apiVersion: apps/v1
kind: Deployment
metadata:
  namespace: orange
  labels:
    run: orange
  name: orange
spec:
  replicas: 2
  selector:
    matchLabels:
      run: orange
  template:
    metadata:
      labels:
        run: orange
    spec:
      containers:
      - image: nginx:1.16-alpine
        name: orange
      initContainers:
      - image: busybox:alpine
        name: busybox
        command:
        - s11eep
        - "10"
EOF