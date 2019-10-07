Create a simple pod with name `dev-pod` which get all fields from `devops-secret` as environment variable with names `USERNAME`, `PASSWORD`, `EMAIL` correspondingly.

## Requirements
- namespace: `default`
- pod name: `dev-pod`
- image: `busybox`
- command: `sleep 4800`
- pod should have env variables `USERNAME`, `PASSWORD`, `EMAIL` with values from `devops-secret` secret correspondingly (hint: envFrom).

## Documentation:
- https://kubernetes.io/docs/concepts/configuration/secret/
