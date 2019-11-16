# {{ .Current }}. UTS Namespace

Create container and run it in UTS namespace of the Host.    
  

## Requirements:
- container name: **busy-host**;
- should run in **detach** mode;
- image: **busybox**;
- command: `sleep infinity`;
- should run in UTS Namespace of the host.  
  

For self-cheking execute command `hostname` in **busy-host** container. You should see the following output:  
```
root@docker-host / $ hostname
docker-host
root@docker-host / $ docker exec busy-host hostname
docker-host
```

## Documentation:
- https://docs.docker.com/engine/reference/run/#pid-settings---pid
- https://docs.docker.com/engine/reference/run/#uts-settings---uts
- https://docs.docker.com/engine/reference/run/#ipc-settings---ipc
- https://docs.docker.com/engine/reference/run/#network-settings
- https://docs.docker.com/engine/reference/run/#runtime-constraints-on-resources


---