---
title: "Why I Love Groove Basin"
slug: "why-i-love-groovebasin"
date: 2025-06-15T17:45:00Z
series: "Why I Love"
tags:
  - groovebasin
  - music
  - mpd
  - nodejs
  - sovereign
  - self-hosted
  - audio
categories:
  - Media
  - Tools
  - Sovereignty
summary: >
  Groove Basin turns any machine into a personal streaming server — beautiful UI, MPD-compatible, and totally hackable.
description: >
  I use Groove Basin as a private Spotify alternative. Self-hosted, beautiful waveform player, remote-controllable, built on Node.js — and it speaks MPD so I can script it into everything.
cover_image: "/images/blog/why-i-love-groovebasin.jpg"
cover_alt: "Groove Basin waveform UI with dark terminal vibes"
author: "Jason (koad) Zvaniga"
author_url: "https://kingofalldata.com"
canonical_url: "https://kingofalldata.com/why-i-love/groovebasin"
reading_time: 3
language: en
seo:
  title: "Why I Love Groove Basin — Self-Hosted Music Server for Hackers"
  description: "Groove Basin is like having a private Spotify server, but built on MPD and Node.js. Scriptable, beautiful, and under my control."
  keywords: ["groovebasin", "self-hosted music", "nodejs audio server", "mpd", "sovereign media server"]
  image: "/images/social/why-i-love-groovebasin.png"
  twitter_card: summary_large_image
  og_type: article
layout: "post"
toc: true
---

### 🎶 Self-Hosted Music

Groove Basin = my own Spotify + MPD daemon:

- Node.js-based music server
- Streams FLAC, MP3, OGG, etc.
- Works with MPD clients & CLI

```bash
mpc -h localhost status
```

---

### ⚙️ Hackable & Scriptable

Built in Node, so I can:

* Write Meteor wrappers to control playback
* Use it in bash scripts (via `mpc` or HTTP API)
* Run on my LAN/VPN with no cloud bullshit

I even added hotkeys to my `cairodock` to control it remotely.

---

### 🔐 Local, Private, Sovereign

* No tracking
* No "recommendation algorithms"
* Just my music, my way

Stored on SSD in FLAC, indexed with a simple JSON DB, and available anywhere over my VPN (Zerotier, of course).

---

### 🎛️ Pure UX Joy

* Instant search
* Queue-based control (party mode!)
* Audio analysis in real time

This is not just a nerd tool. It’s a *good* player.

---

> Groove Basin reminds me: media is sacred. Ownership matters. Hosting my own music is not nostalgia — it’s sovereignty.

