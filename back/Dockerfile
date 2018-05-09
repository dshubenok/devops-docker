FROM python:3.6

WORKDIR /app

# сначала копируем только requirements.txt файл, что при каждом изменении сорзов не приходилось все либы перекачивать
# докер их просто закеширует если requirements.txt не был тронут
COPY ./requirements.txt /app/requirements.txt
RUN pip install -r requirements.txt

# копируем остальные сорцы
COPY . /app
ENV GOOGLE_APPLICATION_CREDENTIALS=google_credentials.json

# собираем статики
RUN SECRET_KEY=temp-secret-key python manage.py collectstatic --noinput 

EXPOSE 8000/tcp

# в джейсон формате нужно писать чтоб скрипт запускался в основном процессе и докер мог его отследить
CMD ["./run/web.sh"]
