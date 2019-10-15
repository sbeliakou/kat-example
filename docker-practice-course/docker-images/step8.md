
You are given `/data/maven` folder with content.  
Build Dockerfile with tag **single_app** and run it:  
`docker run single_app`  

You should see "Hello world" message.  

Edit Dockerfile:
- give 1st stage (maven image) name **builder**;
- add 2nd build stage:
  - base image: **openjdk:8-jre-alpine**;
  - should copy artifact from 1st build stage (using alias **builder**);
  - should run copied from 1st stage artifact.
Build edited Dockerfile with tag **multi_app** and run it:  
`docker run multi_app`  
You should see "Hello world" message again.  


You can appreciate multi-stage build benefits - just inspect size of **single_app** and **multi_app** images!  
