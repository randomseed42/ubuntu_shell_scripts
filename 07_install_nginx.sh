#!/bin/bash

sudo apt install nginx -y

MYSITE=/var/www/mysite

sudo mkdir -p $MYSITE

sudo cat > $MYSITE/index.html << EOF
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hello, Nginx!</title>
</head>
<body>
    <h1>Hello, Nginx!</h1>
    <p>We have just configured our Nginx web server on Ubuntu Server!</p>
</body>
</html>
EOF

sudo cat > /etc/nginx/sites-enabled/mysite << EOF
server {
    listen 81;
    listen [::]:81;
    
    server_name example.ubuntu.com;

    root $MYSITE;
    index index.html;

    location / {
        try_files \$uri \$uri/ =404;
    }
}
EOF

sudo systemctl restart nginx

