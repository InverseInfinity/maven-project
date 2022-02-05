#!/bin/bash

export Image=$(sed -n '1p' /tmp/.auth)
export PASS=$(sed -n '2p' /tmp/.auth)
export TAG=$(sed -n '3p' /tmp/.auth)

echo ******docker login ********


docker login -u inverseinfinity -p $PASS


echo ******docker compose********

cd ~/maven && docker-compose up -d

