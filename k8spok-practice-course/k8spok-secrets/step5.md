
Create a simple pod with name `email-pod` which get only `email` field from `devops-secret` as environment variable with name `EMAIL`:

## Requirements
- namespace: `default`
- pod name: `email-pod`
- image: `busybox`
- comand: `sleep 4800`
- pod should have env variable `EMAIL` with value from `devops-secret` secret

## Documentation:
- https://kubernetes.io/docs/concepts/configuration/secret/
