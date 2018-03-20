FROM nginx:latest

RUN apt-get update
RUN apt-get install hugo

RUN mkdir /src

ADD hugo /src/
COPY default.conf /etc/nginx/conf.d/default.conf

WORKDIR /src
RUN hugo

EXPOSE 8080
