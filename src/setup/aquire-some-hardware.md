
---
## Aquire your hardware

A device that can act on your behalf, always-on and present to answer the call of other devices so you can be reached by your peers in the metaverse.

__Your eyes and ears for connecting within digital spaces.__


I recommend starting with two devices,

### on premise
this is your personal effects
 - a raspi 4 is a good choice for now (2022)
 - add network storage
 - pihole dhcp services +unbound dns
 - backup services 
 - SSH access: bash prompt

### a public face
 - email services
 - matrix services
 - sandstorm services
 - nginx + letsencrypt
 - can run processes that are hosting public services
 - can secure and route private area network services
 - can proxy connections to local ports or overlay ports

This device should exist in a datacenter somewhere, you might already have something else in mind.  The power required is not much unless you interact with alot of federated matrix servers or create alot of grains in your Sandstorm.

#### Linode
Linode takes an extra step to `set a clever hostname`.

Image  
- Ubuntu 18.04 LTS

Region
- Choose whichever is closest to you

Linode Plan  
- Shared CPU  
 - Linode 2 GB  
  - $10/mo ($0.015/hr) USD  
  - 1 CPU, 50 GB Storage, 2 GB RAM  
  - 2 TB Transfer  
  - 40 Gbps In / 2 Gbps Out  

Linode Label
- set label as your clever hostname

[Linode referal code](https://www.linode.com/?r=22e92537ea1123350bfe2f5b8c8812e6d5278adc)
> Using my referal code you'll receive a $100, 60-day credit once a valid payment method is added to your new account. When you spend $25 on Linode services, and have remained an active customer in good standing for 90 days, i'll receive a $25 non-expiring account credit. 

#### Vultr

Choose Server  
- High Frequency  

Server Location  
- Choose whichever is closest to you

Server Image  
- Ubuntu 18.04 x64  

Server Size  
- 64GB NVMe  
- $12/month USD  
- 1 CPU  
- 2 GB Memory  
- 2 TB Bandwidth 

Server Hostname & Label
- Be sure to `set a clever hostname`

[Vultr referal code](https://www.vultr.com/?ref=9012486-8H)
> I earn $35 for every new unique paid user I refer. The users I refer receive $100 to test out vultr's platform. Duplicate accounts not eligible. Referred customer must link a valid credit card or Paypal method to be eligible for the $100 credit. Unused portion of $100 credit expires after 14 days. Referred users must be active for 14+ days and use at least $35 in payments to be counted as verified sales.


Both Linode and Vultr will let you upgrade your VPS's specs if you get too popular for your own good. If you get too popular, you might need to upgrade into a dedicated server.

## With this setup

### Access the progressive web apps (PWA) 

that are hosted on your VPS
- You can use your hosted element web app in a browser, mobile device or chromebook.
- You can use your hosted jitsi web app in a browser, mobile device or chromebook.
- You can use sandstorm in your browser
- You can clean and block traffic on your home network
- You can build and serve all kinds of webservices for your life at work and at play.

### Generate Email Accounts
#### Set a Catch All email account

### Parental Control
#### Filter websites
#### block known corporate spying and telemetry


