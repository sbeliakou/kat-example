# It's Done!

Some useful commands to know:

<pre class="file">

kubectl get secrets
kubectl get secrets -n namespace
kubectl get secrets --all-namespaces

kubectl get secrets -n namespace secretname -o yaml

echo -n 'username' | base64 -w0   # dXNlcm5hbWU=
echo 'dXNlcm5hbWU=' | base64 -d   # username


</pre>
