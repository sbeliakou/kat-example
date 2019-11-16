# {{ .Current }}. Docker Containers introduction

![Docker container](https://miro.medium.com/max/2020/1*bvnHtNKBLONsSdvF4pTMtw.png)

## Working with Containers
- **Lifecycle**:
  - `docker create` - creates a container but does not start it.
  - `docker rename` - allows the container to be renamed.
  - `docker run` - creates and starts a container in one operation.
  - `docker rm` - deletes a container.
  - `docker update` - updates a container's resource limits.
- **Starting and Stopping**:
  - `docker start` - starts a container so it is running.
  - `docker stop` - stops a running container.
  - `docker restart` - stops and starts a container.
  - `docker pause` - pauses a running container, "freezing" it in place.
  - `docker unpause` - will unpause a running container.
  - `docker wait` - blocks until running container stops.
  - `docker kill` - sends a SIGKILL to a running container.
  - `docker attach` - will connect to a running container.
- **Info**:
  - `docker ps` - shows running containers.
  - `docker logs` - gets logs from container.
  - `docker inspect` - looks at all the info on a container.
  - `docker events` - gets events from container.
  - `docker port` - shows public facing port of container.
  - `docker top` - shows running processes in container.
  - `docker stats` - shows containers' resource usage statistics.
  - `docker diff` - shows changed files in the container's FS.
- **Import / Export**:
  - `docker cp` - copies files or folders between a container and the local filesystem.
  - `docker export` - turns container filesystem into tarball archive stream to STDOUT.
- **Executing Commands**:
  - `docker exec` - to execute a command in container.


## Task

Inspect docker containers and answer the questions below.  


## Documentation:
- https://docs.docker.com/engine/reference/run/