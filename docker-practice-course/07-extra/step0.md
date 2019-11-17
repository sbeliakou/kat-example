
Change **Logging Driver** of docker daemon settings from `json-file` to `syslog`  

You just should see the output like following:

```
$ docker info | grep Logging
Logging Driver: syslog
```

## Documentation:
- https://docs.docker.com/config/daemon/
- https://docs.docker.com/engine/reference/commandline/dockerd/


---
