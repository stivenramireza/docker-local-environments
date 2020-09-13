#!/bin/bash
docker build \
--file=http_server.Dockerfile \
--tag="http_server:0.1" \
.

docker create \
--interactive \
--tty \
--rm \
--name=http_server \
--publish-all \
--mount type=bind,source="/home/stivenramireza/Codes/Courses/docker-local-environments/http_server/src",target=/home/http_server_user/src \
--workdir /home/http_server_user/src \
http_server:0.1

docker start http_server
docker port http_server
docker attach http_server