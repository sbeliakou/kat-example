
Run Nginx and Tomcat in Custom Network created on previous step (specify label which points to
custom bridge network).  
  

## Requirements:
- **Container #1**:
  - container should run in **detach** mode;
  - container name: **nginx-ivanov-bridge**;
  - container should be attached to the **ivanov-bridge** network;
  - container should have the same label as **ivanov-bridge** network;
  - image name: **nginx**;

- **Container #2**:
  - container should run in **detach** mode;
  - container name: **tomcat-ivanov-bridge**;
  - container should be attached to the **ivanov-bridge** network;
  - container should have the same label as **ivanov-bridge** network;
  - image name: **tomcat**;
  

Inspect the **ivanov-bridge** network and answer the question below.  

## Documentation:
- https://docs.docker.com/v17.09/engine/userguide/networking/#default-networks
- https://docs.docker.com/engine/reference/commandline/network/

---
