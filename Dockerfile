FROM alpine:latest

RUN apk update \
&& apk upgrade \
&& apk add nginx \
&& touch /var/www/index.html \
&& rm -rf /var/cache/apk/*

ADD nginx.conf /etc/nginx/nginx.conf
ADD nginx.default /etc/nginx/conf.d/default.conf

ENTRYPOINT nginx
