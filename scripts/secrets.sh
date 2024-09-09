#!/bin/bash
mkdir -p /root/store/out
cd /root/store
openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout apache-selfsigned.key -out apache-selfsigned.crt -subj "/C=US/ST=California/L=San Francisco/O=MyOrganization/OU=MyUnit/CN=localhost"
openssl pkcs12 -inkey apache-selfsigned.key -in apache-selfsigned.crt -export -out /root/store/out/keystore  -passout pass:123456
openssl pkcs12 -export -nokeys -in apache-selfsigned.crt -out /root/store/out/truststore -passout pass:123456
cp /root/store/out/* /run/secrets/
chmod -R 777 /run/secrets