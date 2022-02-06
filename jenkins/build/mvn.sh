#!/bin/bash


echo ***************************
echo **** Building app  ********
echo ***************************

#workspace=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-build

home=/home/jenkins/jenkins-data/pipeline

docker run --rm -v $home/java_app:/app -v /root/.m2:/root/.m2 -w /app zenika/alpine-maven:latest "$@"
