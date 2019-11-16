# {{ .Current }}. Deploying Ingress-Controller

![ingress](https://raw.githubusercontent.com/sbeliakou/mentor/master/.img/ingress.png)


## Requirements :
- [Ingress-controller manifest](https://raw.githubusercontent.com/kubernetes/ingress-nginx/master/deploy/static/mandatory.yaml)
- Ingress-controller Service Manifest: `/opt/manifests/ingress-svc.yaml`


## Please be patient. It may take a while ...

## Verification:  
- Make sure **nginx-ingress-controller-...** Pod is running in **ingress-nginx** namespace. Also you should see **ingress-nginx** service in **ingress-nginx** namespace.  
- Explore `localhost` page in your browser. You should see nginx ingress controller default page (*etc. openresty*). 
- Explore `localhost/green` page in your browser. You should see green color page.  
  

## Documentation:
- https://kubernetes.io/docs/concepts/services-networking/ingress/
- https://kubernetes.io/docs/concepts/services-networking/ingress-controllers/
- https://kubernetes.github.io/ingress-nginx/