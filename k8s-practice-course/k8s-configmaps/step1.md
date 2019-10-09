Examine the ConfigMaps in cluster and answer the questions below.

>>Q1: Enter the number of ConfigMaps in default namespace<<
=== 0

>>Q2: Enter the number of ConfigMaps in all namespaces<<
=== 12

>>Q3: Enter the number of ConfigMaps in "safe" namespace<<
=== 5

>>Q4: What data is safed in "ingridients" field of "recipe3" ConfigMap?<<
=== flour_sugar_and_3_apples

>>Q5: Find out "dnsDomain" value of cluster in "kubeadm-config" ConfigMap<<
=== cluster.local

>>Q6: ConfigMaps can store yaml definitions as data. (hint: explore ClusterConfiguration in "kubeadm-config" ConfigMap)<<
(*) True
( ) False



## Documentation:
- https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/
