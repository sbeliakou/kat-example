# It's Done!

Some useful commands to know:

<pre class="file">

kubectl run web --image=httpd --generator=run-pod/v1
kubectl run web --image=httpd --generator=run-pod/v1 --dry-run -o yaml
kubectl label pod app=web

kubectl describe pod web
kubectl get pod web -o yaml
</pre>