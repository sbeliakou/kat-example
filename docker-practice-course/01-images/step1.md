
## Dockerfile Instructions
  - [.dockerignore]()
  - [FROM](https://docs.docker.com/engine/reference/) - Sets the Base Image for subsequent instructions.
  - [RUN](https://docs.docker.com/engine/reference/builder/) - execute any commands in a new layer on top of the current image and commit the results.
  - [CMD](https://docs.docker.com/engine/reference/) - provide defaults for an executing container.
  - [EXPOSE](https://docs.docker.com/engine/reference/) - informs Docker that the container listens on the specified network ports at runtime. NOTE: does not actually make ports accessible.
  - [ENV](https://docs.docker.com/engine/reference/) - sets environment variable.
  - [ADD](https://docs.docker.com/engine/reference/) - copies new files, directories or remote file to the container. Invalidates caches.
  - [COPY](https://docs.docker.com/engine/reference/) - copies new files or directories to the container.
  - [ENTRYPOINT](https://docs.docker.com/engine/reference/) - configures a container that will run as an executable.
  - [VOLUME](https://docs.docker.com/engine/reference/) - creates a mount point for externally mounted volumes or other containers.
  - [USER](https://docs.docker.com/engine/reference/) - sets the user name for following RUN / CMD / ENTRYPOINT commands.
  - [WORKDIR](https://docs.docker.com/engine/reference/) - sets the working directory.
  - [ARG](https://docs.docker.com/engine/reference/) - defines a build-time variable.
  - [ONBUILD](https://docs.docker.com/engine/reference/) - adds a trigger instruction when the image is used as the base for another build.
  - [STOPSIGNAL](https://docs.docker.com/engine/reference/) - sets the system call signal that will be sent to the container to exit.
  - [LABEL](https://docs.docker.com/engine/reference/) - apply key/value metadata to your images, containers, or daemons.
  
  
# Task

You are given two Dockerfiles in `/data` directory.<br>Build new images with the requirements below. Don't change any files.

## Requirements:
- 1st image:
  - Dockerfile: `Dockerfile`
  - Image Name: `color/green`
  - Image Version: `1.0`

- 2nd image:
  - Dockerfile: `Dockerfile_blue`
  - Image Name: `color/blue`
  - Image Version: `2.6`

Run images with the next commands:  
- `docker run -d -p 10081:80 color/green:1.0`  
- `docker run -d -p 10082:80 color/blue:2.6`  

Check services on `(:10081)` and `(:10082)` tabs.  

## Documentation:
- https://docs.docker.com/engine/reference/builder/
- https://docs.docker.com/engine/reference/commandline/build/
- https://docs.docker.com/engine/reference/commandline/image/
- https://docs.docker.com/engine/reference/commandline/images/


---
