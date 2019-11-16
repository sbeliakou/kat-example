until kubectl get node master -o jsonpath='{.status.conditions[?(@.type=="Ready")].status}' | grep True; do sleep 1; done
kubectl taint node master node-role.kubernetes.io/master-
kubectl label node master node-role.kubernetes.io/worker=