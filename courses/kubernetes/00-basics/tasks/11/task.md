# {{ .Current }}. Deployments

A Kubernetes **deployment** manages scheduling and lifecycle of pods. Deployments provide several key features for managing pods, including rolling out pods updates, rolling back, and easily scaling pods horizontally.

## Useful Commands:
```
kubectl apply -f deployment.yaml
kubectl get deploy
kubectl get deploy --show-labels
kubectl get deploy -n <<namespace>>
kubectl get deploy -o yaml
kubectl describe deploy -n <<namespace>>
kubectl delete deploy <<namespace>>
```

## Please stude the infrastructure and answer the following questions: