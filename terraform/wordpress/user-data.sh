#!/bin/bash

apt update -y

apt install -y apache2

systemctl enable apache2
systemctl start apache2

apt install -y php libapache2-mod-php
apt install -y php-mysql

systemctl restart apache2

apt install -y mysql-server

systemctl enable mysql
systemctl start mysql

mysql -e "
CREATE DATABASE WordPressDB;
CREATE USER 'user'@'localhost' IDENTIFIED BY 'password';
GRANT ALL PRIVILEGES ON WordPressDB.* To 'user'@'localhost';
FLUSH PRIVILEGES;
"

apt install -y wget

wget https://wordpress.org/latest.tar.gz
tar -xzf latest.tar.gz
rm -f /var/www/html/index.html
cp -r wordpress/* /var/www/html/
chown -R www-data:www-data /var/www/html

cp /var/www/html/wp-config-sample.php /var/www/html/wp-config.php

sed -i 's/database_name_here/WordPressDB/' /var/www/html/wp-config.php
sed -i 's/username_here/user/' /var/www/html/wp-config.php
sed -i 's/password_here/password/' /var/www/html/wp-config.php

systemctl restart apache2