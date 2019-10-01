## First, you should create a cluster.
1. Initialize Master node with `kubeadm`
2. Join node01 to the cluster

## Verify that:
- All Nodes in `Running` state
- All Cluster componenets are in healthy state: `kubectl get componentstatus`
