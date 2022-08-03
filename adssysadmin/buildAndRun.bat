@echo off
call mvn clean package
call docker build -t com.adssys/adssysadmin .
call docker rm -f adssysadmin
call docker run -d -p 9080:9080 -p 9443:9443 --name adssysadmin com.adssys/adssysadmin