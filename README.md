# docker-compose-ubuntu-apache-php

Run docker 2 container with: 
* ubuntu 14.04
* apache2
* php 5.5.9
* xdebug
* memcache (hostname: memcached, port: 11211)

Start container (without modification):

    sudo docker-compose up -d
    
Start container with user rights and co (only working on linux systems):

    ./docker/setup/docker-setup.sh
    
Open in browser:

    http://localhost:8880/info.php