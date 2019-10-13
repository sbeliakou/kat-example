
Using `yaml` definition create another service which will be exposing `green-pod` Pod with the following requirements:

- namespace: `default`
- service name: `green-svc-2`
- selector: `app: green-pod`
- type: `NodePort`
- nodePort: 32005


## Documentation:
- https://kubernetes.io/docs/concepts/services-networking/service/
