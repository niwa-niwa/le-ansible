FROM centos:centos8.2.2004

RUN yum -y update 

RUN yum -y install openssh-server

RUN yum -y install nginx

RUN yum clean all

# generate keys because to start SSH need keys
RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
RUN ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa

# copy and change mode the file that excute when the container start
COPY ./startup.sh /startup.sh
RUN chmod 744 /startup.sh

# register startup.sh
ENTRYPOINT  ["/startup.sh"]
