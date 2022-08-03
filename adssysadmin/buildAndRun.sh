#!/bin/sh
mvn clean package && docker build -t com.adssys/adssysadmin .
docker rm -f adssysadmin || true && docker run -d -p 9080:9080 -p 9443:9443 --name adssysadmin com.adssys/adssysadmin