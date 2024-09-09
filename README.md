# openELIS-Docker

## Requiremenst:

    1. linux (preferable)
    2. docker

## Steps

step-1: 

        git clone git@github.com:Fahad4654/openELIS-Docker.git

step-2: replace localhost from some place where the are indicated saying (#change localhost here with the ip address)

        1. scripts/common.properties
        2. scripts/context.xml
        3. fhir-docker/files/ROOT.war/WEB-INF/classes/application.yaml (if you have ubuntu)

step-3:

        cd fhir-docker

step-4:

        docker compose build fhir

step-5:

        docker compose up -d

step-6:

        cd ..

step-7:

        docker compose build openelis

step-8:

        docker compose up -d

step-9: wait for some moments and browse

        https://$${\color{red}ipaddress}$$:8443/OpenELIS-Global/loginpage


## Credentials: 

        user: admin
        password: adminADMIN!
