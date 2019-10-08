Discover the `nodePort` value of `green-svc` service.  
Go to the `Green` tab and enter the nodePort value into box.  

Make sure start page of nginx is available.  


Moreover, you can reach nginx page with curl:  
`curl hostIP:nodePort`  
where `hostIP` is from `.status.hostIP` section of our Pod (`green-pod`)  
      `nodePort` the value from `green-svc` service.  

Try to execute it.


## Documentation:
- https://kubernetes.io/docs/concepts/services-networking/service/

