# {{ .Current }}. Restarting Policy

What if the main process inside container fails? What happens with the container?
Let's simulate situation where our container ends in a few seconds after its start.

## Task:

Create two containers with the commands working for a short period of time.<br>
Run these containers so that:
- The 1st one will be restarted regardless of the exit status;
- The 1st one will be restarted only if the container exits with a non-zero exit status and has 7 restart retries.  

## Requirements:
- **Container #1**:
  - runs in **detach** mode
  - should restart regardless of the exit status
  - container name: `restarter_1`
  - image name: `busybox`
  - command: `sleep 3`

- **Container #2**:
  - should runned in **detach** mode
  - should restart only if the container exits with a non-zero exit status
  - should have 7 restart retries
  - container name: `restarter_2`
  - image name: `busybox`
  - command: `sleep -3`
  
Inspect statuses of created containers.  

## Documentation:
- https://docs.docker.com/engine/reference/run/
- https://docs.docker.com/config/containers/start-containers-automatically/

---