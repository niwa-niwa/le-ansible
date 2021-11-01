#!/usr/bin/env bash

# SSH起動
/usr/sbin/sshd && tail -f /dev/null &

# Nginx起動
/usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
# nginxリロード /usr/sbin/nginx -s reload
# nginx停止 /usr/sbin/nginx -s stop
# https://www.nginx.com/resources/wiki/start/topics/tutorials/commandline/
