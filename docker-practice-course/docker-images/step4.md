
Create Dockerfile and build image with the following requirements.

## Requirements:
- image tag: **pinger**
- base image: **alpine**
- ENTRYPOINT: **ping**
- CMD: **-c3**, **dockerhub.com**

To see the difference between **ENTRYPOINT** and **CMD** perform the next actions:  
- `docker run pinger`
- `docker run pinger google.com`
- `docker run pinger -c5 google.com`
