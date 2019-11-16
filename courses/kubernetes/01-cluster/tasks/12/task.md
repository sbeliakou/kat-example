# {{ .Current }}. Deploying Metrics Server

![metrics](https://user-images.githubusercontent.com/21168270/46579266-95846680-ca40-11e8-86d3-a42291476db8.png)


## Task:

Follow the [documentation steps](https://github.com/kubernetes-incubator/metrics-server) and deploy `metrics-server`.

You should update update metrics-server Deployment configuration so that it starts working correctly in your cluster:
```
root@master:~# kubectl edit deployments -n kube-system metrics-server
...
apiVersion: extensions/v1beta1
kind: Deployment
...
      containers:
      - image: k8s.gcr.io/metrics-server-amd64:v0.3.6
        imagePullPolicy: Always
        name: metrics-server
        command:
        - /metrics-server
        - --kubelet-preferred-address-types=InternalIP,Hostname,ExternalIP
        - --kubelet-insecure-tls
...
```

## Cautions:
- It usually takes a few minutes to start responding with metrics statistics, so don't worry.
- If Kubernetes responds with `Error from server (ServiceUnavailable): the server is currently unable to handle the request (get nodes.metrics.k8s.io)` or `error: metrics not available yet` just wait for a while

## Check that:
- Metrics Server is deployed successfully and is `Running`
- Command `kubectl top nodes` shows performance statistics by nodes
- Command `kubectl top pods --all-namespaces` shows performance statistics by pods

## Documentation:
- https://kubernetes.io/docs/tasks/debug-application-cluster/resource-usage-monitoring/
- https://github.com/kubernetes-incubator/metrics-server
- https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#top
