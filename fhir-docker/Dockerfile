FROM ubuntu:jammy
WORKDIR /app

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install curl nano git wget zip openjdk-17-jdk -y

COPY . /app/

RUN chmod -R 777 /app
RUN /app/scripts/unzip.sh

EXPOSE 8080