#!/bin/bash


echo ***************************
echo **** Building app  ********
echo ***************************


docker run --rm -v /home/jenkins/jenkins-data/pipeline/java_app:/app -v /root/.m2:/root/.m2 -w /app zenika/alpine-maven:latest "$@"
