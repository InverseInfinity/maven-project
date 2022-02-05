#!/bin/bash

#provide aws_public ip

#aws_ip=18.135.99.179

echo $Image > /tmp/.auth
echo $PASS >> /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth

scp -i ~/prod_keys /tmp/.auth prod@$aws_ip:/tmp
scp -i ~/prod_keys /home/jenkins/jenkins-data/pipeline/jenkins/deploy/publish.sh prod@$aws_ip:/tmp/publish.sh

echo ******* running publish script on remote server ************

ssh -i ~/prod_keys prod@$aws_ip "/tmp/publish.sh"

