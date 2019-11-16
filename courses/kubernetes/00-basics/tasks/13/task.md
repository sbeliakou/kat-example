# {{ .Current }}. Service (SVC)

Kubernetes Pods are mortal. They are born and when they die, they are not resurrected. If you use a Deployment to run your app, it can create and destroy Pods dynamically.

Each Pod gets its own IP address, however in a Deployment, the set of Pods running in at the moment in time could be different from the set of Pods running that application a moment later.

Simply saying, a Service aggregates pods at backend and acts as a LoadBalancer.

Here's simple definition of the service:
```
apiVersion: v1
kind: Service
metadata:
  name: echo-service
spec:
  selector:
    app: << set the same label as deployment has >>
  ports:
    - protocol: TCP
      port: 80
      targetPort: 8080
```

## Task:
- Deploy Echo Application from here: `/opt/practice/web-echo-deployment.yaml`
- Deploy Echo Service from the snippet above

## Validation:
To see if svc has own IP
```
$ kubectl get svc echo-service
NAME           TYPE        CLUSTER-IP      EXTERNAL-IP   PORT(S)   AGE
echo-service   ClusterIP   10.102.161.86   <none>        80/TCP    13s
```

To see if our svc (ep) has discovered backends
```
$ kubectl describe ep echo-service 
Name:         echo-service
Namespace:    default
Labels:       <none>
Annotations:  endpoints.kubernetes.io/last-change-trigger-time: 2019-11-02T11:50:32Z
Subsets:
  Addresses:          10.244.0.59,10.244.0.60,10.244.0.61,10.244.0.62,10.244.0.63
  NotReadyAddresses:  <none>
  Ports:
    Name     Port  Protocol
    ----     ----  --------
    <unset>  8080  TCP

# Or simply this:
$ kubectl get ep echo-service -o jsonpath='{.subsets[*].addresses[*].ip}'
10.244.0.59 10.244.0.60 10.244.0.61 10.244.0.62 10.244.0.63
```

To check what addresses our pods have (note: we use the same selector as svc):
```
$ kubectl get pods -l app=echo-application -o wide
NAME                       READY   STATUS    RESTARTS   AGE  IP            NODE     NOMINATED NODE   READINESS GATES
web-echo-547479747-tgwhf   1/1     Running   0          1m   10.244.0.59   master   <none>           <none>
web-echo-547479747-qtqph   1/1     Running   0          1m   10.244.0.60   master   <none>           <none>
web-echo-547479747-fb65d   1/1     Running   0          1m   10.244.0.61   master   <none>           <none>
web-echo-547479747-cqfc9   1/1     Running   0          1m   10.244.0.62   master   <none>           <none>
web-echo-547479747-z8hjz   1/1     Running   0          1m   10.244.0.63   master   <none>           <none>
```

## Documentation
- https://kubernetes.io/docs/concepts/services-networking/service/