FROM magicage99/centos-ssh:1.0

MAINTAINER magicage99 magicage99@gmail.com

RUN mkdir -p /opt/software \
    && mkdir -p /opt/module \
    && chmod 777 /opt \
    && chmod 777 /opt/module \
    && chmod 777 /opt/software

COPY jdk-8u212-linux-x64.tar.gz /opt/software/
RUN tar -zxvf /opt/software/jdk-8u212-linux-x64.tar.gz -C /opt/module \
    && rm -rf /opt/software/jdk-8u212-linux-x64.tar.gz \
    && echo '#!/bin/bash' >> /etc/profile.d/my_env.sh \
    && echo 'JAVA_HOME=/opt/module/jdk1.8.0_212' >> /etc/profile.d/my_env.sh \
    && echo 'PATH=$JAVA_HOME/bin:$PATH' >> /etc/profile.d/my_env.sh \
    && chmod +x /etc/profile.d/my_env.sh

SHELL ["/bin/bash","-c","source /etc/profile"]
