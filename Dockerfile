FROM blackjack777/ubuntu-apache-php:1.0

ADD ./build/docker/vhost-application.conf /etc/apache2/sites-available/application.conf
RUN a2ensite application
RUN a2dissite 000-default

########################################################################################################################
#### Configure xdebug extension
########################################################################################################################
COPY ./build/docker/xdebug.ini /etc/php5/mods-available/xdebug.ini

########################################################################################################################
### Set and overwrite default php settings
########################################################################################################################
COPY ./build/docker/php.ini /etc/php5/apache2/php.ini