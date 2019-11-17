
![](https://cdn-images-1.medium.com/max/800/0*Eie6amq_FGqEtRPN.png)

**Cgroups** - limits how much you can use
  - Resource metering and limiting:
  - memory
  - CPU
  - block I/O
  - network
  - Device node `/dev/*` access control  
  
**Namespaces** - limits what you can see (and therefore use)
  - Provide processes with their own view of the system
  - Multiple namespaces:
    - pid – isolates the process ID number space
    - net – manages network devices
    - mnt – to see distinct single- directory hierarchies
    - uts – isolating hostnames
    - ipc – manages shared memory areas, message queues, and semaphores
  - Each process is in one namespace of each type


## Documentation:
- https://docs.docker.com/engine/reference/run/#pid-settings---pid
- https://docs.docker.com/engine/reference/run/#uts-settings---uts
- https://docs.docker.com/engine/reference/run/#ipc-settings---ipc
- https://docs.docker.com/engine/reference/run/#network-settings
- https://docs.docker.com/engine/reference/run/#runtime-constraints-on-resources
