#!/usr/bin/env bash

mkdir /root/work8/
cd /root/work8/
git clone https://github.com/boxfuse/boxfuse-sample-java-war-hello.git
cd boxfuse-sample-java-war-hello/
mvn package
