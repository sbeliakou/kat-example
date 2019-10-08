Record current version of `nginx-deploy` deployment. Use rolling upgrade to provide it with the `1.17` version of `nginx:alpine`. Make sure, that both `1.16` and `1.17` versions are in the rollout history. Then, rollback to `1.16` version

Requirements:
- deployment image is `nginx:1.16-alpine`
- deployment has been upgraded to version `1.17-alpine` using rolling update
- upgraded version is recorded in the resource annotation
- deployment has been rollbacked to version `1.16`
