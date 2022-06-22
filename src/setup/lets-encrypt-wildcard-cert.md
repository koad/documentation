---
hide:
  - toc
---

| variable    	  | Description                          |
| ------------------------ | ------------------------------------ |
| `CATCHALL_DOMAIN_NAME`  | A domain name that has a catchall funnel; used to generate inbound email addresses on the fly.  Useful for identifing the source an inbound email message and any potential data breaches. ie: you give HR Block an email address of `hr-block@$CATCHALL_DOMAIN_NAME` and when one arrives from a scammer then to the HR block address, you know HR block was captured or breached |
| `WILDCARD_DOMAIN_NAME`    	  | A domain name that can be used to listen on all subdomains.  Useful for being able to generate sandboxes and host them securely without having to deal with configuration files and certificates.   Also used behind closed doors in `private area network overlays` to allow secure browser connections within local area networks where certificates are hard generate acme challenges |

prepare your env vars
```bash
export CATCHALL_DOMAIN_NAME=zvaniga.com
export WILDCARD_DOMAIN_NAME=koad.sh
export LE_NOC_EMAIL=le-$HOSTNAME@$CATCHALL_DOMAIN_NAME
```

call letsencrypt for a new cert
```bash
#!/usr/bin/env bash

echo "Attempting to generate cert for domain $WILDCARD_DOMAIN_NAME"
echo "Using $LE_NOC_EMAIL as TOS email"
sudo certbot certonly --manual --preferred-challenges=dns --email $LE_NOC_EMAIL --agree-tos -d *.$WILDCARD_DOMAIN_NAME -d $WILDCARD_DOMAIN_NAME
```

Make your changes in your DNS, then can watch for them to take effect before proceeding with acme challenge checking.
```bash
watch -n 30 dig -t txt _acme-challenge.$WILDCARD_DOMAIN_NAME
```
