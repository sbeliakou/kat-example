
## Docker Architecture 
![Docker Architecture](https://www.aquasec.com/wiki/download/attachments/2854889/Docker_Architecture.png)

## Docker Infrastructure
![Docker Infrastructure](https://miro.medium.com/max/1578/1*uEtAhWOHVMFo5kRUnhKNBg.png)

#### dockerd:
- The Docker daemon itself. The highest level component in your list and also
the only 'Docker' product listed. Provides all the nice UX features of Docker.

#### docker-containerd:
- It’s a daemon, listening on a Unix socket, exposes gRPC endpoints. Handles
all the low-level container management tasks, storage, image distribution,
network attachment, etc...

#### docker-containerd-ctr:
- A lightweight CLI to directly communicate with containerd. Think of it as
how 'docker' is to 'dockerd'.

#### docker-containerd-shim:
- After runC actually runs the container, it exits (allowing us to not have any long-running processes responsible for our containers). The shim is the
component which sits between containerd and runc to facilitate this.

#### docker-runc:
- A lightweight binary for actually running containers. Deals with the lowlevel interfacing with Linux capabilities like cgroups, namespaces, etc...

#### docker-proxy:
- A tool responsible for proxying container's ports to Host's interface

## Useful commands:
```
docker version
docker info
```
## Documentation:
- https://docs.docker.com/config/daemon/
- https://docs.docker.com/engine/reference/commandline/dockerd/
  
Inspect Docker Configuration and answer the questions below. 

--- 
