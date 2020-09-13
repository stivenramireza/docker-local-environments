#!/bin/bash
docker build \
--file=Dockerfile \
--tag="http_server:0.1" \
.

docker create \
--interactive \
--tty \
--rm \
--name=http_server \
--publish-all \
--mount type=bind,source="${pwd}/src",target=/home/http_server_user/src \
--workdir /home/http_server_user/src \
http_server:0.1

docker start http_server
docker port http_server
docker attach http_server