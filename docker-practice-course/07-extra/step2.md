
Expose Docker Daemon to TCP Socket: `0.0.0.0:2375`.  

## Requirements:
- docker have to get connections on **2375** port


## Check
You should see following output:
```
root@docker-host / $ curl -s 0.0.0.0:2375/info | jq -r '.'
{
  "ID": "BJVF:S2JA:XYGZ:WWQL:GNRZ:VCVZ:FAN7:FOV2:SZ56:RIGI:6U7Q:R6JD",
  "Containers": 0,
  "ContainersRunning": 0,
  "ContainersPaused": 0,
  "ContainersStopped": 0,
  "Images": 0,
   ...

```

## Documentation:
- https://docs.docker.com/config/daemon/
- https://docs.docker.com/engine/reference/commandline/dockerd/

---
