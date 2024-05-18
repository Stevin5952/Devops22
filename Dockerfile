# Use the official PHP image with Apache
FROM php:8.1-apache

# Copy the source code to the /var/www/html directory in the container
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html/

# Install any additional PHP extensions if needed
# For example, to install mysqli extension, use:
RUN docker-php-ext-install mysqli

# Expose port 80 to the outside world
EXPOSE 80
