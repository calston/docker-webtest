FROM nginx:latest

RUN apk update
RUN apk install nginx hugo

RUN mkdir /src

ADD hugo /src/
COPY default.conf /etc/nginx/conf.d/default.conf

WORKDIR /src
RUN hugo

EXPOSE 8080
