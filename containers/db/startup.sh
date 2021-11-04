#!/usr/bin/env bash

# start SSH
/usr/sbin/sshd && tail -f /dev/null &

# create directories of mariadb 
mkdir -p /var/run/mysql /var/lib/mysql /var/log/mysql
chown -R mysql:mysql /var/run/mysql /var/lib/mysql /var/log/mysql

# initialize MariaDB, if mysql doesn't exist
DIR="/var/lib/mysql"
if [ -n "$(ls $DIR)" ]; then
  echo "mysql data is exist"
else
  mysql_install_db --user=mysql
  echo "create mysql dir"
fi

# start MariaDB
/usr/bin/mysqld_safe

# configure password of root
# /usr/bin/mysqladmin -u root password 'password'

# allow root access mysql from remot server
# mysql -u root -e 'grant all privileges on *.* to "root"@"%" identified by "password" with grant option'
