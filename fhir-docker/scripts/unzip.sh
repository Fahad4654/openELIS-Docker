#!/bin/bash
cd /app/files
unzip apache-tomcat-8.5.100.zip
mkdir /opt/tomcat8/
mv apache-tomcat-8.5.100/* /opt/tomcat8/
rm -rf /opt/tomcat8/webapps/*
cp /app/files/ROOT.war /opt/tomcat8/webapps/
chmod -R 777 /opt/tomcat8/