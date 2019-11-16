# {{ .Current }}. Pods

A Kubernetes pod is a group of containers with shared storage, network, and cgroup that are always scheduled to run on the same node. A pod is also the the smallest deployable unit of compute that can be created and managed by Kubernetes.

![A Pod](https://raw.githubusercontent.com/sbeliakou/mentor/master/.img/pods.png)

## Useful commands:
```
kubectl get podd
kubectl get pods -n <<namespace>>
kubectl get pods <<pod_name>>
kubectl get pods <<pod_name>> -n <<namespace>>
kubectl get pods <<pod_name>> --all-namespaces
kubectl get pods <<pod_name>> -o yaml
kubectl get pods <<pod_name>> -o wide

kubectl describe pods <<pod_name>> 
kubectl describe pods <<pod_name>> -n <<namespace>> 

kubectl apply -f <<pod-manifest.yaml>>
kubectl delete -f <<pod-manifest.yaml>>

kubectl run <<pod_name>> [-n <<namespace>>] --generator=run-pod/v1 --image=<<pod_image>>
kubectl run <<pod_name>> [-n <<namespace>>] --generator=run-pod/v1 --image=<<pod_image>> -- --command <<container_command>>
```

## Let's explore what Pods are about