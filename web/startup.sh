#!/usr/bin/env bash

# SSH起動
/usr/sbin/sshd && tail -f /dev/null &

# Nginx起動
/usr/sbin/nginx -g 'daemon off;' -c /etc/nginx/nginx.conf
