# Docker for CentOS
# Base image
FROM centos:7.5.1804

MAINTAINER magicage99 magicage99@gmail.com

# Base pkg
RUN yum install -y wget mysql-devel git redis tree net-tools sudo psmisc vim epel-release python-setuptools \
    &&  wget --no-check-certificate https://bootstrap.pypa.io/ez_setup.py -O - | sudo python \
    &&  yum install -y supervisor python-pip \
    &&  yum clean all
