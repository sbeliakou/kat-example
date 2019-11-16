# {{ .Current }}. Running the Container with publish exposed ports 2

Great, you ran the container with publishing exposed port(s) to the random port(s), but what if you need to publish exposed port(s) to specififc port of the host?  

## Requirements:
- run container with **color/green:1.0** image in **detach** mode;
- publish exposed port to port **10084** of the host.
  

For self-checking inspect the container is running; find out our published port; then open in new tab `localhost:10084` URL.  
You should see **_green_** page.  


## Documentation:
- https://docs.docker.com/engine/reference/run/

---