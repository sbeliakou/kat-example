# {{ .Current }}. Namespaces

In case you want to organize multiple users into separate teams projects, you can divide cluster into "sub-clusters" using **_Namespaces_**. The names of the resources/objects created inside a **Namespace** are unique, but not across Namespaces.

## Useful Commands:
```
kubectl create -f namespace.yaml
kubectl get namespaces
kubectl get namespaces --show-labels
kubectl get ns << NS_NAME >>
kubectl explain namespace << NS_NAME >>
kubectl describe ns << NS_NAME >>
kubectl delete ns << NS_NAME >>
```

## Documentation:
- https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces/

## Answer the following question: