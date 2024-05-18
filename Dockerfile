# Use the official PHP image with Apache
FROM php:7.4-apache

# Copy the website files to the default Apache directory
COPY . /var/www/html/

# Install additional PHP extensions if needed (e.g., mysqli)
RUN docker-php-ext-install mysqli

# Enable Apache mod_rewrite if needed for pretty URLs
RUN a2enmod rewrite

# Set the ServerName directive globally
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
