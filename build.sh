#!/bin/bash

java_tar="jdk-8u211-linux-x64.tar.gz"
jdk="openjdk"
cdh_version="5.16.1"
if [ "${1}" == "oracle" ]
then
	if [ ! -s oracleJDK/${java_tar} ]
	then
		echo "Fatal: ${java_tar} not found; please download oracle jdk"
		exit 1
	else
		cd oracleJDK
                jdk="oraclejdk"
	fi
else
	cd openJDK
fi
if [ "${1}" == "5.11" -o "${2}" == "5.11" ]
then
        cdh_version="5.11.1"
fi
image="seomoz_cdh_${cdh_version}_${jdk}_standalone:v2"
export cdh_version=${cdh_version}
export java_tar=${java_tar}
docker build --build-arg cdh_version --build-arg java_tar -t ${image} .
cd -
