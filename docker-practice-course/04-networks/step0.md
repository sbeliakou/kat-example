
![Docker Bridge Network](http://img.scoop.it/bmExZyvGWidultcwx9hCb7nTzqrqzN7Y9aBZTaXoQ8Q=)

## Working with Network
- `docker network connect` - Connect a container to a network;
- `docker network create` - Create a network;
- `docker network disconnect` - Disconnect a container from a network;
- `docker network inspect` - Display detailed information on one or more networks;
- `docker network ls` - List networks;
- `docker network prune` - Remove all unused networks;
- `docker network rm` - Remove one or more networks.


## Network Drivers
Docker’s networking subsystem is pluggable, using drivers. Several drivers exist by default, and provide core networking functionality:  

`docker info | grep Network`  
  
- **bridge**: The default network driver. Bridge networks are usually used when your applications run in standalone containers that need to communicate.
- **host**: For standalone containers, remove network isolation between the container and the Docker host, and use the host’s networking directly.
- **overlay**: Overlay networks connect multiple Docker daemons together and enable swarm services to communicate with each other.
- **macvlan**: Macvlan networks allow you to assign a MAC address to a container, making it appear as a physical device on your network. Using the macvlan driver is sometimes the best choice when dealing with legacy applications that expect to be directly connected to the physical network, rather than routed through the Docker host’s network stack.
- **null**: For this container, disable all networking. Usually used in conjunction with a custom network driver.  
  

## Task

We've deployed a few docker networks. Inspect them and answer the questions below.    
  
## Documentation:
- https://docs.docker.com/v17.09/engine/userguide/networking/#default-networks
- https://docs.docker.com/engine/reference/commandline/network/

---
