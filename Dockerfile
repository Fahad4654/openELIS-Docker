FROM ubuntu:jammy

WORKDIR /OpenElis
COPY . .

RUN apt-get update -y && apt-get upgrade -y
RUN apt-get install zip openjdk-11-jdk nano git wget curl -y

RUN chmod -R 777 /OpenElis
RUN /OpenElis/scripts/unzip.sh
RUN /OpenElis/scripts/ssl.sh
RUN /OpenElis/scripts/secrets.sh
EXPOSE 8433