kubectl get svc svc-echo-nodeport-30080 -o jsonpath='{.spec.ports[*].nodePort}' | egrep '^30080$' &&
curl localhost:30080 | grep 'hostname: web-echo'