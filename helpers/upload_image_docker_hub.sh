#!/bin/bash

# HOW TO CALL THE SCRIPT
# ./upload_image_docker_hub.sh a5dd7ba41e2c 1.1

TAG = $1
VERSION = $2

DOCKER_HUB_PROJECT_NAME = "florianmarc"
GIT_USER = "marky"
DOCKER_HUB_USER = "marky"

echo "Tag : $TAG"
echo "Version : $VERSION"

# LOGIN, TAG AND PUSH IMAGE ON DOCKER HUB
docker login -u=$GIT_USER
docker tag $TAG $DOCKER_HUB_USER/$DOCKER_HUB_PROJECT_NAME:$VERSION
docker push $DOCKER_HUB_USER/$DOCKER_HUB_PROJECT_NAME:$VERSION

echo "END OF SCRIPT"
