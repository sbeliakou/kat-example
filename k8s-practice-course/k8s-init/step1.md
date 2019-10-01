## First, you should create a cluster.
1. Initialize Master node with `kubeadm`
2. Deploy `waeve` POD Network
3. Join node01 to the cluster

## Make sure that:
- All Nodes in `Running` state: `kubectl get nodes`
- All Cluster componenets are in healthy state: `kubectl get componentstatus`

## Documentation:
- https://kubernetes.io/docs/setup/production-environment/tools/kubeadm/create-cluster-kubeadm/
- https://www.weave.works/blog/weave-net-kubernetes-integration/