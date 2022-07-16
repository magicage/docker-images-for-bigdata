FROM magicage99/java-ssh:1.0

MAINTAINER magicage99 magicage99@gmail.com

ENV HADOOP_VERSION 3.2.0

USER hadoop

COPY --chown=hadoop:hadoop bin/hadoop.sh /home/hadoop/bin/hadoop.sh

RUN wget -O /opt/software/hadoop-${HADOOP_VERSION}.tar.gz \
    http://archive.apache.org/dist/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz \
    && tar -zxvf /opt/software/hadoop-${HADOOP_VERSION}.tar.gz -C /opt/module \
    && rm /opt/software/hadoop-${HADOOP_VERSION}.tar.gz \
    && chmod +x /home/hadoop/bin/hadoop.sh

COPY --chown=hadoop:hadoop etc/hadoop/* /opt/module/hadoop-${HADOOP_VERSION}/etc/hadoop/

USER root

EXPOSE 22-65535

shell ["/bin/bash","-c"]

RUN echo "export HADOOP_HOME=/opt/module/hadoop-${HADOOP_VERSION}" >> /etc/profile.d/my_env.sh \
    && echo 'export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH' >> /etc/profile.d/my_env.sh \
    && source /etc/profile
