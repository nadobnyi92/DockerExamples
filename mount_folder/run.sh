#!/bin/bash

readonly IMAGE_NAME=web-hello
readonly CONTAINER_NAME=web
readonly RES_PATH=app/resources

docker build -t ${IMAGE_NAME} app

echo "$(pwd)/${RES_PATH}:/usr/${RES_PATH}"

docker run --rm --name ${CONTAINER_NAME} -p 8080:8080 -e TZ=Europe/Moscow -v $(pwd)/${RES_PATH}:/usr/src/${RES_PATH} ${IMAGE_NAME}

