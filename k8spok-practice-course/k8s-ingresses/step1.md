
Create a simple Pod `nginx` and expose it.

## Requirements:
- Pod:
  - namespace: `default`
  - name: `nginx`
  - image: `nginx`
  - port: `80`
- service:
  - namespace: `default`
  - name: `nginx-svc`
  - type: `ClusterIP`
  - targetPort: `80`

## Documentation:
- https://kubernetes.io/docs/concepts/services-networking/ingress/
- https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/
- https://kubernetes.github.io/ingress-nginx/
