#!/usr/bin/env bash

# ждем пока инициируется база данных (конейнер запустится сразу, но бд нужно время на конфиг)
sleep 2

# делаем миграции
python manage.py migrate
# exec чтоб запустился в текущем процессе и докер мог его нормально выключить
exec gunicorn sanegnize.wsgi --workers 1 --bind 0.0.0.0:8000
