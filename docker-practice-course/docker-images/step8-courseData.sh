#!/bin/bash

##### preparing for KUBERNETES ####


##### preparing for DOCKER ####


mkdir -p /data/maven && cd /data/maven
cat << 'EOF' > /data/maven/Dockerfile
FROM maven:3.6-jdk-8-alpine
WORKDIR /app
COPY pom.xml .
RUN mvn -e -B dependency:resolve
COPY src ./src
RUN mvn -e -B package
EOF
docker run -ti --rm -v ${HOME}:/root -v $(pwd):/git alpine/git clone https://github.com/jabedhasan21/java-hello-world-with-maven.git
cp -r java-hello-world-with-maven/* .

