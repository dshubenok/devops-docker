# имедж первой стадии
FROM node:latest as node

WORKDIR /app

COPY package.json /app/
RUN npm install

COPY . /app
# билдим приложение в /app/dist
RUN ["npm", "run", "build"]

# настоящий имедж, нодовский удалится, тут будут только статик файлы, имедж будет весить в пределах 10мб
FROM alpine:latest

WORKDIR /app
COPY --from=node /app/dist /app

VOLUME /app
