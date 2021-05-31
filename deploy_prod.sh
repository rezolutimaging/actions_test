#!/bin/bash

YAML_FILE=docker-compose.prod.yml

#stop the currently running services 
docker-compose -f ${YAML_FILE} stop

#get latest source code from github 
git pull 

#restart the servives 
docker-compose -f ${YAML_FILE} up -d


