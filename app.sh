#!/bin/bash

# Существуюет приложение "my-app" 
    # wy-app/
    #   ├── Dockerfile
    #   ├── entrypoint.sh
    #   ├── todo.sh
    #   └── README.md

# Упаковываем приложене "my-app" в образ (image).
docker build -t my-app:1.0 .

# Проверяем наличие образа (image).
docker image ls -a

#Логинемся в Docker Hub
docker login
#Помечаем образ для отправки в Docker Hub
docker tag my-app:1.0 alleut/my-app:1.0
#Отправляем образ в Docker Hub
docker push alleut/my-app:1.0
echo "Образ отправлен в репозиторий Docker Hub"

#Удаляем образ
docker rmi my-app:1.0
docker rmi alleut/my-app:1.0
docker image ls -a

echo "Образы удалены"

#Подключаемся к МИ Yandex Cloud
ssh -l alleut 84.252.138.180
