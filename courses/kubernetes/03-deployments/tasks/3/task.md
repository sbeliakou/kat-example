# {{ .Current }}. Updating Deployment

Use rolling upgrade to provide it with the `1.17` version of `nginx:alpine`.<br>Please check ReplicaSets status.

## Requirements:
- current deployment image is `nginx:1.16-alpine`
- new deployment has been upgraded to version `1.17-alpine` using rolling update

## Commands:
- `kubectl set image <<resource>> <<resource name>> <<contanier>>=<<new image>>`
- `kubectl describe <<resource>> <<resource name>>`
- `kubectl get rs <<replicaset name>>`

## Note:
- You can easily roll back with the command `kubectl rollout undo <<resource>> <<deployment name>>`

## Verification:
- There should be 2 replicas like here:
> ```
> kubectl get rs -o wide
> NAME                      DESIRED   CURRENT   READY   ...   IMAGES              ...
> nginx-deploy-5ffcd8bc7f   0         0         0       ...   nginx:1.16-alpine   ...
> nginx-deploy-698fdf9b46   3         3         3       ...   nginx:1.17-alpine   ...
> ```

## Documentation:
- https://kubernetes.io/docs/concepts/workloads/controllers/deployment/
