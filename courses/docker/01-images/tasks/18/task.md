# Summary

We have introduced with Docker Images.
Some useful commands you should capture:

```
docker image ls
docker image rm

docker build [-t image_tag] [-f ./path/to/dockerfile] .
docker build --build-arg BASE_IMAGE=ubuntu:16.04 .

docker tag (old_id|old_tag) (new_tag)

docker pull ubuntu
docker push myweb/1.0
```