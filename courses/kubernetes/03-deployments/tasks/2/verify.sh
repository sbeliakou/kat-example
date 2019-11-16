rs=$(kubectl get rs | grep nginx-deploy | awk '{print $1}')
kubectl get events | grep replicaset/$rs | wc -l | xargs -IF [ F -gt 3 ]