# cdh5-pseudo-docker
Pseudo-distributed HBase Docker image based on CDH5 including YARN

Uses Java 8 (oracleJDK or openJDK) and CDH 5.11.1 or 5.16.1. Includes HDFS, HBase, and YARN.

## Usage


```
git clone git@github.com:b4hand/cdh5-pseudo-docker.git
cd cdh5-pseudo-docker
```

- _*CDH5 with the oracleJDK*_

  >Oracle's licensing has changed in a way that requires accepting their license
agreement before downloading the JDK, and that must be done manually ( See the [otn download page](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) )
> 
> Once the repo has been cloned, go to the [otn download page](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) and accept the Oracle licencing agreement. 
> 
> After accepting the licensing agreement,  download jdk-8u231-linux-x64.tar.gz to the oracleJDK directory


```
# Use this to build a local image 
./build.sh oracle [5.11\|5.16]
# Use this to expose all of the ports for CDH5.
./run.sh [5.11\|5.16]
```

### CDH5 with the oracleJDK


```
git clone git@github.com:b4hand/cdh5-pseudo-docker.git
cd cdh5-pseudo-docker
```

- _*CDH5 with the oracleJDK*_

  >Oracle's licensing has changed in a way that requires accepting their license
agreement before downloading the JDK, and that must be done manually ( See the [otn download page](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) )
> 
> Once the repo has been cloned, go to the [otn download page](https://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) and accept the Oracle licencing agreement. 
> 
> After accepting the licensing agreement,  download jdk-8u231-linux-x64.tar.gz to the oracleJDK directory


```
# Use this to build a local image 
./build.sh oracle [5.11\|5.16]
# Use this to expose all of the ports for CDH5.
./run.sh [5.11\|5.16]
```

- _*CDH5 with the openJDK*_
```
# Use this to build a local image 
./build.sh openjdk [5.11\|5.16]
# Use this to expose all of the ports for CDH5.
./run.sh [5.11\|5.16]
```

## Docker Hub
* https://hub.docker.com/r/seomoz/cdh5-pseudo-docker/
