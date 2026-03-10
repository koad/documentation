---
title: "Why I Love Sandstorm.io"
slug: "why-i-love-sandstorm"
date: 2025-06-16T12:00:00Z
series: "Why I Love"
tags:
  - self-hosting
  - sovereign-tools
  - sandstorm
  - webapps
  - microservices
  - linux
categories:
  - Tools
  - Self-Hosting
summary: >
  Sandstorm.io lets me self-host web apps in isolated containers, with a clean, browser-accessible interface. It’s modular, secure, and built for sovereign workflows.
description: >
  Sandstorm.io offers a unique way to run web apps in per-user sandboxes with granular access control. It gives me an app store of secure-by-default, self-contained tools — all local, no cloud, total control. Great for simple installs, secure sharing, and portable productivity.
cover_image: "/images/blog/why-i-love-sandstorm.jpg"
cover_alt: "Screenshot of Sandstorm.io app list"
author: "Jason (koad) Zvaniga"
author_url: "https://kingofalldata.com"
canonical_url: "https://kingofalldata.com/why-i-love/sandstorm"
reading_time: 4
language: en
seo:
  title: "Why I Love Sandstorm.io — Modular Self-Hosted Webapps with Total Control"
  description: "Sandstorm.io offers self-hosted, sandboxed apps with per-document sharing, strong security, and zero dependency on cloud. A tool for sovereign minds."
  keywords: ["sandstorm", "sovereign hosting", "web apps", "self-hosting", "docker alternative", "open source", "cloud replacement"]
  image: "/images/social/why-i-love-sandstorm.png"
  twitter_card: summary_large_image
  og_type: article
layout: "post"
toc: true
---

> *"App store, but for your own server. Sandboxed, secure, sovereign."*

Sandstorm.io was ahead of its time — an **app deployment system for humans**. It runs open-source apps in isolated containers, designed for **per-document security**, and delivers them via a slick web UI with identity control, sharing, and one-click installs.

---

### Core Benefits

- **No sysadmin needed**  
- Every app runs in a container  
- Each document = a sandbox  
- You control sharing, access, versions  
- **One-click installs** for popular tools  
- Clean web UI, runs on your server

---

### Use Cases in My Stack

- Local-first productivity suites (Etherpad, Wekan, Rocket.Chat)  
- Simple installs for customers or family without complex Linux training  
- Acts as a private "sovereign app store"  
- Great entry point for teaching people to self-host

---

### Sovereign by Design

Sandstorm apps don’t share a database or runtime. Everything is scoped and sandboxed — **perfect isolation**. Combined with DNS + wildcard subdomains + ZeroTier, it’s a solid model for **zero-cloud**, **LAN/VPN-access-only** services.

And it can talk to my daemons — just another local interface layer.

---

### Bonus Integration Tips

- Use nginx to reverse proxy *.yourdomain into your VPN tunnel  
- Build Meteor apps for Sandstorm — special package format, very portable  
- Great companion to **Cairodock** or any launcher UI  
- Can be wired into `koad:io` as a service template or deployment target

---

### Philosophy Match

Sandstorm fits the mindset:  
- **Portable** apps  
- **No central authority**  
- Designed for **private infrastructure**  
- Encourages **ownership** of data + workflows  
- And yes: **no public ports required** (via VPN or reverse proxy)

---

> I don’t need a cloud account. I don’t need Docker. I don’t even need to run a shell. I just click “Install” and it works — on my machine, under my domain, on my terms.

