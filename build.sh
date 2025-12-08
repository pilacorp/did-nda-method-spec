#!/bin/bash

IMAGE_TAG=$1
IMAGE_NAME="registry.pila.vn/prod/ndachain-spec:$IMAGE_TAG"

docker build -f Dockerfile --platform=linux/amd64 -t $IMAGE_NAME .
docker push $IMAGE_NAME