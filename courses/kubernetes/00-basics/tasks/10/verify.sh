kubectl get po -n default redis -o jsonpath='{.metadata.name}' | egrep '^redis$' && 
kubectl get po -n default redis -o jsonpath='{.spec.containers[0].image}' | egrep '^redis:5.0.6-alpine3.10$'