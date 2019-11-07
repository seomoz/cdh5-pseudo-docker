#!/bin/bash

service hadoop-hdfs-namenode start
service hadoop-hdfs-datanode start
service hadoop-yarn-resourcemanager start
service hadoop-yarn-nodemanager start
service hadoop-mapreduce-historyserver start
service zookeeper-server start
service hbase-master start
service hbase-regionserver start

tail -F /var/log/hadoop-hdfs/hadoop-hdfs-namenode-*.log /var/log/hadoop-hdfs/hadoop-hdfs-datanode-*.log /var/log/hadoop-yarn/yarn-yarn-resourcemanager-*.log /var/log/hadoop-yarn/yarn-yarn-nodemanager-*.log /var/log/hbase/hbase-hbase-master-*.log /var/log/hbase/hbase-hbase-regionserver-*.log
