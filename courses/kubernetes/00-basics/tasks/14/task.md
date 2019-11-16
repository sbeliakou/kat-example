# {{ .Current }}. Publishing Services (ServiceTypes)

For some parts of your application (for example, frontends) you may want to expose a Service onto an external IP address, that’s outside of your cluster.

Kubernetes ServiceTypes allow you to specify what kind of Service you want. The default is `ClusterIP`.

Type values and their behaviors are:
- **ClusterIP**: Exposes the Service on a cluster-internal IP. This is the default ServiceType.
- **NodePort**: Exposes the Service on each Node’s IP at a static port (the NodePort).
- **LoadBalancer**: Exposes the Service externally using a CLOUD provider’s load balancer.

## Task:
Expose Web-Echo Deployment to NodePort

Example definition:
```yaml
apiVersion: v1
kind: Service
metadata:
  name: << svc-name >>
spec:
  ports:
  - nodePort: << node port >>
    port: << svc port >>
    protocol: TCP
    targetPort: << pod port >>
  selector:
    << selecting rules >>
  type: NodePort
```

## Requirements:
- **Svc Name**: `svc-echo-nodeport-30080`
- **Svc Type**: `NodePort`
- **Node Port**: `30080`
- **Pod Target Port**: `8080`
- **Pod Selector**: `app=echo-application`

## Documentation
- https://kubernetes.io/docs/concepts/services-networking/service/#publishing-services-service-types