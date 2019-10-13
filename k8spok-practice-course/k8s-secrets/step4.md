
Create a simple secret with the following requirements:

## Requirements
- secret name: `devops-secret`
- namespace: `default`
- type: `Opaque`
- `username` field: `devops`
- `password` field: `devops_password`
- `email` field: `devops@devops.dev`
- all string data schould be encoded (using base64)


## Documentation:
- https://kubernetes.io/docs/concepts/configuration/secret/
