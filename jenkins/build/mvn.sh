#!/bin/bash


echo ***************************
echo **** Building app  ********
echo ***************************

workspace=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven


docker run --rm -v $workspace/java_app:/app -v /root/.m2:/root/.m2 -w /app zenika/alpine-maven:latest "$@"
