cat << EOF > /opt/practice/web-echo-deployment.yaml
apiVersion: apps/v1
kind: Deployment
metadata:
  name: web-echo
  labels:
    app: echo-application
spec:
  replicas: 5
  selector:
    matchLabels:
      app: echo-application
  template:
    metadata:
      labels:
        # POD label for selecting
        app: echo-application
    spec:
      containers:
      - name: main
        image: sbeliakou/web-echo:1
EOF