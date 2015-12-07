#!/bin/sh
mkdir -p /data1/logs/nginx
docker run --name=openresty -v /etc/nginx/conf:/etc/nginx -v /data1/logs/nginx:/var/log/nginx -d --restart=always -p 80:80 -p 443:443 siqi/openresty
