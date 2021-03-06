FROM ubuntu:16.04

ARG cdh_version
ENV CDH_VERSION=$cdh_version

# Prevent docker's default encoding of ASCII.
# https://oncletom.io/2015/docker-encoding/
ENV LANG C.UTF-8
ENV LANGUAGE en_US:C
ENV LC_ALL C.UTF-8

# Install openjdk-r/ppa packaging of openJDK
RUN apt-get update && apt-get install -y python3-software-properties software-properties-common curl
RUN add-apt-repository ppa:openjdk-r/ppa && apt-get update
RUN apt-get install -y openjdk-8-jdk
RUN apt-get install -y sudo
RUN ln -s /usr/lib/jvm/java-8-openjdk-amd64 /usr/lib/jvm/java-8-openjdk-amd64

# Configure Cloudera repository for Hadoop & HBase
ADD cloudera.list /etc/apt/sources.list.d/cloudera.list
RUN sed -i "s/VERSION/${CDH_VERSION}/g" /etc/apt/sources.list.d/cloudera.list
RUN curl -s http://archive.cloudera.com/cdh5/ubuntu/xenial/amd64/cdh/archive.key | apt-key add -


RUN apt-get update && \
    apt-get install -y \
    hadoop-client \
    hadoop-conf-pseudo \
    hadoop-yarn \
    hadoop-yarn-nodemanager \
    hadoop-yarn-resourcemanager \
    hbase \
    hbase-master \
    hbase-regionserver \
    # Force installation of zookeeper from CDH repo, otherwise Ubuntu
    # one is installed and conflicts.
    zookeeper/xenial-cdh${CDH_VERSION} \
    zookeeper-server && \
    service zookeeper-server init && \
    (service hbase-regionserver stop; \
     service hbase-master stop; \
    service hadoop-yarn-resourcemanager stop; \
    service hadoop-yarn-nodemanager stop; \
    service hadoop-hdfs-datanode stop; \
    service hadoop-hdfs-namenode stop; \
    true)

# Initial filesystem
RUN sudo -u hdfs hdfs namenode -format && \
   service hadoop-hdfs-namenode start && \
   service hadoop-hdfs-datanode start && \
   /usr/lib/hadoop/libexec/init-hdfs.sh && \
   service hadoop-hdfs-namenode stop && \
   service hadoop-hdfs-datanode stop

ADD hdfs-site.xml /etc/hadoop/conf/hdfs-site.xml
ADD hbase-site.xml /etc/hbase/conf/hbase-site.xml

ADD start.sh /start.sh
CMD ["/bin/bash", "/start.sh"]

# Mostly taken from here:
# https://www.cloudera.com/documentation/enterprise/latest/topics/cdh_ig_ports_cdh5.html
EXPOSE 1004
EXPOSE 1006
EXPOSE 2181
EXPOSE 8020
EXPOSE 8022
EXPOSE 8030
EXPOSE 8031
EXPOSE 8032
EXPOSE 8033
EXPOSE 8040
EXPOSE 8041
EXPOSE 8042
EXPOSE 8044
EXPOSE 8088
EXPOSE 8090
EXPOSE 19888
EXPOSE 19890
EXPOSE 50010
EXPOSE 50020
EXPOSE 50070
EXPOSE 50075
EXPOSE 50470
EXPOSE 50475
EXPOSE 60000
EXPOSE 60010
EXPOSE 60020
EXPOSE 60030
EXPOSE 65000
EXPOSE 65010
EXPOSE 65020
EXPOSE 65030
