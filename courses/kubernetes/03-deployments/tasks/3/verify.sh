rs16=$(kubectl get rs -o wide | grep 'nginx:1.16-alpine' | awk '{print $1}')
rs17=$(kubectl get rs -o wide | grep 'nginx:1.17-alpine' | awk '{print $1}')

[ -n "$rs16" ] && [ -n "$rs17" ] &&
kubectl get rs | grep -v NAME | wc  -l | grep '^2$' &&
[ $(kubectl get rs/${rs17} -o jsonpath='{.status.availableReplicas}') -eq 3 ]