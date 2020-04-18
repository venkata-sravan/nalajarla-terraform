#!/bin/bash

sudo yum update -y
sudo yum remove -y java
cp /tmp/apache-tomcat.tar.gz apache-tomcat.tar.gz
tar -xvf apache-tomcat.tar.gz
sudo yum install -y java-1.8.0-openjdk.x86_64
pushd apache-tomcat-9.0.30/bin/
./startup.sh
popd
