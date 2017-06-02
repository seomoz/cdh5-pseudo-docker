#!/bin/bash

service hadoop-hdfs-namenode start
service hadoop-hdfs-datanode start
service hadoop-yarn-resourcemanager start
service hadoop-yarn-nodemanager start
service hadoop-mapreduce-historyserver start
service zookeeper-server start
service hbase-master start
service hbase-regionserver start
