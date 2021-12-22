# Centos ssh image

FROM magicage99/centos:base

MAINTAINER magicage99 magicage99@gmail.com

# For sshd
RUN yum install -y openssh-clients openssl-devel openssh-server \
    &&  sed -i '/^HostKey/'d /etc/ssh/sshd_config \
    &&  echo 'HostKey /etc/ssh/ssh_host_rsa_key'>>/etc/ssh/sshd_config \
    &&  ssh-keygen -t rsa -b 2048 -f /etc/ssh/ssh_host_rsa_key \
    &&  echo 'root:000000' | chpasswd \
    &&  mkdir -p /opt \
    &&  echo '#!/bin/bash' >> /opt/run.sh \
    &&  echo '/usr/sbin/sshd -D' >> /opt/run.sh \
    &&  chmod +x /opt/run.sh

EXPOSE 22

CMD ["/opt/run.sh"]
