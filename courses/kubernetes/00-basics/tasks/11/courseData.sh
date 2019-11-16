kubectl create ns simians
echo << EOF > | kubectl apply -f -
apiVersion: apps/v1
kind: Deployment
metadata:
  name: crazymonkey
  namespace: simians
spec:
  replicas: 12
  selector:
    matchLabels:
      name: crazymonkey
  template:
    metadata:
      labels:
        name: crazymonkey
    spec:
      containers:
      - name: main
        image: busybox888
        command: ["/bin/sh", "-c", "echo Hello ${STUDENT}! && sleep 3600"]
EOF