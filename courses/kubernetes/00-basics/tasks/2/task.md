# {{ .Current }}. Creating and Deleting Namespaces

## Useful Commands:
```
kubectl get ns
kubectl create ns <<namespace>>
kubectl delete ns <<namespace>>

kubectl label <<resource type>> <<resource name>> <<key=value>>
```

## Tasks:
1. Create Namespace `cucumber-prod`
2. Delete Namespace `potato-dev`
3. Create Namespace `{{ .StudentShort }}` and label it with the labels below:
    - `name={{ .StudentName }}`
    - `surname={{ .StudentSurname }}`

