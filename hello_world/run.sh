!#/bin/bash

boo()
{
    echo '--------------------------------'
}

docker images # list images
docker ps # list containers
boo

docker build -t hello-world app # create image
boo

docker images
boo
docker run hello-world
boo
docker ps -a # list all containers
docker rm $(docker ps -aq)
boo
docker ps -a # list all containers
