# Summary

We have created Kubernetes cluster of two nodes, configured client access, deployed dashboard, ingress-controller and metrics server.
Some useful commands you should capture:

```
kubectl get nodes
kubectl cluster-info
kubectl get componentstatus

kubectl get ns ...
kubectl get po ...
kubectl get deployments ...
kubectl describe po ...
kubectl describe deployments ...

kubectl top nodes
kubectl top pods 
kubectl top pods --all-namespaces
```