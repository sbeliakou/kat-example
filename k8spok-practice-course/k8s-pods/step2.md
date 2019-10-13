
Create a pod called `multi-pod` with two containers. 

## Requirements:
- **Container 1**:
  - name: `alpha`
  - image: `nginx:alpine`
  - environment variables: type=main

- **Container 2**:
  - name: `beta`
  - image: `busybox`
  - environment variables: type=sidecar
  - command: `sleep 4800`

## Documentation:
- https://kubernetes.io/docs/concepts/workloads/pods/pod/
