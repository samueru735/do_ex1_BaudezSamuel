apt-get update
apt-get upgrade -y
apt-get install nginx -y

file="/etc/nginx/sites-enabled/default"
if [ -e "$file" ]
then	
	rm "$file"
fi
ln -s /vagrant/do_ex1_site \
/etc/nginx/sites-enabled/

service nginx restart
