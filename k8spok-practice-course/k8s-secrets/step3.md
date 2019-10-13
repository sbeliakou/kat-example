
You are given `username_file` and `password_file` in `/data` directory. With `kubectl` create a secret using these files.

## Requiremets
- secret name: `admin-secret`
- namespace: `default`
- from files: `/data/username_file`, `password_file`

## Documentation:
- https://kubernetes.io/docs/concepts/configuration/secret/
