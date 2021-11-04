#!/usr/bin/env bash

# start SSH
/usr/sbin/sshd && tail -f /dev/null &

# start php-fpm
php-fpm -F
