---
hide:
  - toc
---

| variable    	  | Description                          |
| ------------------------ | ------------------------------------ |
| `CATCHALL_DOMAIN_NAME`  | A domain name that has a catchall funnel; used to generate inbound email addresses on the fly.  Useful for identifing the source an inbound email message and any potential data breaches. ie: you give HR Block an email address of `hr-block@$CATCHALL_DOMAIN_NAME` and when one arrives from a scammer then to the HR block address, you know HR block was captured or breached |
| `WILDCARD_DOMAIN_NAME`    	  | A domain name that can be used to listen on all subdomains.  Useful for being able to generate sandboxes and host them securely without having to deal with configuration files and certificates.   Also used behind closed doors in `private area network overlays` to allow secure browser connections within local area networks where certificates are hard generate acme challenges |

```bash
#!/usr/bin/env bash

echo "Attempting to generate cert for domain $WILDCARD_DOMAIN_NAME"
echo "Using le-$WILDCARD_DOMAIN_NAME@$CATCHALL_DOMAIN_NAME as TOS email"
sudo certbot certonly --manual --preferred-challenges=dns --email $LE_NOC_EMAIL --agree-tos -d *.$WILDCARD_DOMAIN_NAME -d $WILDCARD_DOMAIN_NAME
```
