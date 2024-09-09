#!/bin/bash
cd /OpenElis/files
unzip apache-tomcat-8.5.100.zip
mkdir /opt/tomcat8/
mv apache-tomcat-8.5.100/* /opt/tomcat8/
rm -rf /opt/tomcat8/webapps/*
cp /OpenElis/files/OpenELIS-Global.war /opt/tomcat8/webapps/
cp /OpenElis/scripts/context.xml /opt/tomcat8/conf/context.xml
mkdir /run/secrets
cp /OpenElis/scripts/common.properties /run/secrets/
cp /OpenElis/scripts/server.xml /opt/tomcat8/conf/server.xml
chmod -R 777 /opt/tomcat8/