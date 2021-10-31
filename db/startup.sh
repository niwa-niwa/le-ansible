#!/usr/bin/env bash

# SSH起動
/usr/sbin/sshd && tail -f /dev/null &


# mariadb に必要なディレクトリ作成
mkdir -p /var/run/mysql /var/lib/mysql /var/log/mysql
chown -R mysql:mysql /var/run/mysql /var/lib/mysql /var/log/mysql

# MariaDBの初期化
mysql_install_db --user=mysql

# rootパスワードを求めず起動
/usr/bin/mysqld_safe --skip-grant-tables

# mariadbにリモートアクセスsできるユーザーを作成
# mysql -u root < grant all privileges on *.* to "root"@"%"

