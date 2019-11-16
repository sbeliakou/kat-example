cat << EOF | kubectl apply -f -
apiVersion: v1
kind: Pod
metadata:
  labels:
    run: stranger
  name: stranger
  namespace: default
spec:
  containers:
  - name: billy
    image: busybox
    command:
    - sleep
    - "1000"
  - name: bobby
    image: agentx
    command:
    - sleep
    - "1000"
EOF