# Use the official PHP image with FPM
FROM php:7.4-fpm

# Install Nginx
RUN apt-get update && apt-get install -y nginx

# Copy Nginx configuration
COPY nginx.conf /etc/nginx/nginx.conf

# Copy the application code to the container
COPY . /var/www/html/

# Set the working directory
WORKDIR /var/www/html/

# Install PHP extensions and dependencies (if any)
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Expose port 80 to be able to access the web server
EXPOSE 80

# Start Nginx and PHP-FPM
CMD ["sh", "-c", "service nginx start && php-fpm"]
