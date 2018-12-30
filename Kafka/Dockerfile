FROM ubuntu
MAINTAINER Alvino Quispe, Esteban J version: 1.0

#Testing connectivity
#RUN ping -c 8.8.8.8

#Update repositories
RUN apt-get -y update

#requirements installation
RUN apt-get install software-properties-common -y

#unpacking java
RUN mkdir -p /apps/
COPY jdk-8u191-linux-x64.tar.gz /apps/jdk-8u191-linux-x64.tar.gz

WORKDIR /apps 
RUN tar -xzvf jdk-8u191-linux-x64.tar.gz

#add environment varibles for java
ENV JAVA_HOME=/apps/jdk1.8.0_191
ENV PATH="${JAVA_HOME}/bin:${PATH}"

#install kafka
COPY kafka_2.12-2.1.0.tgz .
RUN tar -xzvf kafka_2.12-2.1.0.tgz

#install vim
RUN apt-get install vim -y