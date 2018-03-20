FROM nginx:latest

WORKDIR /src

RUN apt-get update
RUN apt-get install hugo

COPY hugo /src

RUN hugo
# /usr/share/nginx/html
