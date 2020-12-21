echo 'Installing Nginx web server on Alpine Linux'

# Docker basic commands

# Creating and running an image
# --> docker build -t aabounak .
# --> docker run -it -p 80:80 -p 443:443 aabounak
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

# Step 1 : Installing Nginx
apk update ; apk add nginx

# Create new user and group 'www' for nginx
adduser -D -g 'www' www
# Web server files and permissions
chown -R www:www /var/lib/nginx
chown -R www:www /www
mkdir -p /run/nginx # Solve error --> nginx: [emerg] open() "/run/nginx/nginx.pid" failed (2: No such file or directory)
touch /run/nginx/nginx.pid

# Step 3: Secure Nginx with an SSL certificate

apk add openssl
openssl req -x509 -nodes -days 365 -subj "/C=MA/ST=BG/O=aabounak, Inc./CN=localhost" -newkey rsa:2048 -keyout /etc/ssl/private/nginx-selfsigned.key -out /etc/ssl/certs/nginx-selfsigned.crt

# Step 2 : Configuration

# Configuring Nginx to listen to port 80 and 443 and process .html or .htm files
# --> Configure nginx.conf on /etc/nginx
# --> Configure index.html on /www/
# (Already configured; Dockerfile will copy these two files to their appropriate paths.)

sudo openrc reboot
nginx
/bin/sh