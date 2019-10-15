
You are given `/data/maven` folder with content.  
Edit Dockerfile:
- give 1st stage (maven image) name **builder**;
- add 2nd build stage:
  - base image: **openjdk:8-jre-alpine**;
  - should copy artifact from 1st build stage (using alias **builder**);
  - should run copied from 1st stage artifact.
