# {{ .Current }}. Joining `node01` to the cluster 

![worker](https://raw.githubusercontent.com/sbeliakou/mentor/master/.img/cluster.png)

## Task:
- Join worker node `node01` to the cluster
- Make sure Kubernetes service will start after system reboot automatically

Command to be used (on node01):
```
kubeadm join <arguments>
```

## Tips:
- Remember, token should be `fedcba.fedcba9876543210`?
- Default API Port on `master` is `6443`
- Use `ssh node01` to connect to `node01` host
- Use also `--discovery-token-unsafe-skip-ca-verification` and  `--ignore-preflight-errors=all` options
- Wait till `node01` turns to `Ready` state

## Verification:
```
root@master:/# kubectl get nodes
NAME     STATUS   ROLES    AGE   VERSION
master   Ready    master   39m   v1.15.3
node01   Ready    <none>   70s   v1.15.3
```

## Documentation:
- https://kubernetes.io/docs/reference/setup-tools/kubeadm/kubeadm-join/

