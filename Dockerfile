# Dockerfile for TNG Family Tree Web app
# - https://www.tngsitebuilding.com/
# - Pre-requisites: install your download of tng12.1 in the file where this Dockerfile resides
#
# Ideas for this Dockerfile were inspired by
#   https://github.com/sprintcube/docker-compose-lamp/blob/master/bin/webserver/Dockerfile

FROM php:7-apache

RUN docker-php-ext-install pdo_mysql
RUN docker-php-ext-install mysqli

COPY tng12.1/ /var/www/html/

RUN cd /var/www/html && \
    chown -Rv www-data: adminlog.txt config.php mmconfig.php genlog.txt \
       importconfig.php logconfig.php mapconfig.php pedconfig.php \
       subroot.php whatsnew.txt \
       photos histories documents headstones media gendex backups \
       gedcom mods extensions classes 
