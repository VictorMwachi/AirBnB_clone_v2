#!/usr/bin/env bash
sudo apt update
sudo apt install nginx -y
mkdir -p /data
mkdir -p /data/web_static
mkdir -p /data/web_static/releases/
mkdir -p /data/web_static/shared/
mkdir -p /data/web_static/releases/test/
echo "<html>
  <head>
    </head>
      <body>
          Holberton School
	    </body>
	    </html>">/data/web_static/releases/test/index.html
sudo ln -sf /data/web_static/releases/test/ /data/web_static/current

sudo chown -R ubuntu /data/
sudo chgrp -R ubuntu /data/

printf %s "server {
    listen 80;
    listen [::]:80 default_server;
    add_header X-Served-By $HOSTNAME;
    root   /etc/nginx/html;
    index  index.html index.htm;
    location /hbnb_static {
    alias /data/web_static/current;
    index index.html index.htm;
}   location /redirect_me {
	return 301 https://www.youtube.com/watch?v=QH2-TGUlwu4;
	}
	error_page 404 /404.html;
    location /404 {
    root /etc/nginx/html;
    internal;
	}
}" > /etc/nginx/sites-available/default

sudo service nginx restart
