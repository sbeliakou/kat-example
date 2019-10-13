
Create a simple pod with name `team-volume-pod` which will use `users-cm` ConfigMap as volume.

## Requirements
- namespace: `default`
- pod name: `team-volume-pod`
- image: `busybox`
- command: `sleep 3600`
- pod should use `users-cm` ConfigMap as attached volume
- volume name: `team-volume`
- mountPath: `/etc/team-members`

## Documentation:
- https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/
