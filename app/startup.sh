#!/usr/bin/env bash

# SSH起動
/usr/sbin/sshd && tail -f /dev/null &

php-fpm -F
