#!/bin/bash


# Quick script for building compose and dind together since they're not upstream for POWER

git clone https://github.com/tophj-ibm/compose.git && cd compose
docker build -t compose -f Dockerfile.ppc64le .
cd ../
rm -rf compose
docker build -t gitlab/dind -f Dockerfile_dind_compose.ppc64le .

