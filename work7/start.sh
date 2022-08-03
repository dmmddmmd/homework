#!/usr/bin/env bash

cd /root/homework/
git pull

cd /root/homework/work7/

docker-compose stop
docker-compose rm
docker rmi work7-prod
docker rmi work7-dev

docker-compose up -d
