
Change **nginx-test** ingress - add rule which will redirect to your flask application.  

## Requirements:
- Pod should run simple flask application with your **"Name Lastname"**
- Pod should be exposed with service
- Ingress rule:
  - path: `/author`
  - service name: **_service of your flask application_**


For self-checking open **Ingress** tab and enter **ingress-nginx** NodePort. You should see nginx ingress controller default page (*etc. openresty*).
Then add to the address `/nginx`.  
You should see **nginx** Pod default page.

## Documentation:
- https://kubernetes.io/docs/concepts/services-networking/ingress/
- https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/
- https://kubernetes.github.io/ingress-nginx/
