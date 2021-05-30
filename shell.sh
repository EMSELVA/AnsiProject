#/bin/bash
love
cd /

sudo chown -R centos:centos opt/

cd /opt/

git clone https://github.com/EMSELVA/AnsiProject.git

cd /opt/AnsiProject/webapp/ 

mvn clean package

sudo scp -r /opt/AnsiProject/webapp centos@172.31.10.162:/opt/apache-tomcat-8.5.23/webapps/

