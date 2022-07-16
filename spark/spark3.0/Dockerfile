FROM magicage99/hadoop3.2.0:1.0

MAINTAINER magicage99 magicage99@gmail.com


ENV SPARK_VERSION=3.0.0
ENV HADOOP_VERSION=3.2

USER hadoop

RUN wget -O /opt/software/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
    https://archive.apache.org/dist/spark/spark-${SPARK_VERSION}/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz \
    && tar -zxvf /opt/software/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz -C /opt/module \
    && mv /opt/module/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION} /opt/module/spark-yarn \
    && rm /opt/software/spark-${SPARK_VERSION}-bin-hadoop${HADOOP_VERSION}.tgz

COPY conf/* /opt/module/spark-yarn/conf/

USER root

SHELL ["/bin/bash","-c"]

RUN echo 'SPARK_HOME=/opt/module/spark-yarn' >> /etc/profile.d/my_env.sh \
    && echo 'PATH=$SPARK_HOME/bin:$SPARK_HOME/sbin:$PATH' >> /etc/profile.d/my_env.sh \
    && source /etc/profile
