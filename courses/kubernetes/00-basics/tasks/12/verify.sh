rs=$(kubectl get deployments -n simians crazymonkey -o jsonpath='{.status.replicas}')
rrs=$(kubectl get deployments -n simians crazymonkey -o jsonpath='{.status.readyReplicas}')

[ "$rs" == "12" ] &&
[ "$rs" == "$rrs" ] &&
kubectl get deployments -n simians crazymonkey -o jsonpath='{.spec.template.spec.containers[0].image}' | egrep '^busybox'