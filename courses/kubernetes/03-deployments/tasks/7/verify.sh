kubectl get deployments. -n tomato tomato -o jsonpath='{.status.readyReplicas}' | grep '^1$' &&
kubectl get deployments. -n tomato tomato -o jsonpath='{.metadata.labels.vegetable}' | grep '^tomato$'