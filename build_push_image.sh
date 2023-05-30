#!/bin/bash

docker build -t item-app-project-alexzforger -t item-app-project-alexzforger:v1 .

docker image ls

docker tag item-app-project-alexzforger:v1 alexzpurewoko/item-app-project-alexzforger:v1

docker login

docker push alexzpurewoko/item-app-project-alexzforger:v1