Go to the `Green` tab again and enter the earlier set nodePort value into box.

Make sure start page of nginx is available again.


Moreover, you can reach nginx page with curl:
`curl hostIP:nodePort`
where `hostIP` is from `.status.hostIP` section of our Pod (`green-pod`)
      `nodePort` the value from `green-svc-2` service
Try to execute it.


## Documentation:
- https://kubernetes.io/docs/concepts/services-networking/service/

