#!/usr/bin/env bash

# делаем миграции
python -u manage.py migrate
# exec чтоб запустился в текущем процессе и докер мог его нормально выключить
# НО джанговский рансервер серавно не хочет так выключатся, это у всех так...
exec python -u manage.py runserver 0.0.0.0:8000