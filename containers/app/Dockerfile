FROM centos:centos8.2.2004

RUN yum -y update 

RUN yum -y install openssh-server

RUN yum -y install php php-xml php-xmlrpc php-fpm php-pecl-apcu php-mbstring php-gd php-json php-pdo php-mysqlnd php-opcache php-pear php-soap php-intl php-pear

RUN yum clean all

# generate keys because to start SSH need keys
RUN ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
RUN ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa

# these commands for php-fpm 
RUN mkdir -p /run/php-fpm
RUN chown nginx:nginx /var/lib/php/session
COPY www.conf /etc/php-fpm.d/www.conf

# copy and change mode the file that excute when the container start
COPY ./startup.sh /startup.sh
RUN chmod 744 /startup.sh

# register startup.sh
ENTRYPOINT  ["/startup.sh"]
