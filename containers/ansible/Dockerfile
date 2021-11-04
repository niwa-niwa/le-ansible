FROM centos:centos8.2.2004

RUN yum -y update 

RUN yum -y install openssh-server openssh-clients

RUN yum -y install python36 

RUN yum -y install mariadb-server

RUN /usr/bin/python3 -m pip install --upgrade pip

RUN /usr/bin/python3 -m pip install ansible==2.9.10

RUN yum clean all

# copy and change mode the file that excute when the container start
COPY ./startup.sh /startup.sh
RUN chmod 744 /startup.sh

# register startup.sh
ENTRYPOINT  ["/startup.sh"]
