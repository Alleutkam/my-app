# my-app
my-app-otus
# Название проекта

Приложение «alleut/my-app» для создания списка задач (дел).
## Оглавление

- [Установка](#установка)
- [Использование](#использование)
- [Контакты](#контакты)

## Подготовка к утановке

Для установки приложения необходимо создать сеть Docker

```bash
docker network create my-app-network-otus
docker network ls
docker network inspect my-app-network-otus
```

## Установка
Предварительно вы можете заугрузить образ с Docker Hub

```bash
docker push alleut/my-app:latest
```
Или сразу заупстить устновку с Docker Hub
```bash
docker run -it --name my-app-container --network my-app-network-otus -v todo_data:/data alleut/my-app:1.0 todo
```

## Использование

 Функционал:<br>
    - Просмотр списка задач.<br>
    - Добавление новых задач.<br>
    - Удаление задач по номеру.


## Контакты

- Email: ezibrov@yandex.ru
- Telegram: @alleut
