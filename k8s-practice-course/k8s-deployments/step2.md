Update `nginx-deploy` deploymnet with new image

Requirements:
- record current version of the `nginx-deploy` deployment
- upgrade the deployment to version `1.17-alpine` using rolling update
- make sure that the version upgrade is recorded in the resource annotation
