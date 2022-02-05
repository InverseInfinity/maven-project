#!/bin/bash

# Copy new jar file to build directory

cp -f /home/jenkins/jenkins-data/pipeline/java_app/target/*.jar /home/jenkins/jenkins-data/pipeline/jenkins/build/

echo ***************************
echo **** Building Image********
echo ***************************

# Build image

cd /home/jenkins/jenkins-data/pipeline/jenkins/build/ && docker-compose -f docker-compose.yml build --no-cache


