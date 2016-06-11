#!/bin/bash

# make shure SERVER_NAME, EMAIL and DOMAIN_NAME are defined
export DOMAIN_NAME=tcmdsystems.eu
export SERVER_NAME=docker.tcmdsystems.eu
export EMAIL=mihai.csaky@tcmdsystems.eu

# create volume directory
cp -rf srv /


# create nginx-proxy network
docker network create -d bridge nginx-proxy


# update docker-compose
curl -L https://github.com/docker/compose/releases/download/1.7.1/docker-compose-`uname -s`-`uname -m` > /usr/loca/bin/docker-compose

# run docker-compose to bring up the images
/usr/local/bin/docker-compose up

