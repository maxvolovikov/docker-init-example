#!/bin/bash

echo "Stoping Docker"
(cd ../../docker && docker-compose -f ./docker-compose.yml down)

echo "Done"
read -p "press enter to continue"