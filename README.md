# openELIS-Docker

## Requirements:

    1. ubuntu (preferable)
    2. docker

## Steps:

step-1: 

        git clone git@github.com:Fahad4654/openELIS-Docker.git

step-2: replace localhost from some place where they are indicated saying (#change localhost here with the ip address)

        1. scripts/common.properties
        2. scripts/context.xml
        3. fhir-docker/files/ROOT.war/WEB-INF/classes/application.yaml 
        ### (open with ubuntu desktop for file no: 3, not so important though)

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

        https://**ipaddress**:8443/OpenELIS-Global/loginpage


## Credentials: 

        user: admin
        password: adminADMIN!
