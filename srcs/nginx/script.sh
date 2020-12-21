echo 'Install Nginx web server on Alpine Linux'

# Docker basic commands

# Creating and running an image
# --> docker build -t aabounak .
# --> docker run -it -p 80:80 -p 443:443 -d aabounak
# --> docker start {CONTAINER ID}
# --> docker exec -it {CONTAINER ID} sh

# Build a docker image from a Dockerfile
# --> docker build -t <image name> <Dockerfile dir>

# Start an instance of a docker image
# --> docker run -it <image name>

# Really important if you want to bind some ports on the container to your own computer, use -p option.
# Exemple for an Apache image using port 80 in the container as our port 80
# --> docker run -it debian:apache -p80:80

# See all images
# --> docker images

# See running containers
# --> docker ps

# Stop a container
# --> docker kill <container ID>

# Delete all unused Docker images and cache and free SO MUCH SPACE on your computer
# --> docker system prune

# Script

# Step 1 : Installation
# apk update
# apk add nginx

# Create new user and group 'www' for nginx
# adduser -D -g 'www' www

# Create a directory for html files
# mkdir /www/
# chown -R www:www /var/lib/nginx
# chown -R www:www /www

# Step 2 : Configuration
# Make backup of original nginx.conf file
# mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig

# Configuring Nginx to listen to port 80 and process .html or .htm files
# TO:DO (Will be done manually then copy it)
