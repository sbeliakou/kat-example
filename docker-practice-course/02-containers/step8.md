
Run the container with the requirements below.

## Requirements:
- image: `busybox`;
- container name: `busy`;
- container should run in **detach** mode;
- default user id: `1000`;
- default user should belongs to group with `gid=0` (primary) and `gid=1200`(supplementary);
- workdir: `/data`;
- container should have env variable: `STUDENT=ivanov`;
- command: `sleep infinity`.
  
  
## Documentation:
- https://docs.docker.com/engine/reference/run/


---
