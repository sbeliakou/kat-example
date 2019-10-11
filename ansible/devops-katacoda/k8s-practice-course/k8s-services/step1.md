
Examine the services in cluster and answer the questions below.

>>Q1: Enter the number of services in default namespace<<
=== 1

>>Q2: What name of the service?<<
=== kubernetes

>>Q3: What type of the service?<<
=== ClusterIP



>>Q4: How many services are there in all namespaces<<
=== 5

>>Q5: What types of ports are there in "red" namespace<<
[*] LoadBalancer
[ ] TelePort
[*] ClusterIP
[*] NodePort 

>>Q6: What the nodePort of "red-cluster-svc" service?<<
( ) 6443
( ) 32435
(*) service doesn't have nodePort
( ) 31200

>>Q7: What the nodePort of "red-node-svc" service?<<
( ) 6443
( ) 32435
( ) service doesn't have nodePort
(*) 31200

>>Q8: What the targetPort of "red-lb-svc" service?<<
(*) 8000
( ) 32435
( ) service doesn't have targetPort
( ) 31200

>>Q9: What the selector does "red-cluster-svc" service have?<<
(*) app: red-pod
( ) run: red-pod
( ) app: red-cluster-svc
( ) run: red-cluster-svc


## Documentation:
- https://kubernetes.io/docs/concepts/services-networking/service/
