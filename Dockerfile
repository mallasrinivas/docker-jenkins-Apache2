# Use an official Ubuntu as a parent image
FROM ubuntu:latest

# Update package lists and install required packages
RUN apt-get update && apt-get install -y \
    apache2 \
    && rm -rf /var/lib/apt/lists/*

# Expose port 80 to allow outside access to your Apache server
EXPOSE 80

# Set the working directory within the container
WORKDIR /var/www/html

# Copy the contents of the repository into the container's working directory
COPY .  /var/www/html/

# Start Apache2 in the foreground when the container starts
CMD ["apache2ctl", "-D", "FOREGROUND"]