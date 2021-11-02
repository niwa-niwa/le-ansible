#!/usr/bin/env bash

# SSH起動
/usr/sbin/sshd && tail -f /dev/null &


# mariadb に必要なディレクトリ作成
mkdir -p /var/run/mysql /var/lib/mysql /var/log/mysql
chown -R mysql:mysql /var/run/mysql /var/lib/mysql /var/log/mysql

# MariaDBの初期化
mysql_install_db --user=mysql

# MariaDB起動
/usr/bin/mysqld_safe

# rootのパスワードを設定
# /usr/bin/mysqladmin -u root password 'password'

# mariadbにリモートアクセスsできるユーザーを作成
# mysql -u root -e 'grant all privileges on *.* to "root"@"%" identified by "password" with grant option'
