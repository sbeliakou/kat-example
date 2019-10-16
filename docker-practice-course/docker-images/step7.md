
You're given **test_file1** file and **test_arch.tar.gz** archive in `/root/` directory.  
Create Dockerfile and build image with the following requirements.  

## Requirements:
- image tag: **mybusybox**;
- base image: **busybox**;
- work directory: **/data**;
- **test_file1** file should be copied to work directory;
- content of **test_arch.tar.gz** archive should be copied to work directory;
- image should have environment variable: `MAINTAINER=student`, where _student_ is your Lastname
