#!/bin/bash

readonly IMAGE_NAME=web-hello
readonly CONTAINER_NAME=web

docker build -t ${IMAGE_NAME} app

docker run --rm --name ${CONTAINER_NAME} -p 8080:8080 -e TZ=Europe/Moscow ${IMAGE_NAME}
