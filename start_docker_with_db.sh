#!/bin/bash
set -e
export DOCKER_HOSTNAME=$(hostname)

echo "Building postgres build base"
(cd ../../docker && docker build -f Dockerfile.postgres-build -t whatzpoppin-postgres ../)

echo "Building node build base"
(cd ../../docker && docker build -f Dockerfile.node-build -t whatzpoppin-node ../)

echo "Brining up Docker"
(cd ../../docker && docker-compose -f ./docker-compose.yml -f ./docker-compose.db.yml down && docker-compose -f ./docker-compose.yml -f ./docker-compose.db.yml up -d --remove-orphans)

echo "Done"
read -p "press enter to continue"