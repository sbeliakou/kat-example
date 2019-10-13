
Create a simple pod with name `team-pod` which get all fields from `users-cm` ConfigMap as environment variable.

## Requirements
- namespace: `default`
- pod name: `team-pod`
- image: `busybox`
- command: `sleep 4800`
- pod should have env variables from all `users-cm` ConfigMap fields (hint: envFrom).

## Documentation:
- https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/
