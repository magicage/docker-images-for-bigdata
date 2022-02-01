# Centos ssh image

FROM magicage99/centos:base

MAINTAINER magicage99 magicage99@gmail.com


RUN useradd hadoop \
    && echo 'hadoop:000000' | chpasswd \
    && echo "hadoop    ALL=(ALL)    NOPASSWD:ALL" >> /etc/sudoers \
    && mkdir -p /opt/software \
    && mkdir -p /opt/module \
    && chmod 777 /opt \
    && chmod 777 /opt/software \
    && chmod 777 /opt/module \
    && yum -y install openssh-clients openssl-devel openssh-server \
    &&  sed -i '/^HostKey/'d /etc/ssh/sshd_config \
    &&  echo 'HostKey /etc/ssh/ssh_host_rsa_key'>>/etc/ssh/sshd_config \
    &&  ssh-keygen -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key \
    &&  echo 'root:000000' | chpasswd

USER hadoop

RUN mkdir /home/hadoop/.ssh \
    && ssh-keygen -t rsa -N "" -f /home/hadoop/.ssh/id_rsa -q \
    && cat ~/.ssh/id_rsa.pub >> ~/.ssh/authorized_keys \
    && chmod 600 ~/.ssh/authorized_keys

USER root

EXPOSE 22

CMD ["/usr/sbin/sshd","-D"]
