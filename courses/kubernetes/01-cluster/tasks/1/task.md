# {{ .Current }}. Kubernetes Control Plane

![cluster](https://raw.githubusercontent.com/sbeliakou/mentor/master/.img/control_plane.png)

## Task Description

We're going to initialize Cluster Control Plane (Master) with `kubeadm` tool.

The most common commands are:
- `kubeadm init ...`
- `kubeadm join ...`
- `kubeadm token ...`

Please follow the requirements and create the cluster.

## Requirements:
- token: `abcdef.0123456789abcdef`
- token life duration: `20m`
- Pod Network CIDR: `10.244.0.0/16`

## Tips:
- To initialize cluster control plane, please run following command `kubeadm init`. Please look for required options
- You can destroy cluster configuration with `kubeadm reset cluster`
- Use `--ignore-preflight-errors=all` to disable SWAP and IPTABLES setttings which fail preflight checks
- You can find nearly created admin config file (to operate with Kubernetes cluster) in `/etc/kubernetes/`

## Verification:
```
root@master:/# kubectl --kubeconfig=/etc/kubernetes/admin.conf get nodes
kubectl get nodes
NAME     STATUS   ROLES    AGE     VERSION
master   Ready    master   35s     v1.15.3

root@master:/# kubectl --kubeconfig=/etc/kubernetes/admin.conf get componentstatuses 
NAME                 STATUS    MESSAGE             ERROR
scheduler            Healthy   ok                  
controller-manager   Healthy   ok                  
etcd-0               Healthy   {"health":"true"}   
```

## Documentation:
- https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/