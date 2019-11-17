
You are given two Dockerfiles in `/data` directory. Build new images with the requirements below.

## Requirements:
- 1st image:
  - use `Dockerfile` for building image;
  - result image name: `color/green:1.0`;
- 2nd image:
  - use `Dockerfile_blue` for building image;
  - result image name: `color/blue:2.6`.

For self-checking run images with the next commands:  
- `docker run -dt -p 32108:80 color/green:1.0`  
- `docker run -dt -p 32109:80 color/blue:2.6`  

Open `Checking` tab and enter port **32108** for watching green page;  
and enter port **32109** for watching blue page.  
