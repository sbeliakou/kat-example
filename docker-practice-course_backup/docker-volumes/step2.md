
You
 are given `/root/index.html` file.  
Run **nginx** container in detach mode with mounting **index.html** into container.  

## Requirements:
- container should run in **detach** mode;
- container should mount `/root/index.html` file on host to `/usr/share/nginx/html/index.html` on container;
- container should expose **80** container port to **32100** host port;
- container name: **n32100**;
- used image: **nginx**.  

For self-checking open **Checking** tab and enter **32100** port. You should see yellow page.
