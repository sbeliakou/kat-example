until kubectl get node master -o jsonpath='{.status.conditions[?(@.type=="Ready")].status}' | grep True; do sleep 1; done
kubectl delete secret -n kube-system bootstrap-token-abcdef
kubectl delete configmap -n kube-public cluster-info