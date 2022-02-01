FROM magicage99/java-ssh:1.0

MAINTAINER magicage99 magicage99@gmail.com

ENV HADOOP_VERSION 3.0.0

WORKDIR /opt/software

RUN wget http://archive.apache.org/dist/hadoop/common/hadoop-${HADOOP_VERSION}/hadoop-${HADOOP_VERSION}.tar.gz \
    && tar -zxvf hadoop-${HADOOP_VERSION}.tar.gz -C /opt/module \
    && rm hadoop-${HADOOP_VERSION}.tar.gz \
    && echo 'export HADOOP_HOME=/opt/module/hadoop-${HADOOP_VERSION}' >> /etc/profile.d/my_env.sh \
    && echo 'export PATH=$HADOOP_HOME/bin:$HADOOP_HOME/sbin:$PATH' >> /etc/profile.d/my_env.sh
    
CMD ["/etc/profile.d/my_env.sh"]
