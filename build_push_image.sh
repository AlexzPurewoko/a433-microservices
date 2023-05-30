#!/bin/bash

docker build -t item-app-project-alexzforger -t item-app-project-alexzforger:v1 .

docker image ls

docker tag item-app-project-alexzforger:v1 ghcr.io/alexzpurewoko/item-app-project-alexzforger:v1

docker login ghcr.io 

docker push ghcr.io/alexzpurewoko/item-app-project-alexzforger:v1