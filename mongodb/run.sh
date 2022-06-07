#!/bin/bash

docker run --rm -d -p 27017:27017 mongo

python3 app/app.py

docker stop $(docker ps -q) #stop mongo images

docker rmi $(docker images -q) #remove all images

