@echo off
call mvn clean package
call docker build -t com.adssys/adssysadmin_front .
call docker rm -f adssysadmin_front
call docker run -d -p 9080:9080 -p 9443:9443 --name adssysadmin_front com.adssys/adssysadmin_front