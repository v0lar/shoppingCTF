FROM php:7.4-apache

# Dependencies
COPY ./src/shopping/ /var/www/html/
RUN apt-get update && apt-get upgrade -y && chown -R www-data /var/www/html
RUN docker-php-ext-install mysqli && docker-php-ext-enable mysqli

#CREATE FLAG
RUN cd /home && echo "flag -> iua87-UP9H-E7nE-P12n-Lo88-fHfm-71oh" > secret.txt