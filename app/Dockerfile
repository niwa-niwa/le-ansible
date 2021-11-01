FROM centos:centos8.2.2004

# 各パッケージを最新にする
RUN yum -y update 

# yumでOpenSSｈサーバをインストールする
RUN yum -y install openssh-server

# PHPインストール
RUN yum -y install php php-fpm

# お掃除
RUN yum clean all

# sshd起動時に公開鍵が必要なため、作成
RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
RUN ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa

RUN mkdir -p /run/php-fpm
RUN chown nginx:nginx /var/lib/php/session
COPY www.conf /etc/php-fpm.d/www.conf

# コンテナ実行時に起動させるシェルファイル
COPY ./startup.sh /startup.sh
RUN chmod 744 /startup.sh

# startup.shを実行
ENTRYPOINT  ["/startup.sh"]
