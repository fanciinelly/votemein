FROM php:8.2-apache

# Install system dependencies
RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg-dev \
    libfreetype6-dev \
    zip \
    unzip \
    git \
    curl

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

# Correct path to ig-pics folder inside the public directory
COPY public/ig-pics /var/www/html/public/ig-pics

# Copy Apache configuration
COPY 000-default.conf /etc/apache2/sites-available/000-default.conf

# Install Composer correctly
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Make sure composer is correctly installed
RUN composer --version

# Run Composer install
RUN if [ -f "composer.json" ]; then composer install --no-dev --optimize-autoloader; else echo "composer.json not found. Skipping Composer install."; fi

# Set permissions for the project folder
RUN chown -R www-data:www-data /var/www/html
RUN chmod -R 755 /var/www/html

# Ensure ig-pics folder exists and has correct permissions
RUN mkdir -p /var/www/html/public/ig-pics && \
    chown -R www-data:www-data /var/www/html/public/ig-pics && \
    chmod -R 755 /var/www/html/public/ig-pics

# Expose port 80
EXPOSE 80

# Start Apache service
CMD ["apache2-foreground"]
