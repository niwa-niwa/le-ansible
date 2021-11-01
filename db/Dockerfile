FROM centos:centos8.2.2004

# 各パッケージを最新にする
RUN yum -y update

# OpenSSｈサーバをインストールする
RUN yum -y install openssh-server

# mariadb-serverインストール
RUN yum -y install  mariadb-server

# お掃除
RUN yum clean all

# sshd起動時に公開鍵が必要なため、作成
RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
RUN ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa

# mariadbに必要な設定ファイルをコンテナにコピー
COPY ./my.cnf /etc/my.cnf.d/

# コンテナ実行時に起動させるシェルファイル
COPY ./startup.sh /startup.sh
RUN chmod 744 /startup.sh

# 開放ポート SSHとHTTP
EXPOSE 22
EXPOSE 3306

ENTRYPOINT  ["/startup.sh"]
