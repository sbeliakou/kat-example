#!/bin/bash

docker volume create --name volume-1
docker volume create --driver local \
    --opt type=tmpfs \
    --opt device=tmpfs \
    --opt o=size=5m,uid=1000 \
    volume-2
docker volume create --driver local \
    --opt type=btrfs \
    --opt device=/dev/sda2 \
    volume-3