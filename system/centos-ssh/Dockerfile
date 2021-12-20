# Centos ssh image

FROM magicage99/centos:base

MAINTAINER magicage99 magicage99@gmail.com

# For sshd
RUN yum install -y openssh-clients openssl-devel openssh-server \ 
    &&  yum clean all \
    &&  ssh-keygen -t rsa -f /etc/ssh/ssh_host_rsa_key \
    &&  ssh-keygen -t ecdsa -f /etc/ssh/ssh_host_ecdsa_key \
    &&  echo "root:000000" | chpasswd
