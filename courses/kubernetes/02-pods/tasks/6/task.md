# {{ .Current }}. Static Pods

Create static Pod.

## Requirements:
- **Pod Name**: `static-nginx` (might be automatically added `-<<node-name>>` postfix in `kubectl get pods`)
- **Image**: `nginx`

For self-checking and discovering of static Pod's mechanism try to delete static Pod using `kubectl`. 

## Documentation:
- https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/