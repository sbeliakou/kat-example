# It's Done!

Some useful commands to know:

<pre class="file">

kubectl get deployments
kubectl describe deployments web

kubectl run nginx-deploy --image=nginx --restart=Always --replicas=3
kubectl create deployment nginx --image=nginx --dry-run -o yaml

kubectl set image deployment/nginx-deployment nginx=nginx:1.91 --record
kubectl rollout hostory deployment nginx

kubectl scale deployment nginx-deploy --replicas=10

</pre>
