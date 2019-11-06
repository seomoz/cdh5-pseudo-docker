# cdh5-pseudo-docker
Pseudo-distributed HBase Docker image based on CDH5 including YARN

Uses Java 8 (openJDK) and CDH 5.11.1 or 5.16.1. Includes HDFS, HBase, and YARN.

## Usage

```
git clone git@github.com:seomoz/cdh5-pseudo-docker.git
cd cdh5-pseudo-docker
docker pull seomoz/cdh5-pseudo-docker
# Use this to build a local image 
./build.sh [5.11\|5.16]
# Use this to expose all of the ports for CDH5.
./run.sh [5.11\|5.16]
```

## Docker Hub
* https://hub.docker.com/r/seomoz/cdh5-pseudo-docker/
