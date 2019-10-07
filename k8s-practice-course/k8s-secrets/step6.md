Create a simple pod with name `dev_pod` which get all fields from `devops_secret` as environment variable with names `USERNAME`, `PASSWORD`, `EMAIL` correspondingly.

## Requirements
- namespace: `default`
- pod name: `dev_pod`
- pod should have env variables `USERNAME`, `PASSWORD`, `EMAIL` with values from `devops_secret` secret correspondingly.

## Documentation:
- https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/
