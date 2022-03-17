# nginx - program cheatsheet

### generate dhparams
```bash
sudo mkdir /etc/nginx/ssl
sudo openssl dhparam -out /etc/nginx/ssl/dhparam-2048.pem 2048
sudo openssl dhparam -out /etc/nginx/ssl/dhparam-4096.pem 4096
```
* will take several minutes

### control nginx
```bash
sudo systemctl stop nginx
sudo systemctl start nginx
sudo systemctl status nginx
```

### test nginx configuration
```bash
sudo nginx -t
```

### create a symbolic link from an available site into an enabled site
```bash
export DOMAIN_NAME=koad.sh
sudo nano /etc/nginx/sites-available/$DOMAIN_NAME
sudo ln -s /etc/nginx/sites-available/$DOMAIN_NAME /etc/nginx/sites-enabled/$DOMAIN_NAME
```

### obtain a certificate
let certbot obtain a certificate for us and apply the default nginx SSL configuration like follows: -->
```bash
sudo certbot --rsa-key-size 4096 --nginx -d $DOMAIN_NAME
```