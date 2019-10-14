
Deploy nginx ingress-controller using the following sources:
- [Mandatory](https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml)
- [Service](https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/provider/cloud-generic.yaml)

Make sure **nginx-ingress-controller-...** Pod is running in **ingress-nginx** namespace. Also you should see **ingress-nginx** service in **ingress-nginx** namespace.  

Explore NodePort of **ingress-nginx** service. Open **Ingress** tab and enter **ingress-nginx** NodePort. You should see nginx ingress controller default page (*etc. openresty*).   

## Documentation:
- https://kubernetes.io/docs/concepts/services-networking/ingress/
- https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/
- https://kubernetes.github.io/ingress-nginx/
