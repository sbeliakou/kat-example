Create a pod called `multi-pod` with two containers. 

**Container 1**:
- name: alpha
- image: nginx
- environment variables: type=main

**Container 2**:
- name: beta
- image: busybox
- environment variables: type=sidecar
- command: sleep 4800
