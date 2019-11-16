# {{ .Current }}. Sharing data between Containers

Run  containers with the requirements below.  

## Requirements:
- **html_data** container:
  - should run in **detach** mode;
  - should have name: **html_data**;
  - should mount `/root/index.html` file on host to `/usr/share/nginx/html/index.html` on container;
  - used image: **busybox**;  
- **Web Container #1**:
  - container should run in **detach** mode;
  - container should expose **80** container port to **10085** host port;
  - container should use volume from **html_data** container;
  - container name: **c10085**;
  - used image: **nginx**.  
- **Web container #2**:
  - container should run in **detach** mode;
  - container should expose **80** container port to **10086** host port;
  - container should use volume from **html_data** container;
  - container name: **c10086**;
  - used image: **nginx**.  
  
For self-checking open **Checking** tab and enter **10085** and **10086** ports. You should see note: "_This is the busybox container content_".  
  
  
## Documentation:
- https://docs.docker.com/storage/volumes/
  
---