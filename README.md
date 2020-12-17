# yamdb_final
yamdb_final

![yamdb%20workflow Actions Status](https://github.com/nortonts/yamdb_final/workflows/yamdb%20workflow/badge.svg)

# Развертывание API для YaMDb в docker. 

Проект на Django rest framework, база отзывов о фильмах, книгах и музыке.

## Установка docker

Проверяем установлен ли docker
```
docker -v
```
и docker-compose
```
docker-compose -v
```
Если не установлен, скачиваем с сайта [docker.com](https://www.docker.com/), следуя инструкциям для вашей ОС.
### Подготовка контейнера
Клонируем репозиторий
```
git clone https://github.com/nortonts/infra_sp2
```
Создаем файл .env в клонированной директории
```
DB_ENGINE=django.db.backends.postgresql 
DB_NAME= введите имя базы данных
POSTGRES_USER= введите имя пользователя
POSTGRES_PASSWORD= введите пароль
DB_HOST=db 
DB_PORT=5432 
```
### Запуск контейнера

Сборка контейнера
```
docker-compose up
```
Для входа в контейнер выполните команду
```
docker-compose exec web bash
```
Выполняем миграцию базы данных
```
python3 manage.py migrate
```
Создаем суперпользователя
```
python3 manage.py createsuperuser
```
