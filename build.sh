#!/bin/bash

cdh_version="5.16.1"
image="seomoz_cdh5_16_standalone:v2"
if [ $1 == "5.11" ]
then
        cdh_version="5.11.1"
	image="seomoz_cdh511_standalone:v2"
fi
docker build --build-arg cdh_version -t ${image} .
