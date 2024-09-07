sudo apt-get -y update
sudo apt-get -y upgrade
sudo apt-get -y php8.3-fpm php8.3-fpm php8.3-mysqli php8.3-mbstring php8.3-xml php8.3-dom php8.3-zip php8.3-gd mariadb-server git nginx
mysql -u root -e 'ALTER USER 'root'@'localhost' IDENTIFIED BY "admin"'
