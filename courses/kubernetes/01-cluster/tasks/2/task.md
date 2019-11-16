# {{ .Current }}. You just should have seen following output:

```
root@master:/# kubectl --kubeconfig=/etc/kubernetes/admin.conf get componentstatuses 
NAME                 STATUS    MESSAGE             ERROR
scheduler            Healthy   ok                  
controller-manager   Healthy   ok                  
etcd-0               Healthy   {"health":"true"}   
```

It shows statuses of all core Kubernetes componenets.<br>
There's also `API Server`. But if you see the output as above it means API server works good.

As you see, currently it's not really convenient to use extra option `--kubeconfig=/etc/kubernetes/admin.conf`. But this is the way how we can be authorized on the cluster as admins. We will find better way for using this file next level.

To explore the infrastructure during the quiz, please use one of the following approaches:
- `export KUBECONFIG=/etc/kubernetes/admin.conf`
- `kubectl --kubeconfig=/etc/kubernetes/admin.conf ...`

Let's take a look at the infrastructure we have got right now.
---