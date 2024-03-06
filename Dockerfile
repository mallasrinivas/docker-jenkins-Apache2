# Use the official Ubuntu image as the base image
FROM ubuntu

# Set working directory
WORKDIR /usr/src/app

# Update apt-get and install Apache
RUN apt-get update && apt-get install -y apache2

# Expose port 82 to allow external access
EXPOSE 82

# Start Apache service
CMD ["apache2ctl", "-D", "FOREGROUND"]
