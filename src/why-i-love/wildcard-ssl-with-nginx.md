---
title: "Why I Love Wildcard SSL with NGINX"
slug: "why-i-love-wildcard-ssl-nginx"
date: 2025-06-15T16:20:00Z
series: "Why I Love"
tags:
  - ssl
  - nginx
  - wildcard
  - privacy
  - prototyping
  - sovereignty
categories:
  - DevOps
  - Security
summary: >
  One cert, infinite subdomains. Wildcard SSL makes it dead simple to spin up new secure apps — and hide them from the world.
description: >
  Using wildcard SSL certs with NGINX gives me full control of subdomains without needing to re-issue certs. It’s a stealthy, sovereign approach to app infrastructure.
cover_image: "/images/blog/why-i-love-wildcard-ssl.jpg"
cover_alt: "NGINX config with wildcard SSL"
author: "Jason (koad) Zvaniga"
author_url: "https://kingofalldata.com"
canonical_url: "https://kingofalldata.com/why-i-love/wildcard-ssl-with-nginx"
reading_time: 3
language: en
seo:
  title: "Why I Love Wildcard SSL with NGINX — Fast, Private, Secure"
  description: "Wildcard SSL lets me launch new apps instantly under secure HTTPS. One cert covers all subdomains. Sovereign infrastructure starts here."
  keywords: ["nginx", "wildcard ssl", "lets encrypt", "subdomain", "prototyping", "self-hosted"]
  image: "/images/social/why-i-love-wildcard-ssl.png"
  twitter_card: summary_large_image
  og_type: article
layout: "post"
toc: true
---

### Instant HTTPS for Any Subdomain

I can spin up a new app at `foo.mydomain.com` in seconds. No DNS hassle, no cert dance. Just drop a new NGINX config and reload:

```nginx
server {
  listen 443 ssl;
  server_name ~^(?<subdomain>.+)\.mydomain\.com$;

  ssl_certificate     /etc/letsencrypt/live/mydomain.com/fullchain.pem;
  ssl_certificate_key /etc/letsencrypt/live/mydomain.com/privkey.pem;

  location / {
    proxy_pass http://localhost:PORT;
  }
}
```

---

### Privacy: Hidden in Plain Sight

Wildcard DNS means no public listing of subdomains.

* No `.well-known` enumeration for every app
* Nothing leaked in cert transparency logs
* DNS-only wildcard keeps it silent (especially with self-hosted DNS)

---

### Why It Matters

* **Fast prototyping** — new idea, new subdomain, 1 min deploy
* **Stealth** — security by obscurity isn’t perfect, but it helps
* **Sovereign HTTPS** — no third-party dashboards, no limits
* **Automation-friendly** — auto-renewal with `certbot` or `acme.sh`

---

### Example: Certbot DNS Challenge

```bash
certbot certonly \
  --manual \
  --preferred-challenges dns \
  --email you@domain.com \
  --server https://acme-v02.api.letsencrypt.org/directory \
  -d "*.mydomain.com"
```

> Paired with `nsupdate` or Porkbun API, you can automate it fully.

---

Wildcard + NGINX = Sovereign, Secure, Scalable
