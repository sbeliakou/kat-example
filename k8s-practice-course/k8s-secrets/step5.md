Create a simple pod with name `email_pod` which get only `email` field from `devops_secret` as environment variable with name `EMAIL`:

## Requirements
- namespace: `default`
- pod name: `email_pod`
- pod should have env variable `EMAIL` with value from `devops_secret` secret

## Documentation:
- https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/
