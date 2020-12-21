echo 'Install Nginx web server on Alpine Linux'

# Step 1 : Installation
apk update
apk add nginx

# Create new user and group 'www' for nginx
adduser -d -g 'www' www

# Create a directory for html files
mkdir /www/
chown -R www:www /var/lib/nginx
chown -R www:www /www

# Step 2 : Configuration
# Make backup of original nginx.conf file
mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.orig

# Configuring Nginx to listen to port 80 and process .html or .htm files
# TO:DO (Will be done manually then copy it)
