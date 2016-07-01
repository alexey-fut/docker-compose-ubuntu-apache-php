#!/bin/bash

######################################
########## Start Docker Setup ########
######################################

# include config
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
source $DIR/config/docker-config.sh

# set permissions
chmod 775 script/docker/docker-prepare.sh
chmod 775 build/bin/setup.sh

# prepare web host
echo "Prepare Docker"
./script/docker/docker-prepare.sh
echo "Prepare Complete"

# run deplyoment
echo "Setup Start"
sudo docker exec -itu "$USER" ${CONTAINER_WEB} ./build/bin/setup.sh
echo "Setup Complete"