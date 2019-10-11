
Create a simple pod with name `dev-volume-pod` which will use `devops-secret` secret as volume.

## Requirements
- namespace: `default`
- pod name: `dev-volume-pod`
- image: `busybox`
- command: `sleep 3600`
- pod should use `devops-secret` as attached volume
- volume name: `devops-volume`
- mountPath: `/etc/devops-secret`

## Documentation:
- https://kubernetes.io/docs/concepts/configuration/secret/
