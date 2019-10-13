
Create a Pod with the following parameters:

- Pod name: `green-pod`
- namespace: `default`
- Pod image: `nginx`
- Pod should have port with parameters:
  - name: `nginx-port`
  - container port: `80`
- label: `app: green-pod`
- make sure Pod has `Running` state

## Documentation:
- https://kubernetes.io/docs/concepts/services-networking/service/
