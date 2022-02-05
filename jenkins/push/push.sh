#!/bin/bash


Image="maven-project"

echo ***************************
echo **** Pushing Image ********
echo ***************************

echo **** logging docker *******

docker login -u inverseinfinity -p $PASS

echo **** Tagging Image  *******

docker tag $Image:$BUILD_TAG inverseinfinity/$Image:$BUILD_TAG


echo **** Pushing Image  *******


docker push inverseinfinity/$Image:$BUILD_TAG

