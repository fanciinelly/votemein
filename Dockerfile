FROM php:8.2-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    zip \
    unzip

# Clear cache
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# Install PHP extensions
RUN docker-php-ext-install pdo pdo_mysql

# Enable Apache mod_rewrite
RUN a2enmod rewrite

# Set working directory
WORKDIR /var/www/html

# Copy application files
COPY . /var/www/html

# image folder
COPY ig-pics /var/www/html/ig-pics

# Copy Apache configuration
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Install dependencies
RUN composer install --no-dev --optimize-autoloader

# Set permissions
RUN chown -R www-data:www-data /var/www/html

RUN chmod -R 755 /var/www/html

# Ensure ig-pics folder exists and has correct permissions
    RUN mkdir -p /var/www/html/ig-pics && \
    chown -R www-data:www-data /var/www/html/ig-pics && \
    chmod -R 755 /var/www/html/ig-pics

    

# Expose port 80
EXPOSE 80

# Start Apache service
CMD ["apache2-foreground"]