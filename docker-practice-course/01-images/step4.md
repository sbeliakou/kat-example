
- an **ENTRYPOINT** allows you to configure a container that will run as an executable;
- the main purpose of a **CMD** is to provide defaults for an executing container;
- if you would like your container to run the same executable every time, then you should consider using **ENTRYPOINT** in combination with **CMD**;
- **ENTRYPOINT**/**CMD** has 2 forms - **exec** and **shell**
    - exec form: `["echo", "hello", "world"]` - preferred form
    - shell form: `echo hello world` - supports ENV Vars resolving
  

# Task

Create Dockerfile and build image with the following requirements.

## Requirements:
- new image name: **pinger**
- base image: **alpine**
- ENTRYPOINT: **ping**
- CMD: **-c3**, **dockerhub.com**

To see the difference between **ENTRYPOINT** and **CMD** perform the next actions:  
- `docker run pinger`
- `docker run pinger google.com`
- `docker run pinger -c5 google.com`

## Documentation:
- https://docs.docker.com/engine/reference/builder/
- https://docs.docker.com/engine/reference/commandline/build/
- https://docs.docker.com/engine/reference/commandline/image/
- https://docs.docker.com/engine/reference/commandline/images/


---
