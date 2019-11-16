kubectl create ns customer

cat << EOF | kubectl apply -n customer -f -
apiVersion: apps/v1
kind: ReplicaSet
metadata:
  name: abc
  labels:
    app: abc
spec:
  replicas: 6
  selector:
    matchLabels:
      app: abc
  template:
    metadata:
      labels:
        app: abc
    spec:
      containers:
      - name: abc
        image: busybox
        command:
        - sleep
        - "10000"
EOF