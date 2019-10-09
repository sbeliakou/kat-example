Create a simple pod with name `user-pod` which get only `user1` and `user2` fields from `users-cm` as environment variable with names `USER1` and `USER2` correspondingly:

## Requirements
- namespace: `default`
- pod name: `user-pod`
- image: `busybox`
- comand: `sleep 4800`
- pod should have env variable `USER1` with value from `user1` field of `users-cm` ConfigMap
- pod should have env variable `USER2` with value from `user2` field of `users-cm` ConfigMap
- other values shouldn't be in env variables of `user-pod`

## Documentation:
- https://kubernetes.io/docs/tasks/configure-pod-container/configure-pod-configmap/

