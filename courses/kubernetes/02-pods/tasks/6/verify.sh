[ "$(kubectl get pods static-nginx-master -o jsonpath='{.status.phase}')" == "Running" ] &&
grep static-nginx /etc/kubernetes/manifests/*