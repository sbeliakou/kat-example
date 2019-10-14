
Create ingress rule with will redirect to **nginx-svc** service.  

## Requirements:
- ingress name: `nginx-test`
- namespace: `default`
- path: `/nginx`
- service name: `nginx-svc`

For self-checking open **Ingress** tab and enter **ingress-nginx** NodePort. You should see nginx ingress controller default page (*etc. openresty*).
Then add to the address `/nginx`.  
You should see **nginx** Pod default page.

## Documentation:
- https://kubernetes.io/docs/concepts/services-networking/ingress/
- https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/
- https://kubernetes.github.io/ingress-nginx/
