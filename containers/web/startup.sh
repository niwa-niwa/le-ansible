#!/usr/bin/env bash

# start SSH
/usr/sbin/sshd && tail -f /dev/null &

# start Nginx
/usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
# reload nginx /usr/sbin/nginx -s reload
# stop nginx /usr/sbin/nginx -s stop
# https://www.nginx.com/resources/wiki/start/topics/tutorials/commandline/
