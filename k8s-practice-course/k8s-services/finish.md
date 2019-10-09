# It's Done!

Some useful commands to know:

<pre class="file">

kubectl get services
kubectl get services --all-namespaces
kubectl get services -n <namespaceName>

kubectl expose pod green-pod --name=green-svc --target-port=80 --type=NodePort
kubectl expose deployment green-dep --name=green-svc-2 --target-port=80 --type=LoadBalancer


</pre>
