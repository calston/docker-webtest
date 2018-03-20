FROM nginx:latest

WORKDIR /src

RUN apt-get update
RUN apt-get install hugo

COPY hugo /src
COPY default.conf /etc/nginx/conf.d/default.conf

RUN hugo

EXPOSE 8080
