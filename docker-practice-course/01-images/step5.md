
Create Dockerfile with the requirements below.

## Requirements:
- Dockerfile has to have two arguments:
  - **CENTOS_VERSION** - without default value,  
  - **JAVA_VERSION** - with default value equals **11**;
- base image: **centos**, centos version is get from **CENTOS_VERSION** argument;
- **openjdk** should be installed, openjdk version is get from **JAVA_VERSION** argument.  

Using created Dockerfile build two images with the next requirements:
- first image:
  - image name: **c8j11**
  - CENTOS_VERSION: **8**
  - JAVA_VERSION: **11**
- second image:
  - image name: **c7j180**
  - CENTOS_VERSION: **7**
  - JAVA_VERSION: **1.8.0**

For self-checking run the following commands:
- `docker run c8j11 java -version`
- `docker run c7j180 java -version`
  
  
## Documentation:
- https://docs.docker.com/engine/reference/builder/
- https://docs.docker.com/engine/reference/commandline/build/
- https://docs.docker.com/engine/reference/commandline/image/
- https://docs.docker.com/engine/reference/commandline/images/


---
