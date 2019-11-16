rs=$(kubectl get deployment web-echo -o jsonpath='{.status.replicas}')
rrs=$(kubectl get deployment web-echo -o jsonpath='{.status.readyReplicas}')
pod_lbl=$(kubectl get deployment web-echo -o jsonpath='{.metadata.labels.app}')
svc_lbl=$(kubectl get svc echo-service -o jsonpath='{.spec.selector.app}')

[ $rs -eq $rrs ] && 
[ "${pod_lbl}" == "${svc_lbl}" ]