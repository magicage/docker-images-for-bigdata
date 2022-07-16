# Docker for CentOS
# Base image
FROM centos:7.5.1804

MAINTAINER magicage99 magicage99@gmail.com

# Base pkg
RUN yum -y update && yum -y install epel-release wget curl make cmake gcc gcc-c++ \
    &&  yum install -y bash-completion vim-enhanced git tree net-tools iputils yum-utils \
    sudo psmisc htop unzip nc pcre pcredevel zlib zlib-devel procps iproute iotop \    
    &&  yum clean all \
    &&  ln -snf /urs/share/zoneinfo/Europe/Warsaw /etc/localtime \
    &&  echo Europe/Warsaw > /etc/timezone
