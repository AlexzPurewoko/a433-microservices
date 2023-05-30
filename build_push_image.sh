#!/bin/bash

# Build a container with a specified image name and tags for v1.
# This build using a default Dockerfile configuration
docker build -t item-app-project-alexzforger -t item-app-project-alexzforger:v1 .

# Check the list of images that have been attached
docker image ls

# Adding new tag for container image for making it possible for deploying into github container registry
docker tag item-app-project-alexzforger:v1 ghcr.io/alexzpurewoko/item-app-project-alexzforger:v1

# Login with github container registry
docker login ghcr.io 

# Push the image into github container registry with specified tag
docker push ghcr.io/alexzpurewoko/item-app-project-alexzforger:v1