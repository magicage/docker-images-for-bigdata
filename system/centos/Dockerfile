# Docker for CentOS
# Base image
FROM centos:7.5.1804

MAINTAINER magicage99 magicage99@gmail.com

# Base pkg
RUN yum -y update && yum -y install wget \
    &&  yum install -y mysql-devel git redis tree net-tools iputils \
    sudo psmisc vim nc procps epel-release python-setuptools \    
    &&  wget --no-check-certificate https://bootstrap.pypa.io/ez_setup.py -O - | sudo python \
    &&  yum -y install supervisor python-pip \
    &&  yum clean all 
