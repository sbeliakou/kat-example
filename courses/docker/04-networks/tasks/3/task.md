# {{ .Current }}. BRIDGE Network

Run two containers with the requirements below.

## Requirements:
- **Container #1**:
  - container should run in **detach** mode with a pseudo-TTY allocating;
  - container name: **alpine_busy**;
  - image name: **alpine**;

- **Container #2**:
  - container should run in **detach** mode with a pseudo-TTY allocating;
  - container name: **busybox_busy**;
  - image name: **busybox**;
  

Inspect the "bridge" network and answer the question below.  

## Documentation:
- https://docs.docker.com/v17.09/engine/userguide/networking/#default-networks
- https://docs.docker.com/engine/reference/commandline/network/

---