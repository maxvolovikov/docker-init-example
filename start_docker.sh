#!/bin/bash
set -e
export DOCKER_HOSTNAME=$(hostname)

echo "Building node build base"
(cd ../../docker && docker build -f Dockerfile.node-build -t whatzpoppin-node ../)

echo "Bringing up Docker"
(cd ../../docker && docker-compose -f ./docker-compose.yml down && docker-compose -f ./docker-compose.yml up -d --remove-orphans)

echo "Done"
read -p "press enter to continue"