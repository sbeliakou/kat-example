cat << EOF > /opt/practice/monkeys.yaml
apiVersion: apps/v1
kind: deployment
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
        command: ["/bin/sh", "-c", "echo Hello ${STUDENT}! && sleep 3600"
EOF