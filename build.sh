#!/bin/bash

cdh_version="5.16.1"
image="seomoz_cdh5_16_standalone:v2"
if [ "${1}" == "5.11" ]
then
        cdh_version="5.11.1"
	image="seomoz_cdh5_11_standalone:v2"
fi
export cdh_version=${cdh_version}
docker build --build-arg cdh_version -t ${image} .
