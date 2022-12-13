#!/bin/bash

sudo apt install mysql-server -y
sudo systemctl start mysql.service

sudo mysql << EOF
ALTER user 'root'@'localhost' IDENTIFIED WITH mysql_native_password BY 'p@ssw0rd';
DELETE FROM mysql.user WHERE User='';
DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
DROP DATABASE test;
DELETE FROM mysql.db WHERE Db='test' OR Db='test\_%';
FLUSH PRIVILEGES;
exit
EOF

