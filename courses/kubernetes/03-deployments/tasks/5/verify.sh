[ `kubectl get deployment orange -n orange -o jsonpath='{.metadata.name}'` == "orange" ] && 
[ `kubectl get deployment orange -n orange -o jsonpath='{.spec.template.spec.containers[0].image}'` == "nginx:1.16-alpine" ] && 
[ `kubectl get deployment orange -n orange -o jsonpath='{.spec.replicas}'` == 2 ] &&
[ `kubectl get deployment orange -n orange -o jsonpath='{.status.readyReplicas}'` == 2 ] &&
[[ `kubectl get deployment orange -n orange -o jsonpath='{.spec.template.spec.initContainers[0].image}'` =~ "busybox" ]] &&
[ `kubectl get deployment orange -n orange -o jsonpath='{.spec.template.spec.initContainers[0].command[1]}'` == 10 ]