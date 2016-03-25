#nginx conf
sudo ln -sf /home/box/web/etc/nginx.conf  /etc/nginx/sites-enabled/default
sudo /etc/init.d/nginx restart

#gunicorn conf
sudo ln -sf /home/box/web/etc/gunicorn.conf   /etc/gunicorn.d/wsgi.example  
sudo /etc/init.d/gunicorn restart 
cd ask/ask/
gunicorn -b 0.0.0.0:8000 wsgi

#database conf
mysql -uroot -e "CREATE DATABASE ASK"
mysql -uroot -e "CREATE USER 'and1helicopter' IDENTIFIED BY 'and1helicopter'"
mysql -uroot -e "GRANT ALL PRIVILEGES ON ASK.* TO 'and1helicopter'"







