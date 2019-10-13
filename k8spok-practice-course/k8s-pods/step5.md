
### Create a static Pod on `node01` node.

## Requirements:
- Pod name in metadata: `static-nginx` (might be automatically added `-node01` postfix in `kubectl get pods`)
- should be runned on `node01`
- image: `nginx`

For self-checking and discovering of static Pod's mechanism try to delete static Pod using `kubectl`. 

## Documentation:
- https://kubernetes.io/docs/tasks/configure-pod-container/static-pod/
