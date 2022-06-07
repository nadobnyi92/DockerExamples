!#/bin/bash

readonly IMAGE_NAME='hello-world-loop'
readonly CONTAINER_NAME='hello'

boo()
{
    echo '--------------------------------'
}

docker build -t ${IMAGE_NAME} app
boo

docker images
boo
docker run --name ${CONTAINER_NAME} -d --rm hello-world
boo
docker ps
docker stop ${CONTAINER_NAME}
boo
docker ps -a # list all containers
