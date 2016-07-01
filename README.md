# docker-compose-ubuntu-apache-php

Run docker container with: 
* ubuntu 14.04
* apache2
* php 5.5
* xdebug
* memcache (hostname: memcached)

Start container:

    sudo docker-compose up -d
    
Set user rights:

    ./script/docker/docker-setup.sh
    
Open in browser:

    http://localhost:8880/info.php