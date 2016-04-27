apt-get update
apt-get upgrade -y
apt-get install nginx -y

rm /etc/nginx/sites-enabled/default
ln -s /vagrant/do_ex1_site /etc/nginx/sites-enabled/

service nginx restart
