FROM centos:centos8.2.2004

RUN yum -y update

RUN yum -y install openssh-server

RUN yum -y install  mariadb-server

RUN yum clean all

# generate keys because to start SSH need keys
RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
RUN ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa

# copy a conf-file for mariadb
COPY ./my.cnf /etc/my.cnf.d/

# copy and change mode the file that excute when the container start
COPY ./startup.sh /startup.sh
RUN chmod 744 /startup.sh

# register startup.sh
ENTRYPOINT  ["/startup.sh"]
