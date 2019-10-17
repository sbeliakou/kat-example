
Run  container with the requirements below.  

## Requirements:
- container should run in **detach** mode;
- container should expose **80** container port to **32200** host port;
- container should create volume with name **n32200_data** and the next container destination: `/usr/share/nginx/html`;
- container name: **n32200**;
- used image: **nginx**.  


Go to the `/vat/lib/docker/volumes/**n32200_data**/_data` directory and find `index.html` file.  
Change this file: `echo 'This is the n32200 container' > index.html`.

For self-checking open **Checking** tab and enter **32200** port. You should see our note.
