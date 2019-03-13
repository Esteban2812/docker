#!/bin/bash

#Create 
#alias docker2="sudo docker"

docker2 volume create directorio_jenkins

docker2 run -d --name jenkinsvz -v directorio_jenkins:/var/jenkins_home -p 8080:8080 -p 50000:50000 -v directorio_jenkins:/var/jenkins_home jenkinsci/docker:verizon


# check logs of the above detached jobs
docker logs jenkinsvz

