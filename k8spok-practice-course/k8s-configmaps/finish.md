# It's Done!

Some useful commands to know:

<pre class="file">

kubectl get configmaps
kubectl get configmaps -n <namespace>
kubectl get configmaps --all-namespaces

kubectl get configmaps -n <namespace> configmapname -o yaml

kubectl get configmaps devops-configmap -o yaml -o jsonpath='{.data.username}'   # devops

</pre>
