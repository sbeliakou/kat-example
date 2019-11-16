# {{ .Current }}. Docker Images Introduction

![Docker image](https://miro.medium.com/max/2124/1*IzXW9q4OEBeli1rxKR4vkQ.png)

## Working with Images
- Lifecycle:
  - `docker images` - shows all images;
  - `docker import` - creates an image from a tarball;
  - `docker build` - creates image from Dockerfile;
  - `docker commit` - creates image from a container, pausing it temporarily if it is running;
  - `docker rmi` - removes an image;
  - `docker load` - loads an image from a tar archive as STDIN, including images and tags;
  - `docker save` - saves an image to a tar archive stream to STDOUT with all parent layers, tags & versions;
- Info:
  - `docker history` - shows history of image;
  - `docker tag` - tags an image to a name (local or registry).  

## Docker Base Images:
- **scratch** – this is the ultimate base image and it has 0 files and 0 size;
- **busybox** – a minimal Unix weighing in at 2.5 MB and around 10000 files;
- **debian** – the latest Debian is 122 MB and around 18000 files;
- **alpine** – Alpine Linux, only 8 MB in size and has access to a package repository.  
 

## Documentation:
- https://docs.docker.com/engine/reference/builder/
- https://docs.docker.com/engine/reference/commandline/build/
- https://docs.docker.com/engine/reference/commandline/image/
- https://docs.docker.com/engine/reference/commandline/images/

# Task

Before answer the questions pull the next images:
- **ubuntu:19.10**
- **nginx**
- **busybox**
- **alpine:3.9.4** 

## And answer these questions:
