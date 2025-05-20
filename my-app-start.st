#!/bin/bash


#Создаем пользовательскую сети в Docker
docker network create my-app-network-otus
docker network ls
docker network inspect my-app-network-otus

#Запускаем образ из Docker Hub
docker run -it --name my-app-container --network my-app-network-otus -v todo_data:/data alleut/my-app:1.0 todo

#Приложение запущено4

