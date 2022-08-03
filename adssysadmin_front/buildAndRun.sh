#!/bin/sh
mvn clean package && docker build -t com.adssys/adssysadmin_front .
docker rm -f adssysadmin_front || true && docker run -d -p 9080:9080 -p 9443:9443 --name adssysadmin_front com.adssys/adssysadmin_front