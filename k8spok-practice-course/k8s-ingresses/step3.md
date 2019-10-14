
You are given a three Pods: **red**, **green** and **yellow**.  
Expose given Pods with services (type - **ClusterIP**).

Create **Ingress** which will redirect to these Pods depends on URL path:  
- `/red` path - to **red** Pod
- `/green` path - to **green** Pod
- `/yellow` path - to **yellow** Pod

Explore NodePort of **ingress-nginx** service. Open **Ingress** tab and enter **ingress-nginx** NodePort. You should see nginx ingress controller default page (*etc. openresty*).  
Add to address `/red`, `green` and `yellow` and check the result.  
You should see **red**, **green** and **yellow** page correspondingly.  

## Documentation:
- https://kubernetes.io/docs/concepts/services-networking/ingress/
- https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/
- https://kubernetes.github.io/ingress-nginx/
