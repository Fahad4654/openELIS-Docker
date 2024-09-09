#!/bin/bash
mkdir /root/ssl
cd /root/ssl
openssl genrsa -out privkey.pem 2048
openssl req -new -key privkey.pem -out cert.csr -subj "/C=US/ST=California/L=San Francisco/O=MyOrganization/OU=MyUnit/CN=localhost"
openssl x509 -req -days 365 -in cert.csr -signkey privkey.pem -out cert.pem
cp cert.pem chain.pem
mkdir -p /etc/openelis-global/cert
cp *.pem /etc/openelis-global/cert/