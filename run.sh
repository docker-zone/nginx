#!/bin/sh

cp -r /tmp/nginx/conf/* /etc/nginx
cp -r /tmp/nginx/html/* /usr/share/nginx/html
rm -rf /tmp/*

nginx -g 'daemon off;'