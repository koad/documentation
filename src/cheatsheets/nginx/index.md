# nginx - program cheatsheet

## install
### nginx

```bash
sudo apt-get install nginx 
```
### certbot
because no ssl means no service.

```bash
sudo apt-get install certbot
apt-get install python3-certbot-nginx
```
[ref](https://www.nginx.com/blog/using-free-ssltls-certificates-from-lets-encrypt-with-nginx/)

## use

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


## pay attention
when using lets encrypt, be sure to read the output.
```
IMPORTANT NOTES:
 - Your account credentials have been saved in your Certbot
   configuration directory at /etc/letsencrypt. You should make a
   secure backup of this folder now. This configuration directory will
   also contain certificates and private keys obtained by Certbot so
   making regular backups of this folder is ideal.
```