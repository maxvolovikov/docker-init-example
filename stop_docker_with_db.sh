#!/bin/bash

echo "Stoping Docker"
(cd ../../docker && docker-compose -f ./docker-compose.yml -f ./docker-compose.db.yml down)

echo "Done"
read -p "press enter to continue"