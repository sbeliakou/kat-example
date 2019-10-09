You are given a `headless-pod` Pod. Create a headless service for exposing `headless-pod`.

Requirements:
- service name: `headless-svc`
- namespace: `headless`

For self-checking run another pod with `centos` image and try to get content of `headless-pod`:  
`curl headless-svc.headless.svc.cluster.local`  

You should see nginx default page.


## Documentation:
- https://kubernetes.io/docs/concepts/services-networking/service/


