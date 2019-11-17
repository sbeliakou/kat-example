
Run  containers with the requirements below.  

## Requirements:
- **html_data** container:
  - should run in **detach** mode;
  - should have name: **html_data**;
  - should mount `/root/index.html` file on host to `/usr/share/nginx/html/index.html` on container;
  - used image: **busybox**;  
- 1st web container:
  - container should run in **detach** mode;
  - container should expose **80** container port to **32250** host port;
  - container should use volume from **html_data** container;
  - container name: **n32250**;
  - used image: **nginx**.  
- 2st web container:
  - container should run in **detach** mode;
  - container should expose **80** container port to **32300** host port;
  - container should use volume from **html_data** container;
  - container name: **n32300**;
  - used image: **nginx**.

For self-checking open **Checking** tab and enter **32250** and **32300** ports. You should see note: "_This is the busybox container content_".
