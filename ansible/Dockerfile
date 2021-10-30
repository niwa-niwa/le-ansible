FROM centos:centos8.2.2004

RUN yum -y update 

RUN yum -y install openssh-server openssh-clients

RUN dnf -y install python36 

RUN /usr/bin/python3 -m pip install --upgrade pip

RUN /usr/bin/python3 -m pip install ansible==2.9.10

RUN yum clean all

CMD /bin/bash
