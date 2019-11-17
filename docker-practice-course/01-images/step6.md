
You're given **test_file1** file and **test_arch.tar** archive in `/root/` directory.  
Create Dockerfile and build image with the following requirements.  

## Requirements:
- base image: **busybox**;
- work directory: **/data**;
- **test_file1** file should be copied to work directory;
- content of **test_arch.tar** archive should be copied to work directory;
- image should have environment variable: `MAINTAINER=Ivan Ivanov`
- new image name: **mybusybox**;  

For self-checking try to execute:<br>
```
docker run mybusybox pwd
docker run mybusybox ls test_file1
docker run mybusybox ls test_file2
docker run mybusybox env | grep MAINTAINER
```

  
## Documentation:
- https://docs.docker.com/engine/reference/builder/
- https://docs.docker.com/engine/reference/commandline/build/
- https://docs.docker.com/engine/reference/commandline/image/
- https://docs.docker.com/engine/reference/commandline/images/


---
