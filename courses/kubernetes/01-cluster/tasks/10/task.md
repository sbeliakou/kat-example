# {{ .Current }}. Labeling Resources

## Requirements:
- Label *node01* node as `worker`

```
kubectl get nodes
NAME     STATUS   ROLES      AGE     VERSION
master   Ready    master     3m43s   v1.15.3
node01   Ready    worker     46s     v1.15.3
```

## Tips:
- You should just label necessary node as `node-role.kubernetes.io/<< node role >>`
- Use commande like `kubectl label node <nodename> <labelname>=<labelvalue>`
- If you need to label resource with empty label just ommit `<labelvalue>`

## Documentation:
- http://kubernetesbyexample.com/labels/
- https://kubernetes.io/docs/concepts/cluster-administration/manage-deployment/#updating-labels
- https://kubernetes.io/docs/reference/generated/kubectl/kubectl-commands#label
