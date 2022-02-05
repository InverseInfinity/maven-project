#!/bin/bash

echo ***************************
echo **** Building Test ********
echo ***************************

workspace=/home/jenkins/jenkins-data/jenkins_home/workspace/pipeline-docker-maven



cd /home/jenkins/jenkins-data/pipeline && docker run --rm -v $workspace/java_app/:/app -v /root/.m2/:/root/.m2/ -w /app zenika/alpine-maven:latest "$@"

