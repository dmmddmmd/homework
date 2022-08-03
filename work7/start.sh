#!/usr/bin/env bash

cd /root/homework/
git pull
cd /root/homework/work7/
docker-compose stop
docker-compose rm
docker rmi work7-prod
docker rmi work7-dev

# Homework 7:
docker-compose up -d
docker-compose cp dev:/root/boxfuse-sample-java-war-hello/target/hello-1.0.war /root/work7_shared_webapps/
