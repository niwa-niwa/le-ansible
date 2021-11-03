FROM centos:centos8.2.2004

RUN yum -y update 

RUN yum -y install openssh-server openssh-clients

RUN yum -y install python36 

RUN yum -y install mariadb-server

RUN /usr/bin/python3 -m pip install --upgrade pip

RUN /usr/bin/python3 -m pip install ansible==2.9.10

RUN yum clean all

# コンテナ実行時に起動させるシェルファイル
COPY ./startup.sh /startup.sh
RUN chmod 744 /startup.sh

# startup.shを実行
ENTRYPOINT  ["/startup.sh"]
