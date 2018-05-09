FROM nginx:alpine

CMD apk update
CMD apk install nginx hugo

CMD mkdir /src

ADD hugo /src/
COPY default.conf /etc/nginx/conf.d/default.conf

WORKDIR /src
CMD hugo

EXPOSE 8080
