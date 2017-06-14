# cdh5-pseudo-docker
Pseudo-distributed HBase Docker image based on CDH5 including YARN

Uses Java 8 and CDH 5.11.1. Includes HDFS, HBase, and YARN.

## Usage

```
git clone git@github.com:b4hand/cdh5-pseudo-docker.git
cd cdh5-pseudo-docker
docker pull b4hand/cdh5-pseudo-docker
# Use this to expose all of the ports for CDH5.
./run.sh
```

## Docker Hub
* https://hub.docker.com/r/b4hand/cdh5-pseudo-docker/
