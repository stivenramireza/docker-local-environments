#!/bin/bash
docker build \
--file=api_server.Dockerfile \
--tag="api_server:0.1" \
.

docker create \
--interactive \
--tty \
--rm \
--name=api_server \
--publish-all \
--mount type=bind,source="${pwd}/src",target=/home/node/src \
--workdir /home/node/src \
api_server:0.1

docker start api_server
docker port api_server
docker attach api_server